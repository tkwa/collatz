#!/usr/bin/env python3
"""Fast, deterministic checks for repository Markdown.

The checks here target mistakes that have produced broken GitHub rendering in
this repository.  They are deliberately syntactic: no network access or
third-party Markdown renderer is needed.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass
import os
from pathlib import Path
import re
import sys
from urllib.parse import unquote, urlsplit


SKIP_DIRECTORIES = frozenset(
    {".git", ".lake", ".mypy_cache", ".pytest_cache", "build", "node_modules"}
)

FENCE_RE = re.compile(r"^(?P<indent> {0,3})(?P<delimiter>`{3,}|~{3,})(?P<info>.*)$")
CONFLICT_MARKER_RE = re.compile(
    r"^\s*(?:<<<<<<<(?:\s.*)?|=======|>>>>>>>(?:\s.*)?)\s*$"
)
CODE_SPAN_RE = re.compile(
    r"(?<!`)(?P<delimiter>`+)(?P<contents>.*?)(?P=delimiter)(?!`)"
)
TEX_COMMAND_RE = re.compile(r"\\(?:[A-Za-z]+|[#{}|])")
DOUBLE_DOLLAR_RE = re.compile(r"(?<!\\)\$\$")
HYPHENATED_MATH_OPEN_RE = re.compile(r"-\$(?!\$)")
SPLIT_MATH_RANGE_RE = re.compile(r"(?<!\\)\$(?:--|–|—)\$(?!\$)")
LEGACY_INLINE_MATH_DELIMITER_RE = re.compile(r"(?<!\\)\\[()]")
LEGACY_DISPLAY_MATH_DELIMITER_RE = re.compile(r"(?<!\\)\\[\[\]]")
INLINE_MATH_RE = re.compile(
    r"(?<![\\$])\$(?!\$)(?P<contents>.+?)(?<![\\$])\$(?!\$)"
)
RAW_COMPARISON_RE = re.compile(r"(?<!\\)[<>]")
UNSUPPORTED_OPERATORNAME_RE = re.compile(r"\\operatorname\b")
NESTED_CARDINALITY_RE = re.compile(
    r"(?:\\(?:left|bigl|Bigl|biggl|Biggl)\s*)?"
    r"(?:\||\\lvert)\s*"
    r"(?:\\(?:left|bigl|Bigl|biggl|Biggl)\s*)?"
    r"(?:\\\{|\\lbrace)"
)
LINK_DESTINATION_PATTERN = r"<[^>]+>|(?:[^()\s]+|\([^()\s]*\))+"
LINK_RE = re.compile(
    r"!?\[[^\]]*\]\("
    rf"(?P<destination>{LINK_DESTINATION_PATTERN})"
    r"(?:\s+(?:\"[^\"]*\"|'[^']*'|\([^)]*\)))?"
    r"\)"
)
REFERENCE_LINK_RE = re.compile(
    rf"^ {{0,3}}\[[^\]]+\]:\s*(?P<destination>{LINK_DESTINATION_PATTERN})"
)

# AGENTS.md is itself documenting the forbidden forms.  Keep only those exact
# examples exempt; other TeX-in-code mistakes in that file should still fail.
AGENTS_INLINE_CODE_EXEMPTIONS = frozenset(
    {
        r"\#\lbrace\cdots\rbrace",
        r"\left|\left\{\cdots\right\}\right|",
        r"\lt",
        r"\gt",
    }
)


@dataclass(frozen=True)
class Diagnostic:
    path: Path
    line: int
    column: int
    code: str
    message: str

    def format(self, root: Path) -> str:
        try:
            display_path = self.path.resolve().relative_to(root.resolve())
        except ValueError:
            display_path = self.path
        return (
            f"{display_path}:{self.line}:{self.column}: "
            f"{self.code}: {self.message}"
        )


def markdown_files(root: Path) -> list[Path]:
    """Return Markdown files below *root* without walking generated trees."""

    files: list[Path] = []
    for directory, directory_names, file_names in os.walk(root):
        directory_names[:] = sorted(
            name for name in directory_names if name not in SKIP_DIRECTORIES
        )
        for file_name in sorted(file_names):
            if file_name.endswith(".md"):
                files.append(Path(directory, file_name))
    return files


def _mask_code_spans(
    line: str, path: Path, line_number: int, root: Path
) -> tuple[str, list[Diagnostic]]:
    characters = list(line)
    diagnostics: list[Diagnostic] = []
    try:
        relative_path = path.resolve().relative_to(root.resolve()).as_posix()
    except ValueError:
        relative_path = path.as_posix()

    for match in CODE_SPAN_RE.finditer(line):
        contents = match.group("contents")
        exempt = (
            relative_path == "AGENTS.md"
            and contents in AGENTS_INLINE_CODE_EXEMPTIONS
        )
        command = TEX_COMMAND_RE.search(contents)
        if command and not exempt:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    match.start("contents") + command.start() + 1,
                    "MD003",
                    "TeX command is in an ordinary code span; use a math span",
                )
            )
        characters[match.start() : match.end()] = " " * (match.end() - match.start())

    return "".join(characters), diagnostics


def _check_math(
    contents: str, path: Path, line_number: int, column_offset: int
) -> list[Diagnostic]:
    diagnostics: list[Diagnostic] = []
    comparison = RAW_COMPARISON_RE.search(contents)
    if comparison:
        diagnostics.append(
            Diagnostic(
                path,
                line_number,
                column_offset + comparison.start() + 1,
                "MD002",
                r"raw comparison in math; use \lt or \gt",
            )
        )

    cardinality = NESTED_CARDINALITY_RE.search(contents)
    if cardinality:
        diagnostics.append(
            Diagnostic(
                path,
                line_number,
                column_offset + cardinality.start() + 1,
                "MD004",
                r"nested cardinality delimiters; use \#\lbrace...\rbrace",
            )
        )

    operatorname = UNSUPPORTED_OPERATORNAME_RE.search(contents)
    if operatorname:
        diagnostics.append(
            Diagnostic(
                path,
                line_number,
                column_offset + operatorname.start() + 1,
                "MD010",
                r"\operatorname has rendered unreliably on GitHub; use \mathrm",
            )
        )
    return diagnostics


def _check_multiline_cardinality(
    lines: list[tuple[int, str]], path: Path
) -> list[Diagnostic]:
    """Catch a nested cardinality opener split across math-fence lines."""

    contents = "\n".join(line for _, line in lines)
    cardinality = NESTED_CARDINALITY_RE.search(contents)
    if not cardinality or "\n" not in cardinality.group():
        return []

    prefix = contents[: cardinality.start()]
    line_index = prefix.count("\n")
    previous_newline = prefix.rfind("\n")
    column = (
        cardinality.start() + 1
        if previous_newline < 0
        else cardinality.start() - previous_newline
    )
    return [
        Diagnostic(
            path,
            lines[line_index][0],
            column,
            "MD004",
            r"nested cardinality delimiters; use \#\lbrace...\rbrace",
        )
    ]


def _local_link_diagnostic(
    raw_destination: str,
    source: Path,
    root: Path,
    line_number: int,
    column: int,
) -> Diagnostic | None:
    destination = raw_destination
    if destination.startswith("<") and destination.endswith(">"):
        destination = destination[1:-1]

    split = urlsplit(destination)
    if split.scheme or split.netloc or destination.startswith("#"):
        return None

    path_text = unquote(split.path)
    if not path_text:
        return None
    if path_text.startswith("/"):
        target = root / path_text.lstrip("/")
    else:
        target = source.parent / path_text
    if target.exists():
        return None

    return Diagnostic(
        source,
        line_number,
        column,
        "MD006",
        f"local link target does not exist: {destination}",
    )


def check_text(path: Path, text: str, root: Path) -> list[Diagnostic]:
    """Check one Markdown string, treating *path* as its repository location."""

    diagnostics: list[Diagnostic] = []
    fence_character: str | None = None
    fence_length = 0
    fence_open_line = 0
    math_fence = False
    math_fence_lines: list[tuple[int, str]] = []

    for line_number, line in enumerate(text.splitlines(), start=1):
        conflict = CONFLICT_MARKER_RE.match(line)
        if conflict:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    conflict.start() + 1,
                    "MD005",
                    "merge-conflict marker",
                )
            )

        stale_path_column = line.find("collatz_ladder.md")
        if stale_path_column >= 0:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    stale_path_column + 1,
                    "MD007",
                    "stale path; link to difficulty_ladder.md at its current location",
                )
            )

        fence = FENCE_RE.match(line)
        if fence_character is not None:
            if fence:
                delimiter = fence.group("delimiter")
                if (
                    delimiter[0] == fence_character
                    and len(delimiter) >= fence_length
                    and not fence.group("info").strip()
                ):
                    if math_fence:
                        diagnostics.extend(
                            _check_multiline_cardinality(math_fence_lines, path)
                        )
                    fence_character = None
                    fence_length = 0
                    fence_open_line = 0
                    math_fence = False
                    math_fence_lines = []
                    continue
            if math_fence:
                diagnostics.extend(_check_math(line, path, line_number, 0))
                math_fence_lines.append((line_number, line))
            continue

        if fence:
            delimiter = fence.group("delimiter")
            info = fence.group("info").strip().split(maxsplit=1)
            fence_character = delimiter[0]
            fence_length = len(delimiter)
            fence_open_line = line_number
            math_fence = bool(info and info[0].lower() == "math")
            math_fence_lines = []
            continue

        masked_line, code_diagnostics = _mask_code_spans(
            line, path, line_number, root
        )
        diagnostics.extend(code_diagnostics)

        double_dollar = DOUBLE_DOLLAR_RE.search(masked_line)
        if double_dollar:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    double_dollar.start() + 1,
                    "MD001",
                    "double-dollar math can render as raw TeX; use a fenced math block",
                )
            )

        hyphenated_math = HYPHENATED_MATH_OPEN_RE.search(masked_line)
        if hyphenated_math:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    hyphenated_math.start() + 1,
                    "MD009",
                    "hyphen immediately before inline math can expose raw TeX; add a space or rephrase",
                )
            )

        split_range = SPLIT_MATH_RANGE_RE.search(masked_line)
        if split_range:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    split_range.start() + 1,
                    "MD011",
                    r"range split across math spans; use one span with \text{--}",
                )
            )

        legacy_inline = LEGACY_INLINE_MATH_DELIMITER_RE.search(masked_line)
        if legacy_inline:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    legacy_inline.start() + 1,
                    "MD012",
                    r"\(...\) is not GitHub Markdown math; use $...$",
                )
            )

        legacy_display = LEGACY_DISPLAY_MATH_DELIMITER_RE.search(masked_line)
        if legacy_display:
            diagnostics.append(
                Diagnostic(
                    path,
                    line_number,
                    legacy_display.start() + 1,
                    "MD013",
                    r"\[...\] is not GitHub Markdown math; use a fenced math block",
                )
            )

        for math in INLINE_MATH_RE.finditer(masked_line):
            diagnostics.extend(
                _check_math(
                    math.group("contents"),
                    path,
                    line_number,
                    math.start("contents"),
                )
            )

        for link in LINK_RE.finditer(masked_line):
            diagnostic = _local_link_diagnostic(
                link.group("destination"),
                path,
                root,
                line_number,
                link.start("destination") + 1,
            )
            if diagnostic:
                diagnostics.append(diagnostic)

        reference_link = REFERENCE_LINK_RE.match(masked_line)
        if reference_link:
            diagnostic = _local_link_diagnostic(
                reference_link.group("destination"),
                path,
                root,
                line_number,
                reference_link.start("destination") + 1,
            )
            if diagnostic:
                diagnostics.append(diagnostic)

    if fence_character is not None:
        diagnostics.append(
            Diagnostic(
                path,
                fence_open_line,
                1,
                "MD008",
                "unclosed fenced code block",
            )
        )

    return diagnostics


def check_repository(root: Path) -> tuple[list[Path], list[Diagnostic]]:
    files = markdown_files(root)
    diagnostics: list[Diagnostic] = []
    for path in files:
        try:
            contents = path.read_text(encoding="utf-8")
        except (OSError, UnicodeError) as error:
            diagnostics.append(
                Diagnostic(path, 1, 1, "MD000", f"cannot read UTF-8 Markdown: {error}")
            )
            continue
        diagnostics.extend(check_text(path, contents, root))
    return files, diagnostics


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "root",
        nargs="?",
        type=Path,
        default=Path(__file__).resolve().parents[1],
        help="repository root (defaults to the parent of scripts/)",
    )
    arguments = parser.parse_args(argv)
    root = arguments.root.resolve()
    files, diagnostics = check_repository(root)

    for diagnostic in diagnostics:
        print(diagnostic.format(root))
    if diagnostics:
        print(
            f"Markdown check failed: {len(diagnostics)} problem(s) in "
            f"{len(files)} file(s).",
            file=sys.stderr,
        )
        return 1

    print(f"Markdown check passed: {len(files)} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
