# A Profinite Signed Superlogarithmic Contraction Conjecture

## Signed-integer family

Let $\mathbb N_0=\lbrace0,1,2,\ldots\rbrace$.  Choose an integer $B\ge2$.
For every residue $r\in\lbrace0,\ldots,B-1\rbrace$, choose fixed integers
$a_r,c_r$ satisfying

```math
a_r\ne0,
\qquad
\gcd(a_r,B)=1,
\qquad
c_r\in\mathbb Z.
```

Define

```math
C=\lbrace r:\lvert a_r\rvert\lt B\rbrace,
\qquad
E=\lbrace r:\lvert a_r\rvert\gt B\rbrace,
```

and require both sets to be nonempty.  For every $x\in\mathbb Z$, use the
unique Euclidean decomposition

```math
x=Bq+r,
\qquad
q\in\mathbb Z,
\qquad
0\le r\lt B,
```

and define

```math
T(x)=a_rq+c_r.
```

For $n\in\mathbb N_0$, let $D_K(n)$ count the contracting-branch steps among
the first $K$ iterates:

```math
D_K(n)=
\#\lbrace0\le j\lt K:
T^{\,j}(n)\bmod B\in C
\rbrace.
```

Define the set of good starting values

```math
G_T=
\lbrace n\in\mathbb N_0:
D_K(n)=\omega(\log K)
\rbrace.
```

## Conjecture

There is a fixed map $T$ in this family for which $G_T$ is profinitely dense
in $\mathbb N_0$.  Explicitly,

```math
\forall m\ge2\;
\forall b\in\lbrace0,\ldots,m-1\rbrace\;
\forall X\in\mathbb N_0\;
\exists n\in G_T:
\qquad
n\ge X,
\qquad
n\equiv b\pmod m.
```

Equivalently, there is a profinitely dense set
$S\subseteq\mathbb N_0$ such that every $n\in S$ has
$D_K(n)=\omega(\log K)$.

## Relationship to the all-start conjecture

The
[All-Start Signed Superlogarithmic Contraction Conjecture](signed_superlogarithmic_contraction.md)
requires $G_T=\mathbb N_0$ and therefore implies the present conjecture.
The converse is not asserted: a different good starting value may realize
each finite congruence condition.

This distinction removes the hardest all-start diagonal requirement while
retaining every finite residue itinerary.  For a base-$B$ map, each finite
itinerary determines one residue class modulo a power of $B$, and profinite
density requires good starts in every such class.

## Why a deleted-digit witness does not suffice

An infinite set whose base-$B$ digits avoid an expanding residue can be routed
entirely through pure-division branches.  Such a deleted-digit set omits a
residue class modulo $B$ and is not profinitely dense.  The profinite condition
therefore excludes that immediate trivialization.

It does not rule out a subtler proof.  In particular, the backward basin of a
contraction-rich cycle might conceivably be profinitely dense.  Establishing
that would itself require an infinite congruence or preimage argument.

## Status

Provisional.  No witness or counterexample is claimed, and the statement has
not been certified as open in the literature.  Structural checks for the
signed-integer family are recorded in
[`asymptotic_progress/signed_integer_family_redteam.md`](asymptotic_progress/signed_integer_family_redteam.md).
