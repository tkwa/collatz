# A Negative-Drift Periodicity Conjecture

## Map family

Let $\mathbb N_0=\lbrace0,1,2,\ldots\rbrace$.  Choose an integer $B\ge2$, a
nonempty set

```math
E\subseteq\lbrace1,\ldots,B-1\rbrace,
```

and, for every $r\in E$, integers $a_r,c_r$ satisfying

```math
a_r\gt B,
\qquad
\gcd(a_r,B)=1,
\qquad
c_r\in\mathbb N_0.
```

Require the uniform-residue negative-drift inequality

```math
\prod_{r\in E}a_r\lt B^B.
```

For the unique decomposition $n=Bq+r$ with $0\le r\lt B$, define

```math
T(n)=
\begin{cases}
a_rq+c_r, & r\in E,\\[2mm]
q, & r\notin E.
\end{cases}
```

The residues outside $E$ are the division branches.  Let

```math
D_K(n)=
\#\lbrace0\le j\lt K:T^j(n)\bmod B\notin E\rbrace.
```

## Conjecture

There are fixed parameters in this family such that every nonnegative orbit
eventually repeats a period containing a division step:

```math
\forall n\in\mathbb N_0\ \exists k\ge0\ \exists p\ge1:
\quad
T^{k+p}(n)=T^k(n)
\quad\text{and}\quad
\#\lbrace0\le j\lt p:T^{k+j}(n)\bmod B\notin E\rbrace\ge1.
```

The period and entry time may depend on $n$.  Different starts may enter
different cycles.

## Why the division clause is necessary

Eventual periodicity by itself does not imply frequent contraction.  For
example, the admissible negative-drift parameters

```math
B=2,
\qquad
E=\lbrace1\rbrace,
\qquad
a_1=3,
\qquad
c_1=0
```

give $T(3)=3$.  This is a periodic orbit lying entirely on the expanding
branch.  The example does not settle whether every orbit of that map is
periodic; it shows exactly why a bare all-orbit periodicity assertion would
not imply positive division density.

With the added clause, an orbit whose eventual period has length $p$ and
contains $m\ge1$ division steps satisfies

```math
\lim_{K\to\infty}\frac{D_K(n)}K=\frac mp\gt0.
```

Consequently this conjecture implies the
[Positive Division-Density Conjecture](positive_division_density.md), using
the same witness map.

## Relationship to classical Collatz

The shortcut Collatz map has

```math
B=2,
\qquad
E=\lbrace1\rbrace,
\qquad
a_1=3,
\qquad
c_1=2,
```

and satisfies $3\lt2^2$.  If every positive Collatz orbit is bounded, then
each is eventually periodic because it takes values in a finite set.  Every
positive cycle contains an even input: on a positive odd input,
$C(n)=(3n+1)/2\gt n$, so an all-odd cycle is impossible.  The orbit of zero
is itself a division-branch fixed point.  Hence classical boundedness implies
this existential conjecture.

The conjecture is not known to imply classical positive division density,
because its witness map may be unrelated to the shortcut map.  Conversely,
classical positive density alone permits divergent shortcut orbits and does
not supply eventual periodicity.  The two statements therefore form separate
branches of the
[Periodicity-or-Classical-Density Conjecture](periodicity_or_classical_density.md).

## Status

Provisional and not literature-certified as a standard open problem.  No
proof or counterexample is claimed.
