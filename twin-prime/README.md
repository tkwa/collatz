# Prime-Patterns Difficulty Ladder

This folder defines a one-dimensional difficulty ladder beginning at the
current bounded-gap theorem, passing through the twin prime conjecture, and
ending at the Bateman--Horn conjecture.  It is intended to measure theorem
strength, not to forecast which technique will win.

The present unconditional baseline is

```math
H_1=\liminf_{n\to\infty}(p_{n+1}-p_n)\le246.
```

The [D. H. J. Polymath bounded-gap paper](https://arxiv.org/abs/1407.4897)
proves this bound.  Its abstract also records the two conditional anchors used
here: Elliott--Halberstam gives $H_1\le12$, while generalized
Elliott--Halberstam gives $H_1\le6$.

## Documents

- [`difficulty_ladder.md`](difficulty_ladder.md) states the scalar ladder,
  defines every disjunction, and gives the difficulty and skip estimates.
- [`sources_and_implications.md`](sources_and_implications.md) records the
  source audit, exact implication directions, non-implications, and openness
  caveats.  This file is being added during the draft-PR research pass.

The former two-coordinate outcome/distribution state is not part of this
benchmark.  Distribution conjectures appear only as alternatives inside
logical disjunctions.  A theorem earns a rung exactly when it proves the
displayed statement; no credit is assigned for method prestige or a forecast
of future usefulness.

## Reading the OR rungs

If a rung is $A\lor B$, either theorem is sufficient.  The next rung has been
chosen so that each of its alternatives implies at least one alternative on
the rung below.  Thus the score is a scalar even though research can follow
different routes.  This is the only aggregation rule.

All effort numbers are explicitly subjective.  Mathematical implications and
literature status are audited separately from those judgments.
