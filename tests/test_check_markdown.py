from __future__ import annotations

from pathlib import Path
import sys
import tempfile
import unittest


sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))

from check_markdown import check_text  # noqa: E402


class MarkdownCheckTests(unittest.TestCase):
    def check(self, text: str, *, name: str = "example.md") -> set[str]:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            path = root / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(text, encoding="utf-8")
            return {
                diagnostic.code for diagnostic in check_text(path, text, root)
            }

    def test_accepts_safe_math_and_existing_local_links(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            target = root / "guide.md"
            target.write_text("# Guide\n", encoding="utf-8")
            source = root / "README.md"
            text = """[guide](guide.md#guide)

$x \\lt y$ and $\\#\\lbrace n : P(n)\\rbrace$.

```math
x \\gt y
```
"""
            source.write_text(text, encoding="utf-8")
            self.assertEqual(check_text(source, text, root), [])

    def test_rejects_double_dollar_math(self) -> None:
        self.assertIn("MD001", self.check("$$x=1$$\n"))

    def test_rejects_raw_comparisons_in_inline_and_fenced_math(self) -> None:
        self.assertIn("MD002", self.check("$x < y$\n"))
        self.assertIn("MD002", self.check("```math\nx > y\n```\n"))

    def test_rejects_tex_commands_in_ordinary_code_spans(self) -> None:
        self.assertIn("MD003", self.check(r"write `\mathbb N` here" + "\n"))

    def test_allows_only_documented_agents_examples(self) -> None:
        examples = (
            r"`\#\lbrace\cdots\rbrace` `\left|\left\{\cdots\right\}\right|` "
            r"`\lt` `\gt`"
        )
        self.assertNotIn("MD003", self.check(examples, name="AGENTS.md"))
        self.assertIn(
            "MD003", self.check(r"`\mathbb N`", name="AGENTS.md")
        )

    def test_rejects_nested_cardinality_delimiters(self) -> None:
        self.assertIn(
            "MD004",
            self.check(r"$\left|\left\{n:P(n)\right\}\right|$" + "\n"),
        )

    def test_rejects_multiline_nested_cardinality_delimiters(self) -> None:
        text = """```math
\\left|
\\left\\{n:P(n)\\right\\}
\\right|
```
"""
        self.assertIn("MD004", self.check(text))

    def test_rejects_conflict_markers(self) -> None:
        self.assertIn("MD005", self.check("<<<<<<< HEAD\ntext\n=======\n"))

    def test_rejects_broken_local_links_but_not_remote_links(self) -> None:
        self.assertIn("MD006", self.check("[missing](no-such-file.md)\n"))
        self.assertNotIn("MD006", self.check("[remote](https://example.com/x)\n"))

    def test_accepts_parenthesized_local_link_destination(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            target = root / "some_(file).md"
            target.write_text("# Target\n", encoding="utf-8")
            source = root / "README.md"
            text = "[target](some_(file).md)\n"
            source.write_text(text, encoding="utf-8")
            self.assertNotIn(
                "MD006",
                {item.code for item in check_text(source, text, root)},
            )

    def test_checks_reference_style_local_link_targets(self) -> None:
        self.assertIn("MD006", self.check("[guide]: missing-guide.md\n"))

    def test_rejects_stale_collatz_ladder_path(self) -> None:
        self.assertIn("MD007", self.check("[old](collatz_ladder.md)\n"))

    def test_ignores_renderer_patterns_in_non_math_fences_and_code_spans(self) -> None:
        text = """`$$` and `$x < y$`

```text
$$
x < y
```
"""
        codes = self.check(text)
        self.assertFalse({"MD001", "MD002"} & codes)

    def test_rejects_unclosed_fences(self) -> None:
        self.assertIn("MD008", self.check("```math\nx = 1\n"))

    def test_rejects_hyphen_immediately_before_inline_math(self) -> None:
        self.assertIn("MD009", self.check("ordinary base-$B$ digits\n"))
        self.assertNotIn("MD009", self.check("ordinary base $B$ digits\n"))
        self.assertNotIn("MD009", self.check("the $B$-adic integers\n"))

    def test_rejects_operatorname_in_inline_and_fenced_math(self) -> None:
        self.assertIn(
            "MD010", self.check(r"$\operatorname{GEH}[1]$" + "\n")
        )
        self.assertIn(
            "MD010",
            self.check("```math\ns_r(\\operatorname{cl}(P_t))\n```\n"),
        )
        self.assertNotIn("MD010", self.check(r"$\mathrm{GEH}[1]$" + "\n"))

    def test_rejects_range_split_across_math_spans(self) -> None:
        self.assertIn("MD011", self.check("$3$--$7$\n"))
        self.assertNotIn("MD011", self.check(r"$3\text{--}7$" + "\n"))

    def test_rejects_backslash_parenthesis_math_delimiters(self) -> None:
        self.assertIn("MD012", self.check(r"Let \(x\) be positive." + "\n"))
        self.assertNotIn("MD012", self.check("Let $x$ be positive.\n"))

    def test_rejects_backslash_bracket_math_delimiters(self) -> None:
        bad = """\\[
x = 1
\\]
"""
        safe = """```math
x = 1
```
"""
        self.assertIn("MD013", self.check(bad))
        self.assertNotIn("MD013", self.check(safe))

    def test_ignores_historical_patterns_in_literal_code(self) -> None:
        text = r"""`base-$B$` and `\(x\)` and `\[x\]`

```text
$3$--$7$
$\operatorname{GEH}[1]$
```
"""
        codes = self.check(text)
        self.assertFalse({"MD009", "MD010", "MD011", "MD012", "MD013"} & codes)


if __name__ == "__main__":
    unittest.main()
