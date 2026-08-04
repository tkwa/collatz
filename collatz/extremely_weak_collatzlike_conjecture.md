# An Extremely Weak Collatz-like Conjecture

## Superlogarithmic contraction count

Let $\mathbb N_0=\lbrace 0,1,2,\ldots\rbrace$.

Choose an integer $B\ge 2$.  For every residue
$r\in\lbrace0,\ldots,B-1\rbrace$, choose fixed integers $a_r,c_r$ satisfying

```math
a_r\ge1,
\qquad \gcd(a_r,B)=1,
\qquad c_r\in\mathbb N_0.
```

Define the sets of contracting and expanding residues by

```math
C=\{r:a_r\lt B\},
\qquad
E=\{r:a_r\gt B\},
```

and require both $C$ and $E$ to be nonempty.  Since $a_r$ is coprime to
$B$, equality $a_r=B$ cannot occur.

For $n\in\mathbb N_0$, write uniquely

```math
n=Bq+r,
\qquad 0\le r\lt B,
```

and define the coprime residue-affine map

```math
T(n)=a_rq+c_r.
```

The branches indexed by $C$ are the **contracting branches**: their
asymptotic slopes $a_r/B$ are strictly less than one.  For $K\ge1$, let

```math
D_K(n)=
\#\lbrace 0\le j\lt K:
T^{\,j}(n)\bmod B\in C
\rbrace.
```

the number of contracting-branch steps among the first $K$ iterates of $n$.

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

Equivalently, for every fixed starting value $n$,

```math
\lim_{K\to\infty}\frac{D_K(n)}{\log K}=+\infty.
```

No rate uniform in $n$ is asserted.

## Relationship to the stronger conjectures

Allowing signed unit multipliers, integer offsets, and integer-valued orbits
gives the provisional
[Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md).  The
present conjecture implies that relaxation.

The pure-division family is a special case in which every
contracting branch has

```math
a_r=1,
\qquad c_r=0.
```

Consequently, the
[Very Weak Collatz-like Conjecture](very_weak_collatzlike_conjecture.md),
which asks for positive lower density in that subfamily, implies the present
existential conjecture.  Positive lower density is much stronger than the
superlogarithmic conclusion: $D_K(n)$ may grow faster than every constant
multiple of $\log K$ while still having density zero.

The shortcut Collatz map is the special case

```math
B=2,
\qquad
(a_0,c_0)=(1,0),
\qquad
(a_1,c_1)=(3,2).
```

Thus the Collatz conjecture implies the present conjecture: every positive
orbit would eventually enter $1\leftrightarrow2$ and thereafter use the
contracting branch with density $1/2$.  The present conjecture asks for much
less.  Its witness may be any map in the larger coprime residue-affine family,
and its orbits need not be bounded, recurrent, or eventually periodic.

## Why the formulation excludes easy collapses

Allowing the coefficients to depend on $n$ makes the assertion elementary:
an offset or multiplier can be chosen to make a contracting-branch state fixed.

The present formulation excludes both mechanisms.  Every multiplier is a
positive unit modulo $B$, and every coefficient is fixed before the starting
value is chosen.  In particular, each finite residue itinerary remains
locally realizable by an ordinary congruence class.

## Status and ongoing work

Open.  No fixed parameter choice is currently known to satisfy the universal
superlogarithmic statement.

The work in [`asymptotic_progress/`](asymptotic_progress/) studies the
pure-division subfamily, which remains a valid route to the revised
existential target.  The broader contracting-branch family introduced here
may offer additional arithmetic structure, but it does not remove the local
finite-itinerary obstruction.
