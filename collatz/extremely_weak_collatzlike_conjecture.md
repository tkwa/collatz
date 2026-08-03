# An Extremely Weak Collatz-like Conjecture

## Superlogarithmic contraction count

Let $\mathbb N_0=\lbrace 0,1,2,\ldots\rbrace$.

Choose an integer $B\ge 2$, a nonempty set

```math
E\subseteq\lbrace 1,\ldots,B-1\rbrace,
```

and, for each $r\in E$, integers $a_r,c_r$ satisfying

```math
a_r\gt B,\qquad \gcd(a_r,B)=1,\qquad c_r\in\mathbb N_0.
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

The residue classes outside $E$ are the **division branches**: on them, the
map discards the remainder and divides by $B$.  For $K\ge1$, let

```math
D_K(n)=\left|\big\lbrace 0\le j\lt K:
T^{\,j}(n)\bmod B\notin E\big\rbrace\right|,
```

the number of division-branch steps among the first $K$ iterates of $n$.

## Conjecture

There exist choices of $B$, $E$, and
$\lbrace(a_r,c_r)\rbrace_{r\in E}$ satisfying the conditions above such that

```math
\forall n\in\mathbb N_0:
\qquad
D_K(n)=\omega(\log K)
\quad\text{as }K\to\infty.
```

Equivalently, for every fixed starting value $n$,

```math
\lim_{K\to\infty}\frac{D_K(n)}{\log K}=+\infty.
```

No rate uniform in $n$ is asserted.

## Relationship to the stronger conjectures

The [Very Weak Collatz-like Conjecture](very_weak_collatzlike_conjecture.md)
asks for positive lower asymptotic density:

```math
\liminf_{K\to\infty}\frac{D_K(n)}{K}\gt0.
```

That property immediately implies the superlogarithmic bound here.  The
converse need not hold: $D_K(n)$ may grow faster than every constant multiple
of $\log K$ while still having density zero.

The shortcut Collatz map is the admissible special case

```math
B=2,\qquad E=\lbrace1\rbrace,
\qquad a_1=3,\qquad c_1=2.
```

The Collatz conjecture would imply the present conjecture, since every
positive orbit would eventually enter $1\leftrightarrow2$ and thereafter use
the division branch with density $1/2$.  The present conjecture asks for much
less: the witness may be any admissible map, and its orbits need not be
bounded, recurrent, or eventually periodic.

## Why the statement is not trivial

Infinitely many division steps do not suffice.  Their occurrence times could
grow exponentially, giving only $D_K(n)=O(\log K)$.  Elementary size estimates
prove logarithmic lower bounds for useful families of admissible maps, and
the logarithmic constant can be made arbitrarily large by changing the map.
That does not produce one fixed map for which the ratio
$D_K(n)/\log K$ tends to infinity on every orbit.

## Status and ongoing work

Open.  No admissible parameter choice is currently known to satisfy the
universal superlogarithmic statement.

Proof attempts, proved partial results, exact checks, and candidate mechanisms
are collected in [`asymptotic_progress/`](asymptotic_progress/).  The current
obstructions are summarized separately in [`blockers/`](blockers/).
