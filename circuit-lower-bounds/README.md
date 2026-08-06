# Unrestricted Boolean-Circuit Lower Bounds

This folder develops a benchmark from the best unconditional lower bound for
an explicit Boolean-function family against unrestricted fan-in-two Boolean
circuits to major nonuniform lower bounds.  The exact model is the complete
binary basis $B_2$: a circuit is a directed acyclic graph with $n$ Boolean
inputs, one Boolean output, arbitrary fan-out, and gates labelled by any of
the sixteen functions from $\mathbb F_2^2$ to $\mathbb F_2$.  Size is the
number of gates; inputs are free.  Every comparison in the primary ladder
uses this one convention.

For a family $f=(f_n)$, write $C_{B_2}(f_n)$ for its minimum circuit size in
this model.  A language supplies the family of characteristic functions on
all strings of each length.  The abbreviation **i.o.** means “for infinitely
many input lengths.”  Every row that instead holds for all sufficiently large
lengths says so explicitly.

## Why model discipline matters

Restricted-depth, monotone, formula, bounded-fan-out, and uniform circuit
lower bounds can be exponential without advancing this ladder.  Likewise,
$P\ne NP$, $NP\nsubseteq P/poly$, a superpolynomial lower bound for one
language in $NP$, and an exponential lower bound for one language in $NP$ are
different statements.  The [source and implication
audit](sources_and_implications.md) records the quantifiers needed for each
displayed arrow.

The current explicit-function frontier is usually summarized as
$3.1n-o(n)$.  The primary gate-elimination inequality is
$3.1n-26.1d-25.6$ for an affine disperser of dimension $d$.  Combining it
with Xin Li's polynomial-time affine extractor at polylogarithmic dimension
gives one uniform $P$ family with a $3.1n-O(\mathrm{polylog}\,n)$ lower
bound for all sufficiently large $n$.

The first open rung deliberately permits an $NP$ witness and asks only for a
leading-coefficient improvement on infinitely many lengths.  This keeps the
later chain in one witness class.  Additive and lower-order sharpenings were
considered and rejected as the benchmark's moving Weakest statement because
they probably do not remove the core leading-order barrier with the required
20% probability.

## How the ladder grows

The lower rows first increase the best coefficient, then leave every linear
bound, reach a fixed polynomial gain, and arrive at
$NP\nsubseteq P/poly$.  The upper rows impose explicit eventual growth rates
on one $NP$ language.  These are stronger than noncontainment in $P/poly$:
the latter guarantees large circuits on infinitely many lengths for every
fixed polynomial exponent, not one eventual superpolynomial lower bound.

The stretched-exponential exponents are calibration contours rather than
named conjectures.  They are included because every contour implies the one
below and because a coefficient-only ladder would have unacceptable skip
risk.  The terminal exponential statement is starred: its truth and eventual
length quantifier put the subjective probability of ZFC provability in the
development guide's borderline band.

## Documents

- [`difficulty_ladder.md`](difficulty_ladder.md) is the compact milestone and
  calibration table.
- [`sources_and_implications.md`](sources_and_implications.md) fixes the
  circuit model, explicitness and length quantifiers, and audits sources and
  arrows.
- [`weakest_unrestricted_circuit_improvement.md`](weakest_unrestricted_circuit_improvement.md)
  is the folder's unique moving **Weakest** candidate.
- [`progress/`](progress/) records the weakening, strengthening, and hostile
  checks used to construct the benchmark.

## Status labels

- **[proved]** is an unconditional theorem in the cited model.
- **[implication]** is a mathematical implication with its quantifiers
  checked in the audit.
- **[heuristic]** is an analogy or expectation, not a theorem.
- **[subjective]** is a benchmark-design or effort judgment.

Every score, effort estimate, and skip probability is **[subjective]**.

## Important exclusions

The $4.5n-o(n)$ and $5n-o(n)$ affine-disperser bounds use the smaller $U_2$
basis, which excludes XOR and XNOR gates.  They are not stronger results in
this folder's model.  Exponential lower bounds for monotone, bounded-depth,
formula, or bounded-fan-out circuits are also outside the scale.
