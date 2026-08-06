# Unrestricted Boolean-Circuit Lower Bounds

This folder develops a benchmark from the best unconditional lower bound for
an explicit Boolean-function family against unrestricted fan-in-two Boolean
circuits to major nonuniform lower bounds.  The exact model is the complete
binary basis $B_2$: a circuit is a directed acyclic graph with $n$ Boolean
inputs, one Boolean output, arbitrary fan-out, and gates computing arbitrary
functions of at most two inputs.  Size counts non-input gates.  Constants and
negated literals can be absorbed at only constant cost, but every comparison
in the primary ladder uses this one convention.

For a family $f=(f_n)$, write $C_{B_2}(f_n)$ for its minimum circuit size in
this model.  A language supplies the family of characteristic functions on
all strings of each length.  Unless a row explicitly says otherwise, a bound
holds for every sufficiently large input length; this is stronger than an
infinitely-often bound.

## Why model discipline matters

Restricted-depth, monotone, formula, bounded-fan-out, and uniform circuit
lower bounds can be exponential without advancing this ladder.  Likewise,
$P\ne NP$, $NP\nsubseteq P/poly$, a superpolynomial lower bound for one
language in $NP$, and an exponential lower bound for one language in $NP$ are
different statements.  The [source and implication
audit](sources_and_implications.md) records the quantifiers needed for each
displayed arrow.

The current explicit-function frontier is a $3.1n-o(n)$ lower bound for an
affine disperser computable in $P$.  The exact first strict improvement is
still being hostile-checked against the primary theorem's hidden loss term;
the draft ladder therefore marks its first row provisional rather than
pretending that “replace $3.1$ by a larger constant” is automatically the
weakest open statement.

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
