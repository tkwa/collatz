# The Universal One-Expander Polynomial-Preperiod Conjecture

This is the generalized-map component of the terminal score in the
[Collatz-like difficulty ladder](difficulty_ladder.md).  It strengthens
[universal one-expander periodicity](one_expander_universal_periodicity.md)
by bounding how long an orbit can take to enter a cycle.  The terminal score
conjoins this statement with the exact classical maximum stopping-time
constant.

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

## The stronger logarithmic side point

The random-residue and negative-drift heuristics suggest the sharper law

```math
R_T(X)=O_T(\log(X+2)).
```

Logarithmic order would be best possible for every eventually periodic map
in the family.  Indeed, $T(B^j)=B^{j-1}$ for $j\ge1$.  If any $B^j$ with
$j\ge0$ lies on a cycle, let $J$ be the largest such exponent; this is finite
because one cycle contains only finitely many values.  For every $k\gt J$,
the start $B^k$ then needs exactly $k-J$ steps to enter that cycle.  If no
$B^j$ with $j\ge0$ lies on a cycle, the same orbit segment gives
$\rho_T(B^k)\ge k$.  Monotonicity of $R_T$ therefore gives

```math
R_T(X)\ge\left\lfloor\frac{\log X}{\log B}\right\rfloor-O_T(1).
```

No admissible map with a superlogarithmic preperiod maximum is known here.
Nevertheless, the logarithmic claim is not scored: typical-orbit drift does
not control the rarest natural-number starts, which could follow near-neutral
residue itineraries or retain long finite computations.  The project's
current red-team estimate gives the universal logarithmic statement only
about a `65--78%` chance of being provable in the accepted foundational
setting.  The polynomial statement is the strongest quantitative version
that remains near the asterisked endpoint range.  The current estimates are
roughly `76--86%` for the polynomial component itself and `72--82%` for its
terminal conjunction with the exact classical constant; the latter range is
why the score is explicitly borderline.

## Literature interface

The [periodicity note](one_expander_universal_periodicity.md#a-broader-literature-conjecture)
gives the Matthews comparison and explains why its broader qualitative claim
does not supply this narrower quantitative bound.

## Status

Provisional open conjecture.  No proof or counterexample is claimed, and the
polynomial rate is a project-created strengthening rather than a standard
named conjecture from the literature.
