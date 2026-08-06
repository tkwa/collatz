import re
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LINK_RE = re.compile(r"\]\(([^)#]+\.md)(?:#[^)]*)?\)")
COVERAGE_RE = re.compile(r'\("([^"]+\.md)",')
REPRESENTATIVE_RE = re.compile(r'\("([^"]+)",\s*"([^"]+)",')


class LeanCoverageTests(unittest.TestCase):
    def test_every_dedicated_ladder_file_has_a_compiled_mapping(self) -> None:
        linked: set[str] = set()
        for ladder in ROOT.glob("*/difficulty_ladder.md"):
            for target in LINK_RE.findall(ladder.read_text()):
                resolved = (ladder.parent / target).resolve()
                relative = resolved.relative_to(ROOT).as_posix()
                if (
                    resolved.name not in {"README.md", "difficulty_ladder.md"}
                    and not {"dev_notes", "progress", "blockers"}
                    & set(resolved.relative_to(ROOT).parts)
                ):
                    linked.add(relative)

        checks = (ROOT / "CollatzBench" / "Checks.lean").read_text()
        mapped = set(COVERAGE_RE.findall(checks))
        self.assertEqual(linked, mapped)
        self.assertEqual(10, len(mapped))

    def test_every_ladder_folder_has_four_compiled_representatives(self) -> None:
        ladder_folders = {
            ladder.parent.name for ladder in ROOT.glob("*/difficulty_ladder.md")
        }
        checks = (ROOT / "CollatzBench" / "Checks.lean").read_text()
        start = checks.index("def representativeLadderCoverage")
        end = checks.index("#check (representativeLadderCoverage", start)
        entries = REPRESENTATIVE_RE.findall(checks[start:end])

        by_folder: dict[str, list[str]] = {}
        for folder, label in entries:
            by_folder.setdefault(folder, []).append(label)

        self.assertEqual(ladder_folders, set(by_folder))
        self.assertEqual(20, len(entries))
        for folder, labels in by_folder.items():
            with self.subTest(folder=folder):
                self.assertEqual(4, len(labels))
                self.assertEqual(4, len(set(labels)))
                self.assertIn("weakest", labels)
                self.assertIn("strongest", labels)


if __name__ == "__main__":
    unittest.main()
