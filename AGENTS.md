## Development

Development guide is specified [here](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0). Read it before starting any PR.

Draft PRs should be made before the full PR is complete, so that humans can check on agent progress.

For Markdown math that will be published on GitHub, checking that the
`/markdown` API emits a `<math-renderer>` element is not enough: the browser
can still display a client-side TeX error.  Prefer simple GitHub-compatible
notation; for cardinalities, use `\#\lbrace\cdots\rbrace` rather than nested
`\left|\left\{\cdots\right\}\right|`, and use `\lt` and `\gt` rather than
raw `<` and `>` comparison characters inside math.  Before declaring the work
complete, inspect the actual rendered GitHub page in a browser and confirm
that changed formulas show neither a math error, missing symbols, nor raw TeX
fallback.

Commit frequently.

There should be at most one "Weakest" conjecture in each folder which should be continually revised to reflect the frontier. All others should be named descriptively.

You may freely delete language about obsolete versions of conjectures or the repo in general. All documentation should reflect *only* how the repo is, not how it used to be.

Documents should not duplicate information from the development guide, the README, or anywhere else.

## Proof searches / red-teaming

Do not try searching for an explicit set of parameters whose map converges, or has some minimum contraction density, over a bounded range of integers. That cannot prove it converges on all integers, because there could be arbitrarily long runs of expanding residue classes, just as in Collatz.

Progress should go in a progress/ subfolder of the task folder and need not be committed in the main branch.
