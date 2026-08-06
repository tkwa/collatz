# A Power-or-Density Contraction Conjecture

This is a two-route disjunction.  It credits either a linear-frequency theorem
for a freely designed pure-division map or a weaker quantitative theorem for
the fixed shortcut Collatz map.

## Alternative A: existential pure-division density

The [Positive Division-Density Conjecture](positive_division_density.md)
holds: there is one admissible pure-division map such that

```math
\forall n\in\mathbb N_0:
\qquad
\liminf_{K\to\infty}\frac{D_K(n)}K\gt0.
```

The positive lower bound may depend on $n$.

## Alternative B: classical fixed-power contraction

For the shortcut Collatz map

```math
C(2q)=q,
\qquad
C(2q+1)=3q+2,
```

let $D_K^{\rm Col}(n)$ count the even inputs among the first $K$ iterates.
There is a fixed $\delta\gt0$ such that

```math
\forall n\in\mathbb N_0\ \exists K_0(n)\ \forall K\ge K_0(n):
\qquad
D_K^{\rm Col}(n)\ge K^\delta.
```

## Conjecture

At least one of Alternatives A and B is true.

The disjunction is deliberate.  Alternative A may exploit freedom to design
the map but demands linear frequency.  Alternative B fixes the classical map
but permits zero density: the model sequence $D_K=\lfloor K^\delta\rfloor$
meets a fixed-power bound while $D_K/K\to0$.  Neither route is a cosmetic
restatement of the other.

## Implication interfaces

Either alternative implies the
[Pure-Division Polylogarithmic Contraction Conjecture](pure_division_polylogarithmic_contraction.md).
For Alternative A, every fixed orbit eventually has $D_K(n)\ge c_nK/2$ for
some $c_n\gt0$.  For Alternative B, the shortcut map itself is an admissible
pure-division witness.  In both cases the resulting bound eventually
dominates $(\log K)^2$ for each fixed start.

Classical positive lower division density implies both alternatives: the
shortcut map supplies Alternative A, and any pointwise positive linear lower
bound eventually dominates, for example, $K^{1/2}$.  The strengthened
[Negative-Drift Periodicity Conjecture](negative_drift_periodicity.md) implies
Alternative A because every eventual cycle in that statement contains a
division step.

## Status

Provisional.  Neither disjunct is known here, and no literature-certification
claim is made.  The point of the disjunction is to follow two incomparable
proof routes through the implication lattice, not to lower the target by an
arbitrary logical trick.
