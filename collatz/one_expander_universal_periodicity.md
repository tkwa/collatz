# The Universal One-Expander Periodicity Conjecture

This is the uniform component of the cumulative score-`9.5` endpoint of the
[Collatz-like impressiveness ladder](collatz_ladder.md).  That endpoint also
retains the score-`9` classical stopping-time limit so the ladder remains an
implication chain.  The conjecture here is universal over
a deliberately restricted map family near the project's estimated
computational-universality boundary.

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
score `5` also identifies $1\leftrightarrow2$ as the destination of every positive
start.

## Why the family stops here

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
one-expander simulation.

The score-`9.5` endpoint placement therefore reflects an overlap-aware
judgment about the conjunction, not a known decidability theorem or a claim
that the uniform component follows from the classical stopping-time result.
The project's current subjective probability that computational universality
survives all these restrictions is approximately `10--15%`.

## Status

Provisional open conjecture.  No proof or counterexample is claimed here, and
the exact formulation has not been certified against the full literature as
a standard named open problem.
