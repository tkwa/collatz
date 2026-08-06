## Development

Development guide is specified [here](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0). Read it before starting any PR.

Draft PRs should be made before the full PR is complete, so that humans can check on agent progress.

Before publishing Markdown, run
`python3 -m unittest discover -s tests -p 'test_*.py'` and
`python3 scripts/check_markdown.py .`.  This fast regression suite and scan
cover every live GitHub rendering failure observed in this repository, along
with missing local-link targets and stale paths.  For cardinalities, use
`\#\lbrace\cdots\rbrace` rather than nested
`\left|\left\{\cdots\right\}\right|`, and use `\lt` and `\gt` rather than
raw `<` and `>` comparison characters inside math.

Checking that the `/markdown` API emits a `<math-renderer>` element is not
enough: the browser can still display a client-side TeX error.  Inspect the
actual GitHub page when introducing notation that the fast gate does not yet
cover.  Whenever a new live-render failure is found, add a regression test
before fixing the source so future work stays on the fast path.

Automatic CI runs only the fast Markdown checks.  Lean validation is manual
until benchmark execution becomes relevant; when dispatching it for a PR,
select that PR's branch rather than the default branch.

Commit frequently.

There should be at most one "Weakest" conjecture in each folder which should be continually revised to reflect the frontier. All others should be named descriptively.

You may freely delete language about obsolete versions of conjectures or the repo in general. All documentation should reflect *only* how the repo is, not how it used to be.

Documents should not duplicate information from the development guide, the README, or anywhere else.

`difficulty_ladder.md` should be table-centered and use minimal commentary.
Its commentary should explain the ladder and its construction to a human
non-specialist. Most explanatory commentary belongs in the folder's
`README.md`.

## Proof searches / red-teaming

Do not try searching for an explicit set of parameters whose map converges, or has some minimum contraction density, over a bounded range of integers. That cannot prove it converges on all integers, because there could be arbitrarily long runs of expanding residue classes, just as in Collatz.

Progress should go in a progress/ subfolder of the task folder and need not be committed in the main branch.
