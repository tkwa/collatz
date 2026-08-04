# General coprime contracting branches

## Status

This note studies the enlarged parameter family in the revised Extremely Weak
Collatz-like Conjecture.  Everything labelled **Proved** below is complete.
No superlogarithmic lower bound is claimed.

The main conclusion so far is negative but useful: allowing fixed contracting
multipliers between `1` and `B-1` does not create a finite-state reset.  Unit
multipliers preserve the full local itinerary freedom of the pure-division
family.  Any benefit from the new parameters must therefore be global and
arithmetic.

## Setup

Fix `B >= 2`.  For every residue `0 <= r < B`, fix

```math
a_r\ge1,
\qquad \gcd(a_r,B)=1,
\qquad c_r\in\mathbb N_0,
```

and put

```math
T(Bq+r)=a_rq+c_r.
```

Let

```math
C=\{r:a_r<B\},
\qquad
E=\{r:a_r>B\},
```

with both sets nonempty.  Write

```math
d_r=Bc_r-a_rr.
```

Then every branch has the affine-extension form

```math
Bn_{j+1}=a_{r_j}n_j+d_{r_j}.
```

## Proved: exact fixed-itinerary formula

Fix a residue word

```math
\mathbf r=(r_0,\ldots,r_{N-1})
```

and write

```math
A_j=\prod_{0\le i<j}a_{r_i},
\qquad A_0=1.
```

If `n` realizes this word, then every nonnegative lift `n+B^Nt` realizes the
same word and

```math
\boxed{
T^j(n+B^Nt)=T^j(n)+A_jB^{N-j}t
}
\qquad(0\le j\le N).
```

The proof is induction.  At time `j` the two states differ by a multiple of
`B`, use the same branch, and their difference is multiplied by `a_{r_j}/B`.

At the endpoint,

```math
\boxed{
T^N(n+B^Nt)=T^N(n)+A_Nt.
}
```

Because `gcd(A_N,B)=1`, every finite word is realized by exactly one starting
class modulo `B^N`.  The endpoint progression is locally unrestricted modulo
every integer coprime to `A_N`.

This extends the endpoint-progression lemma for the pure-division family.
The only change is that `A_N` now contains the contracting multipliers as well
as the expanding ones.

## Proved: full-shift conjugacy over the `B`-adic integers

Each branch map

```math
q\longmapsto a_rq+c_r
```

is a bijection of `\mathbb Z_B`, because `a_r` is a unit modulo `B`.
Successive inverse lifting therefore gives a homeomorphism

```math
Q:\mathbb Z_B\longrightarrow\mathbb Z_B,
\qquad
Q(x)=\sum_{j\ge0}(T^j(x)\bmod B)B^j.
```

Thus every infinite residue word belongs to exactly one `B`-adic starting
value.  In particular, no finite collection of forbidden residue words can
force a lower bound on the number of contracting symbols along ordinary
integer orbits.  The problem is to distinguish the countable subset
`\mathbb N_0\subset\mathbb Z_B` from the unrestricted `B`-adic starts.

## Proved: why the two easy relaxations collapse

If an offset may depend on the starting value, wait until the orbit first
reaches a contracting state `m=Bq+r` and choose

```math
a_r=1,
\qquad c_r=(B-1)q+r.
```

Then `T(m)=m`, so all later steps are contracting.  A singleton expanding
branch can be chosen so that every expansion-only run is finite.  Hence the
`n`-dependent version has `D_K(n)=K-O_n(1)`.

If a fixed contracting multiplier need not be a unit modulo `B`, residue
collapse gives the same conclusion for one fixed map.  For example,

```math
T(4q+r)=
\begin{cases}
5q+2,&r=1,\\
2q,&r=0,2,3.
\end{cases}
```

An expansion-only run is finite because on residue `1`,

```math
T(x)+3=\frac54(x+3).
```

After the first contracting step the state is even, remains on contracting
residues, and strictly decreases to zero.  This construction uses
`gcd(2,4)>1`; it is excluded by the revised conjecture.

## Proved: no common rational affine center

A tempting design is to choose a rational `h` for which every branch becomes
homogeneous after translating by `h`:

```math
T(x)-h=\frac{a_r}{B}(x-h).
```

For the affine extension of residue `r`, this requires

```math
BQc_r=a_rrQ+(B-a_r)P
```

when `h=P/Q` is in lowest terms.  Reducing modulo `B` gives

```math
a_r(rQ-P)\equiv0\pmod B.
```

If `gcd(Q,B)>1`, a prime common to `Q` and `B` would also divide `P`, a
contradiction.  Hence `Q` is a unit modulo `B`, and then

```math
r\equiv PQ^{-1}\pmod B.
```

Only one residue can satisfy this.  Since the map contains all `B` residue
branches, no single rational center homogenizes the whole system.

The same calculation shows that a common center can cover at most one residue
within the contracting set or within the expanding set.  Any useful moving
center consequently needs unbounded memory; a fixed finite list of affine
centers cannot cover the full residue shift by the existing Baire-category
argument.

## Proved: the new contractors give no direct size advantage

