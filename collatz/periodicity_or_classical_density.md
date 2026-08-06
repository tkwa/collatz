# A Periodicity-or-Classical-Density Conjecture

This is the next two-route join in the contraction lattice.

## Alternative A: designed-map periodicity with division

The strengthened
[Negative-Drift Periodicity Conjecture](negative_drift_periodicity.md) holds:
some admissible negative-drift pure-division map has every nonnegative orbit
eventually enter a cycle containing at least one division step.

## Alternative B: classical positive division density

Every shortcut-Collatz orbit has positive lower even-step density:

```math
\forall n\in\mathbb N_0:
\qquad
\liminf_{K\to\infty}\frac{D_K^{\rm Col}(n)}K\gt0.
```

## Conjecture

At least one of Alternatives A and B is true.

Alternative A chooses a favorable map but proves the strong qualitative
conclusion of eventual periodicity.  Alternative B fixes the classical map
but asks only for branch recurrence at positive frequency.  Neither statement
is known to imply the other, so the disjunction records two genuine routes.

## Implication interfaces

Either alternative implies the
[Power-or-Density Contraction Conjecture](power_or_density_contraction.md).
Alternative A gives its existential-density branch.  Alternative B gives
both branches, since the shortcut map is admissible and a positive linear
lower bound eventually dominates a common fixed power.

The classical non-strict drift-threshold statement

```math
\liminf_{K\to\infty}\frac{D_K^{\rm Col}(n)}K
\ge 1-\frac{\log 2}{\log 3}
```

for every $n$ implies Alternative B.  Classical boundedness implies both
Alternatives A and B: a bounded integer orbit is eventually periodic, and
every positive shortcut-Collatz cycle contains an even input.

## Status

Provisional.  Both alternatives are open under the formulations used here.
The disjunction is retained because it materially improves coverage of the
two main proof paths while preserving a formal implication chain.
