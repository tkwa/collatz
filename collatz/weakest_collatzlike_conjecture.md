# A Weakest Collatz-like Conjecture

## Provisional signed-integer formulation

Let $\mathbb N_0=\lbrace0,1,2,\ldots\rbrace$.

Choose an integer $B\ge2$.  For every residue
$r\in\lbrace0,\ldots,B-1\rbrace$, choose fixed integers $a_r,c_r$ satisfying

```math
a_r\ne0,
\qquad
\gcd(a_r,B)=1,
\qquad
c_r\in\mathbb Z.
```

Define the contracting and expanding residue sets by absolute slope:

```math
C=\lbrace r:\lvert a_r\rvert\lt B\rbrace,
\qquad
E=\lbrace r:\lvert a_r\rvert\gt B\rbrace,
```

and require both $C$ and $E$ to be nonempty.  Coprimality rules out
$\lvert a_r\rvert=B$.

For every $x\in\mathbb Z$, write uniquely

```math
x=Bq+r,
\qquad
q\in\mathbb Z,
\qquad
0\le r\lt B,
```

and define the signed residue-affine map

```math
T(x)=a_rq+c_r.
```

For $K\ge1$ and a nonnegative starting value $n$, let

```math
D_K(n)=
\#\lbrace 0\le j\lt K:
T^{\,j}(n)\bmod B\in C
\rbrace.
```

Thus $D_K(n)$ counts branches whose asymptotic absolute slope is strictly
less than one, even if the orbit has entered the negative integers.

## Conjecture

There exist fixed choices of $B$ and
$\lbrace(a_r,c_r)\rbrace_{0\le r\lt B}$ satisfying the conditions above such
that

```math
\forall n\in\mathbb N_0:
\qquad
D_K(n)=\omega(\log K)
\quad\text{as }K\to\infty.
```

Equivalently, for every fixed $n\in\mathbb N_0$,

```math
\lim_{K\to\infty}\frac{D_K(n)}{\log K}=+\infty.
```

Only the starting value is required to be nonnegative.  The orbit itself is
an orbit in $\mathbb Z$, and no rate uniform in $n$ is asserted.

## Relationship to the Extremely Weak conjecture

The
[Extremely Weak Collatz-like Conjecture](extremely_weak_collatzlike_conjecture.md)
requires positive multipliers and nonnegative offsets.  Its maps preserve
$\mathbb N_0$, so that formulation is a special case of the present one.
Consequently, the Extremely Weak conjecture implies this conjecture.

The converse is not known.  Integer offsets may let an orbit cross zero, and
negative multipliers may reverse its direction.  These extra freedoms could
make a witness easier to construct without changing the asymptotic distinction
between contracting and expanding branches.

## Why the absolute value is essential

If negative multipliers are allowed, the order comparison $a_r\lt B$ no longer
describes contraction: a multiplier such as $a_r=-100B-1$ has a large
expanding absolute slope.  The sets $C$ and $E$ are therefore defined using
$\lvert a_r\rvert$.

The counted set also cannot be chosen independently of contraction.  If it
could include expanding branches, a simple potential argument can force the
chosen label to have positive density without proving frequent contraction.
That elementary collapse is recorded in the red-team note linked below.

## Status

Provisional and under active red-team review.  No fixed parameter choice is
currently known to satisfy the universal superlogarithmic conclusion, and no
claim is made here that the signed formulation has been established as open
in the literature.

The definition audit, proved structural observations, and attempted
trivializations are recorded in
[`asymptotic_progress/weakest_signed_integer_family.md`](asymptotic_progress/weakest_signed_integer_family.md).
