# The Exact Maximum Stopping-Constant Conjecture

This is the single-statement score 9.5 rung of the
[Collatz-like difficulty ladder](difficulty_ladder.md).  It upgrades the exact
limsup at score `9` to convergence of the normalized running maximum, retaining
the constant predicted by stochastic models for extreme shortcut-Collatz
trajectories.

## The model constant

All logarithms on this page are natural.  Let

```math
M_{\rm RRW}(\theta)
=\frac12 2^\theta+\frac12(2/3)^\theta,
\qquad
g(a)=\sup_{\theta\in\mathbb R}
\lbrace\theta a-\log M_{\rm RRW}(\theta)\rbrace.
```

Define $\gamma_{\rm RRW}$ to be the unique real solution satisfying

```math
\gamma_{\rm RRW}g(1/\gamma_{\rm RRW})=1,
\qquad
\gamma_{\rm RRW}\gt
\left(\frac12\log\frac43\right)^{-1}.
```

The stochastic models give

```math
\gamma_{\rm RRW}\approx41.677647.
```

For the shortcut Collatz map, let $\tau(n)$ be the number of iterations needed
to reach 1, with $\tau(n)=\infty$ if it never does, and put

```math
M(X)=\max_{1\le n\le X}\tau(n).
```

## Conjecture

The maximum stopping time has the exact limiting constant

```math
\lim_{X\to\infty}\frac{M(X)}{\log X}=\gamma_{\rm RRW}.
```

This is stronger than the score-`9` statement, which identifies the limsup but
does not require the normalized running maximum to converge.

## Literature interface

Kontorovich and Lagarias formulate the following **3x+1 scaled stopping
constant conjecture** for the actual map:

```math
\limsup_{n\to\infty}\frac{\tau(n)}{\log n}=\gamma_{\rm RRW}
```

This is Conjecture 4.1 of
[“Stochastic Models for the 3x+1 and 5x+1
Problems”](https://arxiv.org/abs/0910.1944).  The value comes from the forward
repeated-random-walk and backward branching-random-walk models of Lagarias and
Weiss, which give the same constant:
[“The 3x+1 Problem: Two Stochastic
Models”](https://doi.org/10.1214/aoap/1177005779).

For the shortcut map, the published limsup is equivalent to

```math
\limsup_{X\to\infty}\frac{M(X)}{\log X}=\gamma_{\rm RRW}.
```

Indeed, $\tau(n)\le M(n)$ gives one inequality.  Conversely, the definition of
a limsup bounds every sufficiently large $\tau(n)$ by
$(\gamma_{\rm RRW}+o(1))\log n$, which bounds the maximum over $n\le X$ by the
same expression with $\log X$.  A hypothetical finite exceptional start with
infinite stopping time cannot be hidden from the limsup, since all of its
doublings have infinite stopping time as well.

Score `9` is this literature conjecture.  The maximum-limit form at score
`9.5` is not verbatim from either paper: it additionally rules out
leading-order dips between near-extremal record starts.  The limsup alone
permits those starts to be arbitrarily sparse and therefore does not force
convergence of $M(X)/\log X$.

## Status

Open conjecture.  The numerical value is a stochastic-model prediction, not a
proved constant for Collatz trajectories.
