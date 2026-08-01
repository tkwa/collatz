# An Extremely Weak Collatz-like Conjecture

## Positive contraction density

Let $B\ge 2$. For $n\in\mathbb N_0$, write uniquely

```math
n=Bq+r,\qquad 0\le r\lt B,
```

and define

```math
T_B(n)=
\begin{cases}
q, & r=0,\\[2mm]
(B+1)q+r+1, & 1\le r\lt B.
\end{cases}
```

Thus a multiple of $B$ undergoes a contracting step, while every other residue class undergoes an expanding step. Indeed, when $r\ne0$,

```math
T_B(n)-n=q+1\gt 0.
```

For $K\ge1$, let

```math
D_K(n)=\#\big\lbrace 0\le j\lt K:T_B^{\,j}(n)\equiv0\pmod B\big\rbrace,
```

the number of contracting steps among the first $K$ iterates of $n$.

## Conjecture

There exists an integer $B\ge2$ such that every nonnegative integer orbit has a positive lower asymptotic density of contracting steps:

```math
\exists B\ge2\;\forall n\in\mathbb N_0:
\qquad
\liminf_{K\to\infty}\frac{D_K(n)}{K}\gt 0.
```

The positive lower bound may depend on $n$; no uniform density over all starting values is asserted.

## Status

Open. No value of $B\ge2$ is currently known for which this universal positive-lower-density statement has been proved. Results for almost all starting values do not establish the quantifier $\forall n$.

## Why this is Collatz-like

This is the residue-affine family obtained by taking

```math
E=\lbrace1,\ldots,B-1\rbrace,
\qquad a_r=B+1,
\qquad c_r=r+1.
```

Its expanding multipliers are relatively prime to $B$, and it satisfies the negative-product condition

```math
(B+1)^{B-1}\lt B^B.
```

For $B=2$, the map is the shortcut Collatz map:

```math
T_2(2q)=q,
\qquad
T_2(2q+1)=3q+2=\frac{3(2q+1)+1}{2}.
```

Consequently, the Collatz conjecture implies this conjecture: an orbit entering the cycle $1\leftrightarrow2$ has contraction density $1/2$, while the orbit of $0$ has contraction density $1$.

## Strength of the statement

This conjecture is weaker than eventual periodicity for some $T_B$. Every periodic orbit must contain a multiple of $B$, because $T_B(n)\gt n$ at every nonmultiple of $B$; hence a periodic orbit has positive contraction density. The converse is not asserted: an orbit may have positive contraction density and still diverge.

The density required here may also be too small to offset the expanding branches. The multiplicative drift becomes nonpositive only when the contraction density reaches the critical value

```math
\delta_B^*
=1-\frac{\log B}{\log(B+1)}.
```

This conjecture asks merely for a positive density, not for density at least $\delta_B^*$.

The universal quantifier over starting values is essential. Coprimality permits arbitrarily long finite runs of expanding residue classes, so checking any bounded collection of starting values or iteration lengths cannot establish the conjecture.

## Related work

- Walter Carnielli, [“Some Natural Generalizations of the Collatz Problem”](https://emis.de/ft/8276), studies the family $T_B$ and conjectures eventual periodicity; the paper does not prove a universal case.
- K. R. Matthews and A. M. Watts, [“A Markov approach to the generalized Syracuse algorithm”](https://doi.org/10.4064/aa-45-1-29-42), study residue frequencies and multiplicative drift for generalized Syracuse maps. Their limiting-frequency statement for divergent trajectories is itself conjectural.
