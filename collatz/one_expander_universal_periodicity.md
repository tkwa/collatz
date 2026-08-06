# The Universal One-Expander Periodicity Conjecture

This is the generalized-map component of score `10` in the
[Collatz-like difficulty ladder](difficulty_ladder.md).  That score conjoins
it with the exact classical maximum stopping-time constant.  The terminal
score further strengthens cycle entry to a
[polynomial preperiod bound](one_expander_polynomial_preperiod.md).  The
conjecture here is universal over a deliberately restricted map family near
the project's estimated computational-universality boundary.

## Map family

Let $\mathbb N_0=\lbrace0,1,2,\ldots\rbrace$.  Choose integers

```math
B\ge2,
\qquad
e\in\lbrace1,\ldots,B-1\rbrace,
```

and choose $a,c$ satisfying

```math
B\lt a\lt B^B,
\qquad
\gcd(a,B)=1,
\qquad
c\in\mathbb N_0.
```

For the unique representation $n=Bq+r$ with $0\le r\lt B$, define

```math
T(n)=
\begin{cases}
a q+c, & r=e,\\[2mm]
q, & r\ne e.
\end{cases}
```

Thus exactly one residue is expanding, every other residue is a pure-division
branch, the expanding multiplier is coprime to the base, and the map remains
in $\mathbb N_0$.  Under uniform residue frequencies, the usual geometric
negative-drift condition reduces to $a\lt B^B$.

## Conjecture

Every map in this family has every nonnegative orbit eventually periodic:

```math
\forall B,e,a,c\ \forall n\in\mathbb N_0\ \exists k\ge0\ \exists p\ge1:
\qquad
T^{k+p}(n)=T^k(n),
```

where the outer quantifiers range only over parameters satisfying the stated
conditions.

The conclusion is eventual periodicity, not convergence to one common cycle.
Different parameters can create different finite cycles, so a universal
common-attractor statement would be false for elementary reasons unrelated to
the intended orbit-growth problem.

## Relationship to classical Collatz

The shortcut Collatz map is the member

```math
B=2,
\qquad
e=1,
\qquad
a=3,
\qquad
c=2.
```

Consequently, the universal one-expander conjecture implies classical
Collatz's eventual-periodicity half, but it does not identify the classical
cycle.  The ladder places the full classical Collatz conjecture lower because
it also identifies $1\leftrightarrow2$ as the destination of every positive
start.

## A broader literature conjecture

For comparison, a standard generalized Collatz map on $\mathbb Z$ has the
form

```math
T(x)=\frac{m_i x+b_i}{B}
\qquad\text{when }x\equiv i\pmod B,
```

where $m_i\ne0$, $m_i i+b_i\equiv0\pmod B$, and
$\gcd(m_i,B)=1$.  A conjecture attributed to Matthews predicts that every
integer orbit is eventually periodic whenever

```math
\left\lvert\prod_{i=0}^{B-1}m_i\right\rvert\lt B^B.
```

Kionke states this formulation in
[“A geometric approach to divergent points of higher dimensional Collatz
mappings”](https://arxiv.org/abs/1511.05893), citing Matthews' Conjecture 3.1.
It strictly contains the one-expander family above: take

```math
m_e=a,
\qquad b_e=Bc-ae,
\qquad
m_i=1,\quad b_i=-i\quad(i\ne e).
```

Then the generalized formula is exactly the one-expander map and its
multiplier product is $a\lt B^B$.  The Matthews conjecture therefore implies
the periodicity statement on this page, but it is not a scored rung.
Conjoining its much broader all-residue, all-integer claim with the exact
classical stopping constant does not confidently clear the development
guide's endpoint probability threshold.  Matthews gives no quantitative
preperiod rate, while the ladder's
[polynomial-preperiod endpoint](one_expander_polynomial_preperiod.md) covers
only the narrower one-expander family; neither statement is currently known
to subsume the other.

## Why the periodicity family stops here

Natural generalized-Collatz systems with unrestricted rational affine
branches can encode register machines.  Kurtz and Simon proved the associated
universal totality problem $\Pi^0_2$-complete, building on Conway's
constructions:

- Stuart A. Kurtz and Janos Simon,
  [“The Undecidability of the Generalized Collatz Problem”](https://doi.org/10.1007/978-3-540-72504-6_49).

Their result does not establish computational universality for the family
above.  Standard encodings use additional branch types or valuation changes
that the coprime one-expander normal form does not transparently provide.  On
the other hand, negative average drift alone does not preclude computation on
a sparse exceptional set, and this project has no impossibility theorem for a
one-expander simulation.  In
[“The 3x+1 Problem: An
Overview”](https://arxiv.org/abs/2111.02635), Lagarias asks whether the broader
relatively-prime class contains an **ergodic** map that simulates a universal
computer.  That question imposes neither the negative-product condition nor
the one-expander restriction, and it is not a universality result for either
subfamily.

The score-`10` component therefore reflects an overlap-aware judgment, not a
known decidability theorem or a claim that the uniform component follows from
the classical stopping-time result.  The project's current subjective
probability that computational universality survives all the one-expander
restrictions is approximately `10--15%`; the broader Matthews class carries
materially more uncertainty.  The terminal polynomial strengthening has an
additional risk from long but finite transients even when every orbit is
eventually periodic.

## Status

Provisional open conjecture.  No proof or counterexample is claimed here, and
the exact formulation has not been certified against the full literature as
a standard named open problem.
