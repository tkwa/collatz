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
$\lbrace(a_r,c_r)\rbrace_{0\le r\lt B}$, an integer $u\ge2$ with

```math
\gcd(u,B)=1,
```

and an exponent $k_0\ge0$ such that

```math
\forall k\ge k_0:
\qquad
D_K(u^k)=\omega(\log K)
\quad\text{as }K\to\infty.
```

Equivalently, for every fixed $k\ge k_0$,

```math
\lim_{K\to\infty}\frac{D_K(u^k)}{\log K}=+\infty.
```

The exponent $k$ is fixed before the orbit-time limit is taken.  No rate
uniform in $k$ is asserted.  Allowing finitely many exceptional exponents
prevents the statement from depending on accidental behavior at a few small
states.

## Why the ray base is coprime to the map base

Without a separation between $u$ and $B$, one power ray is elementary.  Take
$B=u$, use pure division on residue zero, put an expanding unit multiplier
with offset zero on residue one, and use contracting branches on the other
residues.  Then

```math
u^k\longmapsto u^{k-1}\longmapsto\cdots\longmapsto1\longmapsto0,
```

after which the orbit stays on the contracting residue zero.  Thus
$D_K(u^k)=K-O_k(1)$.

Coprimality is a clean way to exclude every such base-alignment mechanism.
The formally sharp obstruction to a fixed-word exponent decrement is only
that $u$ and $B$ be multiplicatively independent.  Coprimality is retained
because it also gives the power ray a strong local-fullness property: its
powers are dense in an open subgroup of the $B$-adic units.

## Why one coprime ray is retained

Requiring two multiplicatively independent bases $u,v$, both coprime to
$B$, is a natural stronger variant.  It is not needed to prevent a finite-state
or missing-digit trivialization.  For any single $u$ coprime to $B$, there is
a fixed itinerary prefix after which the starts $u^k$ realize **every** finite
residue continuation, for arbitrarily large exponents $k$.  In particular,
one ray already contains arbitrarily long expansion-only finite blocks among
its members.

This local fullness does not refute the conjecture: the exponent producing a
long bad prefix may change with the requested prefix length, whereas the
conclusion is pointwise in each fixed exponent.  It does show that the second
ray does not repair a local weakness of the first.  Under the repository's
instruction to keep weakening the moving candidate until an elementary
collapse appears, the one-coprime-ray statement is therefore preferred.

The openness and itinerary arguments, together with the two-ray comparison,
are proved in
[`asymptotic_progress/weakest_coprime_ray_redteam.md`](asymptotic_progress/weakest_coprime_ray_redteam.md).

## Relationship to the earlier fixed-$2,3$ proposal

The earlier proposal required the same map to work on every sufficiently
large power of both $2$ and $3$.  Replacing those fixed bases by two
existentially chosen coprime bases changes two features at once: it allows
friendlier rays but restricts the map base.  The two statements are therefore
not logically comparable unless the fixed-$2,3$ witness also satisfies
$\gcd(B,6)=1$.

The present one-ray conjecture is weaker than the existential two-coprime-ray
variant.  It is also implied by either all-start conjecture in this folder:
after a witness map is fixed, choose any integer $u\ge2$ coprime to its base.

## Relationship to classical Collatz

The shortcut Collatz map is an allowed nonnegative member of the family:

```math
T(2q)=q,
\qquad
T(2q+1)=3q+2.
```

Taking the coprime ray base $u=3$, classical Collatz would make every $3^k$
eventually enter its usual cycle, where contracting steps have positive
density.  Hence the classical Collatz conjecture implies the present
statement.  No converse is claimed.

Natural-density-one and logarithmic-density-almost-all theorems do not settle
the restriction to one power ray.  The set

```math
\lbrace u^k:k\ge0\rbrace
```

has only $O(\log X)$ elements below $X$ and has finite reciprocal sum, so it
may lie entirely inside the exceptional sets allowed by those theorems.

## What “weakest” means here

There is no literal weakest open statement under unrestricted set inclusion:
one can always pass to a thinner subsequence.  The repository uses the
following working convention:

1. the map is fixed and belongs to the signed unit family above;
2. the orbit target remains $D_K(n)=\omega(\log K)$;
3. every sufficiently large member of a complete geometric ray is required
   to be good; and
4. arbitrary subsequences, starting-dependent maps, and existentially chosen
   isolated good starts are not counted as meaningful further weakenings.

Under that convention, one complete power ray not aligned with the map base
is the current weakest candidate.  A future proof, trivialization, or
comparably natural thinner family should trigger another revision.

## Status

Provisional and not literature-certified as open.  No admissible witness is
known to satisfy the coprime-ray conclusion, and no reduction proves that a
witness cannot exist.  Exact collapses, structural obstructions, attempted
constructions, and the final no-weakening audit are recorded in the red-team
note linked above.
