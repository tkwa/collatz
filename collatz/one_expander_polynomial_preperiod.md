# The Universal One-Expander Polynomial-Preperiod Conjecture

This is the generalized-map component of score `10.5` in the
[Collatz-like difficulty ladder](difficulty_ladder.md).  It strengthens
[universal one-expander periodicity](one_expander_universal_periodicity.md)
by bounding how long an orbit can take to enter a cycle.  Score `10.5`
conjoins this statement with the exact classical maximum stopping-time
constant, and the terminal score strengthens the bound to
[logarithmic order](one_expander_logarithmic_preperiod.md).

## Cycle-entry time

Fix an admissible map $T$ from the
[one-expander family](one_expander_universal_periodicity.md#map-family).  For
$n\in\mathbb N_0$, define its preperiod, or cycle-entry time, by

```math
\rho_T(n)=\min\lbrace k\ge0:
\exists p\ge1,\ T^{k+p}(n)=T^k(n)\rbrace,
```

with $\rho_T(n)=\infty$ when the set is empty.  This measures the time until
the orbit first reaches some periodic cycle; it does not add the length of
that cycle.  Put

```math
R_T(X)=\max_{0\le n\le X}\rho_T(n).
```

## Conjecture

Every fixed admissible one-expander map has a polynomial worst-case
preperiod.  Explicitly, for every such $T$ there are constants
$A_T,C_T\gt0$ and $X_T\in\mathbb N$ such that

```math
R_T(X)\le C_T X^{A_T}
\qquad\text{for every }X\ge X_T.
```

The exponent and constants may depend on the entire map, including its
offset $c$; no bound uniform in the parameters is asserted.  This conjecture
implies universal one-expander periodicity, since a finite bound for any
$X\ge n$ forces $\rho_T(n)\lt\infty$.

## Literature interface

The [periodicity note](one_expander_universal_periodicity.md#a-broader-literature-conjecture)
gives the Matthews comparison and explains why its broader qualitative claim
does not supply this narrower quantitative bound.

## Status

Provisional open conjecture.  No proof or counterexample is claimed, and the
polynomial rate is a project-created intermediate statement rather than a
standard named conjecture from the literature.
