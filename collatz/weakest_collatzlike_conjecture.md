# The Weakest Collatz-like Conjecture

This is the repository's moving weakest formulation.  The name is
operational rather than absolute: if this statement is proved by an
elementary construction, it should be replaced by a weaker natural statement.
Older formulations that remain mathematically significant keep descriptive
names.

## Signed unit family

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

and require both sets to be nonempty.  For $x\in\mathbb Z$, use the unique
Euclidean decomposition

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

For $n\in\mathbb N_0$, let

```math
D_K(n)=
\#\lbrace0\le j\lt K:
T^{\,j}(n)\bmod B\in C
\rbrace.
```

## Conjecture

There are fixed choices of $B$, the map parameters
$\lbrace(a_r,c_r)\rbrace_{0\le r\lt B}$, integers $d\ge1$ and $u\ge2$ such
that $u$ and $B$ are multiplicatively independent,

```math
u^s\ne B^t
\qquad\text{for all integers }s,t\ge1,
```

and an exponent $k_0\ge0$ such that

```math
\forall k\ge k_0:
\qquad
D_K(d u^k)=\omega(\log K)
\quad\text{as }K\to\infty.
```

Equivalently, for every fixed $k\ge k_0$,

```math
\lim_{K\to\infty}\frac{D_K(d u^k)}{\log K}=+\infty.
```

The exponent $k$ is fixed before the orbit-time limit is taken.  No rate
uniform in $k$ is asserted.  Allowing finitely many exceptional exponents
prevents the statement from depending on accidental behavior at a few small
states.

## Why multiplicative independence is retained

Without a separation between $u$ and $B$, a scaled power ray can be
elementary.  For example, take $B=u$, $d=1$, use pure division on residue
zero, put an expanding unit multiplier with offset zero on residue one, and
use contracting branches on the other residues.  Then

```math
u^k\longmapsto u^{k-1}\longmapsto\cdots\longmapsto1\longmapsto0,
```

after which the orbit stays on the contracting residue zero.  Thus
$D_K(u^k)=K-O_k(1)$.

Multiplicative independence excludes this exact base-alignment mechanism and
is weaker than coprimality.  More generally, a fixed residue word of length
$L$ acts affinely as

```math
x\longmapsto \frac{A x+C}{B^L},
\qquad \gcd(A,B)=1.
```

If that word sent $d u^{k+s}$ to $d u^k$ for infinitely many $k$, then the
resulting identity in $u^k$ would force $C=0$ and

```math
A u^s=B^L.
```

Prime valuations, together with $\gcd(A,B)=1$, would then force $A=1$ and
$u^s=B^L$, contrary to multiplicative independence.  This argument allows
$u$ and $B$ to share primes; it does not assert that shared-prime rays have
the same local behavior as unit rays.

Indeed, local fullness holds in the form used below only when
$\gcd(u,B)=1$.  When primes are shared, initial forced divisions can consume
the shared part of $d u^k$, but there are only $O_k(1)$ such steps for each
fixed exponent.  For example, under a base-$2$ map whose zero branch is pure
division, a start $6^k$ reduces after $k$ steps to the still-open start $3^k$.
In cases such as $u=2$, $B=6$, the ray is not locally full at all.
Multiplicative independence still rules out an exact repeated exponent
decrement, but no comparable finite-itinerary no-go certificate is claimed
for these shared-prime cases.

## Why one exact scaled ray is retained

Requiring two multiplicatively independent bases $u,v$, both coprime to
$B$, is a natural stronger variant.  In the coprime subcase, it is not needed
to prevent a finite-state or missing-digit trivialization.  For any single
$u$ coprime to $B$, there is a fixed itinerary prefix after which the starts
$u^k$ realize **every** finite residue continuation, for arbitrarily large
exponents $k$.  In particular, one such ray already contains arbitrarily long
expansion-only finite blocks among its members.

This local fullness does not refute the conjecture: the exponent producing a
long bad prefix may change with the requested prefix length, whereas the
conclusion is pointwise in each fixed exponent.  It does show that the second
ray does not repair a local weakness of the first.  Under the repository's
instruction to keep weakening the moving candidate until an elementary
collapse appears, one exact scaled ray is therefore preferred.

The consolidated [research state](progress/research_state.md) records the
finite-itinerary obstruction and the fixed-start distinction that also govern
this sparse-ray formulation.

## Relationship to all-start formulations

Either all-start conjecture in this folder implies the present scaled-ray
statement: after fixing its witness map, take $d=1$ and choose any $u\ge2$
multiplicatively independent of the map base.

## Relationship to classical Collatz

The shortcut Collatz map is an allowed nonnegative member of the family:

```math
T(2q)=q,
\qquad
T(2q+1)=3q+2.
```

Taking $d=1$ and the ray base $u=3$, classical Collatz would make every $3^k$
eventually enter its usual cycle, where contracting steps have positive
density.  Hence the classical Collatz conjecture implies the present
statement.  No converse is claimed.

Natural-density-one and logarithmic-density-almost-all theorems do not settle
the restriction to one power ray.  The set

```math
\lbrace d u^k:k\ge0\rbrace
```

has only $O(\log X)$ elements below $X$ and has finite reciprocal sum, so it
may lie entirely inside the exceptional sets allowed by those theorems.

## What “weakest” means here

There is no literal weakest open statement under unrestricted set inclusion:
one can always pass to a thinner subsequence.  The repository uses the
following working convention:

1. the map is fixed and belongs to the signed unit family above;
2. the orbit target remains $D_K(n)=\omega(\log K)$;
3. every sufficiently large member of an exact scaled geometric ray is required
   to be good; and
4. arbitrary subsequences, starting-dependent maps, and existentially chosen
   isolated good starts are not counted as meaningful further weakenings.

Under that convention, one exact scaled power ray not multiplicatively
aligned with the map base is the current weakest candidate.  A future proof,
trivialization, or comparably natural thinner family should trigger another
revision.

## Status

Provisional and not literature-certified as open.  No admissible witness is
known to satisfy the scaled-ray conclusion, and no reduction proves that a
witness cannot exist.  The coprime subcase has a local-fullness obstruction;
the shared-prime subcase is retained because no elementary mechanism is
known, not because that obstruction extends to it.
