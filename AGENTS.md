Do not try searching for an explicit set of parameters whose map converges, or has some minimum contraction density, over a bounded range of integers. That cannot prove it converges on all integers, because there could be arbitrarily long runs of expanding residue classes, just as in Collatz.

Any proof of a superlogarithmic lower bound
$D_K(n)=\omega(\log K)$ for every starting value must be placed in the
`collatz/asymptotic_progress/` folder, together with the supporting lemmas and
checks needed to verify it.

The search is not committed to the original admissible map.  A proof for any
admissible parameter choice is in scope; compare alternative families when
their arithmetic structure is more tractable.

For Markdown math that will be published on GitHub, checking that the
`/markdown` API emits a `<math-renderer>` element is not enough: the browser
can still display a client-side TeX error.  Prefer simple GitHub-compatible
notation; for cardinalities, use `\#\lbrace\cdots\rbrace` rather than nested
`\left|\left\{\cdots\right\}\right|`, and use `\lt` and `\gt` rather than
raw `<` and `>` comparison characters inside math.  Before declaring the work
complete, inspect the actual rendered GitHub page in a browser and confirm
that changed formulas show neither a math error, missing symbols, nor raw TeX
fallback.
