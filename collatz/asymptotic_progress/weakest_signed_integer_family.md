# Red-team audit of the signed-integer family

## Status

This note audits the provisional
[Weakest Collatz-like Conjecture](../weakest_collatzlike_conjecture.md).
It distinguishes proved structural facts from unsuccessful proof ideas.  No
superlogarithmic lower bound is claimed.

The family acts on $\mathbb Z$ by

```math
T(Bq+r)=a_rq+c_r,
\qquad
q\in\mathbb Z,
\qquad
0\le r\lt B,
```

where $a_r,c_r\in\mathbb Z$, $a_r\ne0$, and $\gcd(a_r,B)=1$.  Contraction
and expansion mean $\lvert a_r\rvert\lt B$ and
$\lvert a_r\rvert\gt B$, respectively.  Only starting values in
$\mathbb N_0$ are universally quantified.

## Proved: nonnegative offsets are forced on a nonnegative self-map

If the state space were still $\mathbb N_0$, then at the smallest input in
residue class $r$ one has

```math
T(r)=c_r.
```

Thus $T(\mathbb N_0)\subseteq\mathbb N_0$ forces $c_r\ge0$ for every $r$.
Allowing negative offsets is a genuine change only after the state space is
enlarged to $\mathbb Z$.

## Proved: an arbitrary counted set makes the target elementary

The counted residues must remain tied to genuine contraction.  To see why,
take $B=2$ and

```math
T(2q)=3q+1,
\qquad
T(2q+1)=q,
```

but arbitrarily count the even residue, which is the expanding branch.  Put
$V(n)=\log_2(n+1)$ for $n\in\mathbb N_0$.  On an odd input,

```math
V(T(n))=V(n)-1,
```

whereas on an even input

```math
V(T(n))\le V(n)+1.
```

If $D_K(n)$ counts the even inputs, summing these inequalities and using
$V(T^K(n))\ge0$ gives

```math
D_K(n)\ge\frac{K-V(n)}2.
```

The arbitrary-label version therefore has a witness with lower density at
least $1/2$.  This does not say that the contracting odd branch is frequent;
indeed, after translating by one, this map is the shortcut Collatz map.  The
example proves that label frequency and contraction frequency cannot be
decoupled in the existential statement.

## Proved: signed coefficients preserve every finite itinerary

Fix a residue word

```math
\mathbf r=(r_0,\ldots,r_{N-1})
```

and put

```math
A_j=\prod_{0\le i\lt j}a_{r_i},
\qquad
A_0=1.
```

If $n$ realizes the word, then every integer lift $n+B^Nt$ realizes the same
word and

```math
T^j(n+B^Nt)=T^j(n)+A_jB^{N-j}t
\qquad(0\le j\le N).
```

The proof is the same induction as in the positive family; the sign of $A_j$
does not matter.  At the endpoint,

```math
T^N(n+B^Nt)=T^N(n)+A_Nt.
```

Because every $a_r$ is a unit modulo $B$, every finite word is realized by
exactly one starting class modulo $B^N$.  That class contains arbitrarily
large nonnegative integers.  In particular, signed coefficients do not create
a finite forbidden residue word or a bounded-gap routing rule.

## Proved: the full shift survives over the B-adic integers

For a fixed residue $r$, the quotient map

```math
q\longmapsto a_rq+c_r
```

is a bijection of $\mathbb Z_B$.  Successive inverse lifting therefore gives
the same full-shift itinerary conjugacy as in the positive-offset family.
Every infinite residue word has a unique $B$-adic starting value.

The ordinary-start problem remains the distinction between those unrestricted
$B$-adic starts and the embedded ray $\mathbb N_0$.  A finite-state argument
cannot exploit signs or integer offsets to remove that distinction.

## Proved: reflection of the negative half-line

For positive multipliers, reflection makes the structure on negative integers
explicit.  Put $J(m)=-m-1$.  If $m=Bp+s$, then

```math
J(m)=B(-p-1)+(B-1-s).
```

Consequently the reflected map $S=J^{-1}TJ$ has branches

```math
S(Bp+s)
=a_{B-1-s}p+
\bigl(a_{B-1-s}-c_{B-1-s}-1\bigr).
```

Thus a negative excursion is not an automatic absorbing reset.  Far down the
negative half-line, positive multipliers produce another residue-affine system
with the same multiplier magnitudes and permuted residues.

## Proved: positive-multiplier sign changes use a finite gateway

