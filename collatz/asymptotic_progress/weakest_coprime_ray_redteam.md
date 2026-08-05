# Red-team audit of the coprime-ray weakest conjecture

## Status

This note audits the moving
[Weakest Collatz-like Conjecture](../weakest_collatzlike_conjecture.md).
The candidate asks one fixed signed unit residue-affine map to satisfy

```math
D_K(u^k)=\omega(\log K)
```

for every sufficiently large exponent $k$, where the ray base $u\ge2$ is
chosen together with the map and satisfies $\gcd(u,B)=1$.  Nothing here is a
proof of the conjecture.  Sections labelled **Proved** record exact boundary
results or refutations of proposed shortcuts.

## Quantifier variants

Three nearby formulations should not be conflated.

1. The earlier candidate fixed the two rays $2^k$ and $3^k$ but placed no
   coprimality restriction on $B$.
2. The user's proposed robust variant existentially chooses two
   multiplicatively independent bases $u,v$, with $\gcd(uv,B)=1$.
3. The current weakest candidate existentially chooses just one base $u$,
   with $\gcd(u,B)=1$.

The two-coprime-ray variant implies the one-coprime-ray candidate.  It is not
implied by the fixed-$2,3$ version unless that version has a witness with
$\gcd(B,6)=1$, because existential choice of friendlier rays and a restriction
on the map base point in opposite logical directions.

For two rays, separate exceptional thresholds are equivalent to one common
$k_0$: take their maximum.  Multiplicative independence of the two bases is
essential if two genuinely different rays are intended; otherwise $v=u^m$
merely repeats a subsequence of the first ray.

## Proved: an unrestricted single ray is elementary

For a freely aligned ray $u^k$, take $B=u$.  Use

```math
T(Bq)=q,
\qquad
T(Bq+1)=(B+1)q,
```

and use $T(Bq+r)=q$ on every remaining residue.  The multiplier $B+1$ is an
expanding unit modulo $B$, while all other multipliers are contracting units.
Every power of $u$ shifts to $1$, the expanding branch sends $1$ to $0$, and
$0$ is a contracting fixed point.  Therefore

```math
D_K(u^k)=K-O_k(1).
```

The collapse survives adjoining finitely many extra starting values.  Choose
a large power $B=u^M$ exceeding those starts.  Each designated number is one
base-$B$ digit, while every power $u^k$ has one nonzero digit from
$\lbrace1,u,\ldots,u^{M-1}\rbrace$.  For large $M$, put the required expanding
unit branch on a digit used by none of these starts and use pure division
elsewhere.

Thus some condition excluding multiplicative alignment with $B$ is necessary.
Coprimality is stronger than the exact minimum, but it exposes additional
structure used below.

## Proved: fixed-word exponent decrement is impossible

For a residue word $w=(r_0,\ldots,r_{N-1})$, put

```math
A_w=\prod_{j=0}^{N-1}a_{r_j}.
```

On the unique starting class modulo $B^N$ realizing $w$, the endpoint is

```math
T^N(n)=\frac{A_wn+C_w}{B^N}
```

for an integer $C_w$.  Suppose one fixed word sends $u^k$ to $u^{k-t}$ for
infinitely many $k$.  Comparing two exponents, or letting $k$ grow, gives

```math
A_wu^t=B^N,
\qquad
C_w=0.
```

Because $A_w$ is a unit modulo $B$, prime valuations force

```math
A_w=1,
\qquad
u^t=B^N.
```

Thus even without coprimality, a bounded-word exponent decrement is possible
only when $u$ and $B$ are multiplicatively dependent.  Under
$\gcd(u,B)=1$, it is impossible.

The same endpoint formula shows that no bounded collection of words sends
cofinally many powers into a fixed finite set.  For each fixed word,
$\lvert A_wu^k+C_w\rvert$ tends to infinity.  Any successful witness must use
capture times or word lengths tending to infinity with $k$.

## Proved: coprime powers have an open $B$-adic closure

Let

```math
H=\overline{\lbrace u^k:k\ge0\rbrace}
\subset\mathbb Z_B^\times.
```

Then $H$ is an open subgroup of the $B$-adic unit group.

To prove this, write

```math
\mathbb Z_B\cong\prod_{p\mid B}\mathbb Z_p.
```

Choose $L$ so that $u^L$ lies in $1+p\mathbb Z_p$ for every odd $p\mid B$
and in $1+4\mathbb Z_2$ when $2\mid B$.  The integer $u^L$ is not a root of
unity in any $\mathbb Z_p$, since $u\ge2$, so

```math
s_p=v_p(u^L-1)<\infty.
```

On the relevant principal-unit neighborhood, the $p$-adic logarithm gives

```math
\log_p(u^{Ln})=n\log_p(u^L),
```

and $\log_p(u^L)$ is $p^{s_p}$ times a $p$-adic unit, with the standard
minor adjustment at $p=2$.  The diagonal nonnegative integers are dense in

```math
\prod_{p\mid B}\mathbb Z_p
```

