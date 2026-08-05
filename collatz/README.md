# Collatz-like Conjectures

This repository records deliberately modest Collatz-like conjectures with
explicitly distinguished starting-set quantifiers, map families, and orbit
conclusions.

- [The Negative-Drift Periodicity Conjecture](negative_drift_periodicity.md) asks whether some admissible negative-drift residue-affine map has every orbit eventually become periodic.
- [The Positive Division-Density Conjecture](positive_division_density.md) asks whether some relatively-prime residue-affine map gives every orbit a positive lower density of division-branch steps.
- [The All-Start Nonnegative Superlogarithmic Contraction Conjecture](nonnegative_superlogarithmic_contraction.md) asks whether some fixed coprime self-map of $\mathbb N_0$ gives every orbit a contraction count satisfying $D_K(n)=\omega(\log K)$.
- [The All-Start Signed Superlogarithmic Contraction Conjecture](signed_superlogarithmic_contraction.md) provisionally allows signed unit multipliers, integer offsets, and integer-valued orbits while retaining the same target for every nonnegative start.
- [The Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md) asks only that one signed unit map satisfy the superlogarithmic target on every sufficiently large power along one existentially chosen ray whose base is coprime to the map base.

In these names, **all-start** means every starting value in $\mathbb N_0$.
The descriptive names expose the starting-set quantifier, map family, and
required orbit property.  “Weakest” is retained only for the deliberately
moving lowest candidate; its document states the convention under which it
is being minimized.

The [Collatz-like impressiveness ladder](collatz_ladder.md) places these
conjectures, the classical Collatz conjecture, a sharp classical stopping-time
asymptotic, and increasingly uniform one-expander theorems on a subjective
scale.  Its endpoint is the
[Universal One-Expander Periodicity Conjecture](one_expander_universal_periodicity.md),
not a theorem over arbitrary residue-affine maps.

Research toward a superlogarithmic lower bound for the contraction-branch count
is recorded in [`progress/`](progress/). Precise
obstacles encountered by the current approaches are recorded in
[`blockers/`](blockers/).

## Status

Provisional open problems. This repository contains problem statements and
context; it does not claim a proof or a specific construction, or that every
formulation has been certified as open in the literature.