Assume temporarily that every $a_r$ is positive.  Since there are only
finitely many branches, there is an $M$ such that

```math
x\ge M\Longrightarrow T(x)\ge0,
\qquad
x\le-M\Longrightarrow T(x)\lt0.
```

Every transition across zero must therefore begin in the finite interval
$[-M,M]$.  If an orbit changes sign infinitely often, it visits that interval
infinitely often.  Determinism and the pigeonhole principle then make the
orbit eventually periodic.  Hence every nonperiodic orbit for the
positive-multiplier signed-offset family eventually stays on one side of
zero.

This reduces the apparent freedom of negative offsets, but does not prove the
target.  A positive tail is the original kind of problem, while reflection
turns a negative tail into another residue-affine problem with the same
multiplier magnitudes.

## Immediate hazards for candidate maps

Any proposed witness must survive the following exact checks.

1. **Absolute, not ordered, slopes.**  A large negative multiplier is
   expanding and must not be counted as a contraction.
2. **Expansion-only periodic points.**  For a periodic residue word $w$ of
   length $N$, composing its branches gives an affine map with slope
   $A_w/B^N$.  If its rational fixed point is an ordinary nonnegative integer
   realizing $w$, the target fails whenever $w$ contains no contracting
   symbols.
3. **Zero multiplier and nonunit collapse.**  Allowing $a_r=0$ or
   $\gcd(a_r,B)\ne1$ can collapse whole residue classes into an absorbing
   subsystem.  Those cases remain excluded.
4. **Finite experiments.**  Arbitrarily long expansion-heavy finite words are
   realized by nonnegative integers.  Termination or high contraction density
   over a bounded range cannot establish the universal statement.

For a constant expansion residue $e$, the fixed-point test is especially
simple.  A fixed point in that branch exists exactly when

```math
(B-a_e)\mid(c_e-e),
```

in which case

```math
q=\frac{c_e-e}{B-a_e},
\qquad
x=Bq+e.
```

If this $x$ is nonnegative, the candidate immediately fails.  For example,
$B=2$, $a_1=3$, and $c_1=-1$ give the expansion-only fixed point $x=5$.

## Routes checked without a proof

### Sending orbits below zero

A negative offset can send small states below zero, but for a positive
multiplier the leading term $a_rq$ dominates on large positive inputs.
No fixed offset sends an entire unbounded positive residue class into a
bounded negative basin.  With a negative multiplier the sign reverses at
large magnitude, but the absolute slope still expands on an expanding branch.
Sign reversal alone supplies no decreasing height.

### A finite signed routing mechanism

The next residue from any present residue remains unrestricted as the quotient
varies modulo $B$.  The exact lift formula realizes every proposed finite
routing pattern, including arbitrarily long expansion-only blocks.  Any
successful sign mechanism must therefore use an unbounded fixed-start
constraint rather than a finite transition graph.

### Translating away the negative offsets

Conjugating by a translation that is a multiple of $B$ changes an offset to

```math
c_r'=c_r+(a_r-B)M.
```

A large $M$ moves contracting and expanding offsets in opposite directions.
There is generally no single translation that makes every offset nonnegative,
so the signed-offset formulation is not reduced to the Extremely Weak one by
this elementary conjugacy.

### Size comparison

Integer offsets can make a contracting step much smaller than pure division
near the origin, but at unbounded magnitude the slope remains
$\lvert a_r\rvert/B$.  Conversely, an orbit with too few contractions is
allowed to diverge.  A one-sided Archimedean height inequality therefore does
not force a lower contraction frequency.

## Provisional conclusion

No elementary proof or counterexample has emerged from allowing fixed integer
offsets or signed unit multipliers.  The main local obstruction survives
unchanged: every finite residue itinerary occurs for a nonnegative starting
integer.  The extra freedoms may nevertheless alter the global arithmetic of
the unique ordinary starts that realize longer and longer prefixes.

For that reason the signed-multiplier version is retained provisionally as the
Weakest conjecture.  This is a research judgment, not a literature-certified
open-status claim.  A future explicit witness, expansion-only ordinary orbit,
or reduction to the positive family should trigger another revision.

Quantifying only nonnegative starts while allowing integer-valued orbits is
deliberately asymmetric and is not invariant under translation.  Requiring
the conclusion for every start in $\mathbb Z$ would be more natural, but it
would not be the requested weakest relaxation.
