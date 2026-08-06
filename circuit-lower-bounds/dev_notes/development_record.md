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
5. replace every fixed leading-order gain by the no-rate condition
   $\limsup(C_L(n)-3.1n)=+\infty$.

Each accepted move had at least a 20% subjective chance of removing a core
difficulty.  Enlarging the witness class to $\Sigma_2^P$ fails because
Kannan's theorem already gives much stronger fixed-polynomial lower bounds
there.  Shrinking the hard length set to finitely many lengths fails because
finite truth tables can be hardcoded in a $P$ language.

Loss-only, exact-line, and bounded-additive improvements were considered but
rejected.  They are formally weaker, but receive under 20% probability of
removing a core general-circuit obstacle.  The retained unbounded-additive
candidate received a central 25% estimate in the eligible audit.  The unique
moving Weakest document records that judgment.

## Strengthening path

Starting from $NP\nsubseteq P/poly$, the selected upper spine first imposes a
no-rate eventual superpolynomial bound, then increases the rate through
explicit quasipolynomial, stretched-exponential, and near-exponential
contours.  Infinitely-often exponential hardness forms an incomparable side
branch.  A conjunction joins the branches before the strongest retained
candidate, eventual $2^{\Omega(n)}$ circuit complexity for some $NP$
language.

Stronger candidates were searched by fixing SAT, requiring Shannon-order
complexity, and conjoining hardness at every length.  They were rejected
because linear exponents are encoding- and reduction-length-sensitive, and
near-maximum complexity for a uniform $NP$ language did not reach the guide's
80% truth-and-eventual-proof threshold.  The retained endpoint is itself a
knife-edge 80% central judgment, with a 65--89% plausible range, and is
therefore starred.

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
`5`, reaches nonuniform separation at score `6`, and changes to eventual
bounds only in the stronger direction above it.  The i.o. exponential branch
is shown separately rather than being misrepresented as an implication of
the eventual subexponential spine.

## Calibration

The final central effort estimates grow from $10^{2.22}$ expert-years for the
Weakest statement to $10^{5.55}$ at score `10`.  After inserting the natural
coefficient, mild-superlinear, polynomial, quantifier, stretched-exponent,
and near-exponential stopping points, log effort is approximately linear
below score `10`.  The scale contains about eleven doublings of headroom by
score `10` and more above it.  The old central skip estimates were 55--65% in
several gaps; the repaired chain puts every integer estimate at 45% or below,
with at least `15--20` percentage points of uncertainty.  The score-`10`
placement remains a provisional direct comparison with the guide's common
anchor, not a source-backed measurement.

## Process accounting

The preliminary bounded model/source audit in
[`notes/frontier_model_and_quantifier_audit.md`](notes/frontier_model_and_quantifier_audit.md)
spent approximately 9,000 tokens on the weakest side and 5,000 on the endpoint
side.  Those figures do not count toward the development guide's final
frontier red-team gates.  The dedicated
[eligible-model audit](notes/eligible_frontier_red_team.md) used 101,117
instrumented tokens exclusively on the Weakest phase, from meter 86,555 to
187,672, and selected the unbounded-additive replacement.  The endpoint phase
used 306,110 tokens, from 187,672 to 493,782.  The scalar and calibration
phase used another 66,282 tokens, ending at 560,064.  All three phases were
written and read back before integration.

## Rendering verification

After commit `cce2b66` was pushed, the live GitHub pages for
[`difficulty_ladder.md`](../difficulty_ladder.md),
[`sources_and_implications.md`](sources_and_implications.md), and the
[Weakest statement](../weakest_unrestricted_circuit_improvement.md) were
inspected in a browser.  GitHub produced 77, 107, and 14 native math renderers
respectively; all three ladder tables and the expected branch, endpoint,
conditional-route, attribution, and no-rate text appeared.  No renderer
contained an `merror`, unknown-command, parse-error, or TeX-error node.  This
is a client-rendered page check, not merely an API check for renderer
elements.
