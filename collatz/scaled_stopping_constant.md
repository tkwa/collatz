# The Exact Maximum Stopping-Constant Conjecture

This is the single-statement score 9.5 rung of the
[Collatz-like difficulty ladder](difficulty_ladder.md).  It sharpens the
existence of a maximum stopping-time limit by identifying its value with the
constant predicted by stochastic models for extreme shortcut-Collatz
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
to reach 1, and put

```math
M(X)=\max_{1\le n\le X}\tau(n).
```

## Conjecture

The maximum stopping time has the exact limiting constant

```math
\lim_{X\to\infty}\frac{M(X)}{\log X}=\gamma_{\rm RRW}.
```

This is stronger than the score-9 statement, which only asks for some finite
positive limiting constant.

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

The maximum-limit form in this benchmark is not a verbatim conjecture from
either paper.  Score 9 already requires convergence of the running maximum;
score 9.5 additionally identifies that limit with the model constant.  In
particular, convergence of $M(X)/\log X$ to $\gamma_{\rm RRW}$ implies the
Kontorovich--Lagarias limsup statement: the upper
bound follows from $\tau(n)\le M(n)$, while infinitely many record indices
$r$ satisfy $M(r)=\tau(r)$ and supply the matching lower bound.  The converse
does not follow from a limsup alone, because near-extremal record indices could
in principle be arbitrarily sparse.

## Status

Open conjecture.  The numerical value is a stochastic-model prediction, not a
proved constant for Collatz trajectories.