by the Chinese remainder theorem.  Hence the closure of
$\lbrace u^{Ln}:n\ge0\rbrace$ contains a product of principal-unit groups

```math
\prod_{p\mid B}(1+p^{t_p}\mathbb Z_p),
```

which is an open neighborhood of $1$.  Therefore $H$ is open.  In
particular, for some $h\ge1$,

```math
1+B^h\mathbb Z_B\subseteq H.
```

Deleting finitely many exponents does not change the closure: every tail
$\lbrace u^k:k\ge k_0\rbrace$ is still dense in $H$.

## Proved: one coprime ray has full finite-itinerary continuations

Extend $T$ to $\mathbb Z_B$.  Its itinerary map is

```math
Q(x)=\sum_{j\ge0}r_jB^j,
\qquad
r_j=T^j(x)\bmod B.
```

Unit multipliers imply the exact equivalence

```math
x\equiv y\pmod{B^N}
\quad\Longleftrightarrow\quad
Q(x)\equiv Q(y)\pmod{B^N}.
```

Indeed, equal starts modulo $B^N$ follow the same first branch and their
difference loses exactly one factor of $B$ at each step; conversely, inverse
lifting through a branch is unique because $a_r$ is a unit.  Thus $Q$ is a
bijective $B$-adic isometry and maps every radius-$B^{-N}$ ball onto a ball of
the same radius.

Choose $h$ with $1+B^h\mathbb Z_B\subseteq H$.  Then

```math
Q(H)\supseteq Q(1)+B^h\mathbb Z_B.
```

Let $w$ be the first $h$ itinerary symbols of $1$.  For every finite residue
word $z$, the cylinder $wz$ meets $Q(H)$.  Since arbitrarily large powers
$u^k$ are dense in $H$, infinitely many such exponents realize that cylinder.
Consequently:

```math
\boxed{
\text{After one fixed prefix, powers on one coprime ray realize every finite
itinerary continuation.}
}
```

This includes arbitrarily long all-expansion continuations.  It rules out a
proof that all powers avoid one expanding digit, a finite forbidden word, or
any proper closed shift-invariant safety language.  More generally, if the
itineraries of all powers belonged to a closed subshift $S$, continuity would
give $Q(H)\subseteq S$.  Since $Q(H)$ contains a cylinder and shifting that
cylinder removes its fixed prefix, shift invariance would force $S$ to be the
full shift.

The theorem also explains why adding a second coprime ray is not needed to
defeat finite-state routing.  A single ray already has all possible finite
continuations among its different members.

## Why local fullness is not a counterexample

For every length $N$, the preceding theorem supplies an exponent $k_N$ whose
orbit has an expansion-only block of length $N$.  It does not supply one fixed
ordinary exponent whose orbit has infinitely many such prefixes.

The nested congruence classes of possible exponents define a point in a
product of $p$-adic exponent spaces.  That point need not be a nonnegative
ordinary integer.  Equivalently, $H$ contains $B$-adic starts with an
expansion-only tail, but the countable dense subset
$\lbrace u^k:k\in\mathbb N_0\rbrace$ may avoid every such start.  The
conjecture deliberately permits the threshold in $K$ to depend on $k$, so
compactness supplies no missing uniformity.

This is the same diagonal obstruction that makes bounded computation
irrelevant: increasingly bad finite behavior can migrate to increasingly
large exponents while every fixed exponent remains asymptotically good.

## Proved: the discarded profinite relaxation is elementary

Define

```math
T(3q)=q,
\qquad
T(3q+1)=q,
\qquad
T(3q+2)=4q.
```

Let $H_0$ be the nonnegative integers with only digits $0$ and $1$ in base
three.  Every element of $H_0$ follows contracting branches to $0$.

For a prescribed finite congruence class, first follow its forced finite
itinerary.  The endpoint of its lift by $3^Nt$ is $y_0+4^Lt$, where $L$ is
the number of expanding symbols in that prefix.  Sums of distinct sufficiently
high powers of $3$ produce arbitrarily large elements of $H_0$ in every
residue class modulo an integer coprime to $3$.  Choosing such an endpoint and
solving for $t$ gives a start in the prescribed congruence class whose orbit
enters $H_0$.  Therefore the good basin is profinitely dense and

```math
D_K(n)=K-O_n(1)
```

on that basin.  This is why selecting a different good start for every finite
congruence condition lies below the current nontriviality boundary.

## Proved: nonunit multipliers trivialize the fixed two rays

If $\gcd(a_r,B)=1$ is dropped, base $6$ has the branches

```math
T(6q+2)=3q+1,
\qquad
T(6q+4)=3q+2,
\qquad
T(6q+3)=2q+1.
```

They give

```math
T(2^k)=2^{k-1},
\qquad
T(3^k)=3^{k-1}.
```

Pure division branches and one unused expanding branch complete an elementary
two-ray witness.  The multipliers $3$ and $2$ are nonunits modulo $6$.
This exact collapse justifies retaining unit multipliers even after the
starting set is reduced to one ray.