For a contracting branch and a state `n=Bq+r`,

```math
T(n)=a_rq+c_r\ge q.
```

Pure division, `a_r=1,c_r=0`, is therefore the strongest possible one-step
Archimedean contraction in the allowed family.  The extra parameters can help
only by changing later residues or by introducing arithmetic factors.  They
cannot improve an argument that uses only upper bounds for orbit size.

## Remaining possible advantages

The generalized family still offers arithmetic mechanisms absent from pure
division:

1. contracting multipliers may introduce primes that interact with the
   expansion multipliers;
2. several multiplicatively independent branch products may permit an adelic
   obstruction along a whole fixed orbit; and
3. fixed offsets may produce a useful infinite-state potential even though a
   finite-state affine-center construction is impossible.

The endpoint progression shows the limitation of any local version of these
ideas.  For a fixed word, valuations away from the finitely many primes in
`A_N` remain freely prescribable.  A successful proof must correlate those
valuations across an unbounded sequence of endpoints belonging to one
ordinary starting value.

## Proved: an exact-cover base-3 family

The new multipliers permit an especially clean map that is unavailable with
pure division.  Define

```math
T(3q+r)=
\begin{cases}
4q+1,&r=0,\\
4q+3,&r=1,\\
2q,&r=2.
\end{cases}
```

The contracting set is `C={2}`.  All three multipliers are positive units
modulo `3`.  The three image progressions are

```math
1+4\mathbb N_0,
\qquad
3+4\mathbb N_0,
\qquad
2\mathbb N_0.
```

They partition `\mathbb N_0`, so `T` is a bijection.  Its inverse is explicit:

```math
T^{-1}(m)=
\begin{cases}
3(m/2)+2,&m\equiv0\pmod2,\\
3((m-1)/4),&m\equiv1\pmod4,\\
3((m-3)/4)+1,&m\equiv3\pmod4.
\end{cases}
```

Moreover,

```math
T(n)\text{ is even}
\quad\Longleftrightarrow\quad
n\bmod3=2.
```

Therefore the contraction count of a forward orbit is exactly, up to the
initial endpoint convention, the number of even states in the shifted orbit.

For a word of length `N` containing `D` contracting symbols, the lift formula
specializes to

```math
T^N(n+3^Nt)=T^N(n)+2^{2N-D}t.
```

Thus each ternary itinerary cylinder is carried affinely to a tail of a
binary congruence class.  The code lengths are `2,2,1`, and the Kraft identity

```math
2^{-2}+2^{-2}+2^{-1}=1
```

explains the exact covering.

The offsets were assigned so that neither expanding branch has a nonnegative
fixed point.  Indeed, `3q+r=4q+c_r` would require `q=r-c_r<0` for `r=0,1`.
The orbit

```math
0\longmapsto1\longmapsto3\longmapsto5\longmapsto2\longmapsto0
```

is a cycle containing two contracting steps.

## Why the exact-cover family is not yet a proof

Bijectivity and the prefix-code identity control finite cylinders and typical
counting measure, not every forward orbit.  A putative bad orbit is an
exceptional bi-infinite orbit of the permutation whose forward states are
even only `O(log K)` times.

On odd states the inverse map has asymptotic slope `3/4`; on even states it
has asymptotic slope `3/2`.  Consequently the universal parity question for
this map is another rational-base sparse-digit problem.  Finite words with
arbitrarily few even symbols remain realizable, and the exact endpoint
progression again leaves a moving odd core.  Neither Kraft equality nor
bijectivity supplies a fixed-start argument excluding an infinite exceptional
orbit.

This family is nevertheless a useful narrowed candidate: all branch products
are powers of `2`, the map and its inverse are explicit, and the target becomes
a parity-frequency statement for one permutation.  A proof would require a
new theorem saying that every ordinary orbit of this base-`3`/binary
conversion has superlogarithmically many even states.

## Proof-search conclusion

The following routes were checked and did not close the superlogarithmic
bound:

1. **Direct size comparison.**  A generalized contracting branch is never
   smaller than pure division on the same quotient, so no stronger universal
   gap estimate follows from Archimedean size alone.
2. **A common translated norm.**  The congruence calculation above proves
   that one rational center can homogenize at most one residue branch.
3. **Finite-state routing.**  Unit multipliers preserve the full `B`-adic
   shift.  The nonunit absorbing construction cannot be reproduced.
4. **A finite collection of multiplier-prime valuations.**  The exact
   endpoint progression leaves every valuation outside the primes in `A_N`
   locally free.  Along a fixed orbit the remaining endpoint core still
   moves.
5. **Real inverse contraction.**  When contracting symbols are sparse, the
   inverse products contract in the real absolute value, but the normalized
   endpoint remainder need not tend to zero.  Dropping it would repeat the
   invalid Archimedean interpretation of the `B`-adic sparse series.
6. **Exact-cover coding.**  The base-3 family turns the target into a clean
   parity statement, but the complete prefix code governs typical cylinders
   rather than all ordinary orbits.

No argument found in these routes proves `D_K(n)=omega(log K)` for a fixed
map.  The revised conjecture should therefore remain stated as open.
