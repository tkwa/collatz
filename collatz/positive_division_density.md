# A Positive Division-Density Conjecture

## Positive contraction density

Let $\mathbb N_0=\lbrace 0,1,2,\ldots\rbrace$.

Choose an integer $B\ge 2$, a nonempty set

```math
E\subseteq\lbrace 1,\ldots,B-1\rbrace,
```

and, for each $r\in E$, integers $a_r,c_r$ satisfying

```math
a_r\gt B,\qquad \gcd(a_r,B)=1,\qquad c_r\in\mathbb N_0,
```

For $n\in\mathbb N_0$, write uniquely

```math
n=Bq+r,\qquad 0\le r\lt B,
```

and define

```math
T(n)=
\begin{cases}
q, & r\notin E,\\[2mm]
a_rq+c_r, & r\in E.
\end{cases}
```

The residue classes outside $E$ are the division branches: on them, the map discards the remainder and divides by $B$.

For $K\ge1$, let

```math
D_K(n)=\left|\big\lbrace 0\le j\lt K:
T^{\,j}(n)\bmod B\notin E\big\rbrace\right|,
```

the number of division-branch steps among the first $K$ iterates of $n$.

## Conjecture

There exist choices of $B$, $E$, and $\lbrace(a_r,c_r)\rbrace_{r\in E}$ satisfying the conditions above such that every nonnegative integer orbit has a positive lower asymptotic density of division-branch steps:

```math
\forall n\in\mathbb N_0:
\qquad
\liminf_{K\to\infty}\frac{D_K(n)}{K}\gt0.
```

The positive lower bound may depend on $n$; no uniform density over all starting values is asserted.

## Relationship to Collatz

The shortcut Collatz map is the admissible special case

```math
B=2,\qquad E=\lbrace1\rbrace,
\qquad a_1=3,\qquad c_1=2.
```

Thus the Collatz conjecture implies this conjecture: every positive orbit would eventually enter $1\leftrightarrow2$, where the division-branch density is $1/2$, while the orbit of $0$ has density $1$.

## Why this is weaker

* The conjecture allows a much wider range of maps than the specific Collatz map.
* The conjecture does not say that any orbit is bounded, returns below its starting value, or becomes periodic. An orbit may use the division branches with positive density and still diverge exponentially.

## Status and related work

Open. No choice of parameters satisfying the conditions above is known to satisfy the universal positive-density statement.

The shortcut Collatz special case does not make the conjecture trivial. It is elementary that a positive shortcut Collatz orbit cannot remain odd forever, so it has infinitely many division-branch steps. That does not imply positive lower asymptotic density: the gaps between such steps could grow quickly enough for the lower density to be zero. It is not known that every shortcut Collatz orbit has positive division-branch density.

For comparison, under the unaccelerated Collatz map every odd step is immediately followed by an even step. But that map is not admissible here: in quotient-remainder form its odd branch has $a_1=6$ for $B=2$, so $\gcd(a_1,B)\ne1$.

Matthews and Watts study limiting residue frequencies and multiplicative drift for this class of relatively prime generalized Syracuse maps, but their general limiting-frequency statement for divergent trajectories is conjectural.

- K. R. Matthews and A. M. Watts, [“A Markov approach to the generalized Syracuse algorithm”](https://doi.org/10.4064/aa-45-1-29-42).
- Walter Carnielli, [“Some Natural Generalizations of the Collatz Problem”](https://emis.de/ft/8276), studies a natural admissible subfamily.