## Construction routes attacked without a proof

### Deleted-digit and backward-basin witnesses

If every power avoided the expanding residues under a pure-division map, its
itinerary would lie in a proper closed digit subshift.  The local-fullness
theorem rules this out for a coprime ray.  Allowing a finite prefix before
entry into a deleted-digit basin does not help with a uniformly bounded entry
time, by the fixed-word endpoint formula.

Unbounded entry times remain possible.  Describing the inverse tree of a good
cycle gives equations

```math
A_ku^k+C_{w_k}=B^{N_k}y_k
```

with both the word and its rank changing with $k$.  Fixed-rank $S$-unit
theorems do not control this growing family.

### Decoding the exponent $p$-adically

For $u\equiv1\pmod p$, the first quotient

```math
\frac{u^k-1}{p}
```

reveals the first $p$-adic digit of $k$.  This suggests routing powers by
computing their exponent and repeatedly deleting exponent digits.  The exact
next operation would be a $p$-adic logarithm followed by division and
exponentiation.  It is analytic and nonlinear, not one of the finitely many
affine quotient branches.  No compilation of this decoder into the signed
unit family was found.  Conversely, no rigidity theorem checked here proves
that a variable-length compilation is impossible.

### Rational-base and homogeneous maps

Choosing a branch multiplier related to $u$ turns the orbit equations into a
rational-base digit or stopped approximate-multiplication problem.  Fixed
words are rigid, but variable words reproduce the same unresolved moving-rank
valuation problem as the all-start research.  Known factor-complexity,
few-digit, and fixed-rank $S$-unit estimates do not yield a pointwise
$\omega(\log K)$ contraction count.

### Signed offsets and negative multipliers

A negative expanding branch can send a positive power to the negative
half-line.  Reflection converts a negative tail into another residue-affine
map with the same absolute multiplier sizes.  Since a coprime ray realizes
every finite continuation after a fixed prefix, no bounded signed router can
send all its powers into a good cycle.  Unbounded sign-changing capture is not
excluded.

### Almost-all theorems

A power ray has counting function $O(\log X)$ and finite reciprocal sum.
Terras--Everett finite-stopping-time results and Tao's logarithmic-density
almost-bounded-orbit theorem permit their entire exceptional sets to contain
the ray.  For shortcut Collatz, the current conjecture specializes to the
unproved assertion that every sufficiently large $3^k$ has enough even
steps.  No checked density theorem supplies that assertion.

### Generalized-Collatz universality

Broader generalized-Collatz systems can encode computation on inputs
represented by powers.  Standard encodings use nonunit multipliers or
valuation changes at primes in the modulus.  No construction was found that
compiles a terminating exponent program into this narrower unit family.
Undecidability of a broader class is also not evidence that the present
existential statement is open; it is only a construction hazard.

## One ray versus two

The two-coprime-ray variant requires bases $u,v\ge2$ with

```math
\gcd(uv,B)=1
```

and no equality $u^m=v^n$ for positive $m,n$.  Every fixed-word and
local-fullness theorem above applies separately to both rays.  The second ray
therefore adds a real pointwise condition, but no new finite-itinerary
obstruction.

Attempts to exploit a specially engineered single-ray witness all led to the
same unresolved task: decode or route the exponent using unbounded words.
Because no such witness was obtained, strengthening the moving weakest
candidate to two rays would hide rather than locate the current boundary.
The stronger variant remains natural if robustness or impressiveness, rather
than minimum apparent difficulty, is the goal.

## Final no-weakening red-team conclusion

After freezing the one-coprime-ray formulation, the final adversarial pass
kept its cofinite exponent quantifier and superlogarithmic target fixed.  It
tested:

1. alignment with $B$ or a power of $B$;
2. fixed one-step and multi-step exponent decrements;
3. pure-division missing-digit sets;
4. proper finite-state and finite-forbidden-word safety languages;
5. bounded entry into a deleted-digit basin or finite family of good cycles;
6. unbounded inverse-tree capture by a fixed good subsystem;
7. $p$-adic logarithm and exponent-digit decoding;
8. homogeneous and rational-base maps with a multiplier related to $u$;
9. positive, negative, and sign-reversing offsets;
10. fixed-rank and growing-rank $S$-unit estimates;
11. natural-density and logarithmic-density almost-all theorems;
12. compilation from broader generalized-Collatz universality; and
13. whether a second coprime ray repairs a local triviality.

The strongest new exact result is that a single coprime ray is locally full:
among different exponents it realizes every finite continuation after one
fixed prefix.  This defeats all bounded routers and makes finite experiments
especially uninformative.  It does not create a single bad exponent, because
the required exponent can escape in a profinite direction as the bad prefix
grows.

No elementary witness, contradiction, or applicable known theorem emerged.
The one-coprime-ray statement therefore appears nontrivial under the
techniques checked here and is retained as the moving weakest conjecture.
This remains a provisional research judgment, not a literature-certified
open problem.
