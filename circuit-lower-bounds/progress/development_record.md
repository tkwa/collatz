# Development Record

This is the research history behind the current benchmark.  Current
statements live in the parent folder.

## Governing criteria

The live development guide was read before branch work.  The benchmark must
start at current theorem strength, make every positive row open, use only
checked implications, provide at least two progress doublings, geometrically
space cumulative effort below score `10`, and redesign any integer contour
whose estimated skip probability exceeds `50%`.

## Weakening path

The starting candidate was an eventual exponential circuit lower bound for a
fixed canonical $NP$-complete language.  Successive accepted weakenings were:

1. replace the named complete language by some $NP$ language;
2. replace eventual by infinitely often;
3. move through subexponential, superpolynomial, polynomial, and superlinear
   rates;
4. replace a fixed coefficient gain by some positive coefficient gain; and
5. retain only $\limsup C_L(n)/n\gt3.1$.

Each accepted move had at least a 20% subjective chance of removing a core
difficulty.  Enlarging the witness class to $\Sigma_2^P$ fails because
Kannan's theorem already gives much stronger fixed-polynomial lower bounds
there.  Shrinking the hard length set to finitely many lengths fails because
finite truth tables can be hardcoded in a $P$ language.

Loss-only and additive improvements were considered but rejected.  They are
formally weaker, but currently receive under 20% probability of removing the
leading-order general-circuit obstacle.  The unique moving Weakest document
records that judgment.

## Strengthening path

Starting from $NP\nsubseteq P/poly$, the selected path imposes an eventual
$n^{\log\log n}$ bound and then increases the exponent through explicit
quasipolynomial, stretched-exponential, and near-exponential contours.  The
strongest retained candidate is eventual $2^{\Omega(n)}$ circuit complexity
for some $NP$ language.

Stronger candidates were searched by fixing SAT, requiring Shannon-order
complexity, and conjoining hardness at every length.  They were rejected
because linear exponents are encoding- and reduction-length-sensitive, and
near-maximum complexity for a uniform $NP$ language did not reach the guide's
80% truth-and-ZFC-provability threshold.  The retained endpoint is itself
borderline and therefore starred.

## Hostile-check categories

The audits explicitly cover:

- all sixteen $B_2$ gates versus $U_2$ and De Morgan bases;
- arbitrary versus bounded fan-out and fan-in two versus unbounded fan-in;
- one output versus multi-output direct-sum claims;
- $P$, $NP$, $\Sigma_2^P$, and nonuniform truth-table witnesses;
- ordinary bit length, padding, invalid encodings, and reduction blowup;
- eventual versus infinitely-often inequalities;
- $P\ne NP$, $NP\nsubseteq P/poly$, fixed-polynomial, superpolynomial,
  subexponential, and exponential statements;
- falsity, relativization, natural proofs, algebrization, independence, and
  algorithmic-undecidability concerns; and
- cryptographic inversion hardness versus forward decision-circuit hardness.

## Implication repair

An early scaffold incorrectly suggested moving from a $P$-witness
$\omega(n)$ bound to $NP\nsubseteq P/poly$.  That is not an implication:
every $P$ language has polynomial-size circuits, and an eventual
$\omega(n)$ bound is not equivalent to noncontainment in $P/poly$.  The final
chain keeps all positive witnesses in $NP$, uses i.o. bounds through score
`4`, and changes to eventual bounds only in the stronger direction above it.

## Calibration

The final central effort estimates grow from $10^{2.55}$ expert-years for the
Weakest statement to $10^{5.55}$ at score `10`.  This is approximately
geometric below the guide's common score-`10` anchor.  The ladder contains
many more than two doublings of headroom.  Every reported integer skip
probability is at most `45%`; uncertainties are at least `15--20` percentage
points, so these are design judgments rather than measured frequencies.

## Process accounting

The bounded model/source audit in
[`notes/frontier_model_and_quantifier_audit.md`](notes/frontier_model_and_quantifier_audit.md)
spent approximately 9,000 tokens on the weakest side and 5,000 on the endpoint
side.  Those figures do not satisfy the development guide's final frontier
red-team gates.  A dedicated eligible frontier-model audit must honestly
reach at least 100,000 weakest-side tokens and 50,000 endpoint-side tokens
before this process can be called complete; its report will be linked here.

## Rendering verification

After commit `8ea16a4` was pushed, the live GitHub pages for
[`difficulty_ladder.md`](../difficulty_ladder.md) and
[`sources_and_implications.md`](../sources_and_implications.md) were inspected
in a browser.  GitHub produced 51 and 79 native math renderers respectively,
both tables appeared on the ladder page, and no renderer contained an
`merror`, unknown-command, parse-error, or TeX-error node.  This is a
client-rendered page check, not merely an API check for renderer elements.
