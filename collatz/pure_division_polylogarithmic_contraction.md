# A Pure-Division Polylogarithmic Contraction Conjecture

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

For the unique decomposition $n=Bq+r$ with $0\le r\lt B$, define

```math
T(n)=
\begin{cases}
a_rq+c_r, & r\in E,\\[2mm]
q, & r\notin E.
\end{cases}
```

Thus every nonexpanding branch is pure division by $B$, while every
expanding multiplier is a unit modulo $B$.  For $K\ge1$, let

```math
D_K(n)=
\#\lbrace0\le j\lt K:T^j(n)\bmod B\notin E\rbrace.
```

## Conjecture

There are fixed parameters in this family and a fixed $\delta\gt0$ such that

```math
\forall n\in\mathbb N_0\ \exists K_0(n)\ \forall K\ge K_0(n):
\qquad
D_K(n)\ge(\log K)^{1+\delta}.
```

The exponent is common to every start.  Only the eventual threshold may
depend on $n$.

## Why this is the first all-start rung

This statement is a diagonal cut through three independent strengthening
axes: it replaces one sparse ray by all nonnegative starts, restricts the
signed family to nonnegative pure-division maps, and upgrades an unspecified
superlogarithmic rate to one fixed polylogarithmic rate.  Keeping each axis
change as a separate rung would distinguish formulations that are unusually
likely to be crossed by the same global orbit argument.

The conjecture implies the moving
[Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md).  A
pure-division map is a member of its signed unit family, and the all-start
bound applies in particular to $d u^k$ after taking $d=1$ and any $u\ge2$
multiplicatively independent of $B$.  Moreover,

```math
\frac{(\log K)^{1+\delta}}{\log K}
=(\log K)^\delta\longrightarrow\infty.
```

Both alternatives in the
[Power-or-Density Contraction Conjecture](power_or_density_contraction.md)
imply this statement: a fixed positive power of $K$ dominates every fixed
power of $\log K$, while positive lower density gives a linear lower bound
after a starting-dependent threshold.

## Status

Provisional and not literature-certified as a standard open problem.  The
current rigorous frontier in this repository supplies $\Omega_n(\log K)$ for
an explicit fixed pure-division map, and arbitrarily large logarithmic
coefficients only by changing the map.  No fixed witness is known here to
satisfy the displayed polylogarithmic bound for every start.
