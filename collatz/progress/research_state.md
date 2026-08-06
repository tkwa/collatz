# Research state

## Baseline map

The baseline diagnostic map is

```math
T(3q)=q,\qquad T(3q+1)=28q+2,\qquad T(3q+2)=q.
```

Write

```math
D_K(n)=\#\lbrace 0\le j\lt K:T^j(n)\not\equiv1\pmod 3\rbrace.
```

The target is

```math
D_K(n)=\omega(\log K)
```

for every fixed $n$.

The target is existential in the map.  Candidate families with simpler
arithmetic are compared below, and any admissible map may serve as a witness.

## Status labels

- **Proved:** complete argument currently survives direct checking.
- **Candidate:** a precisely stated claim whose proof is incomplete.
- **Refuted:** an exact counterexample or logical obstruction is known.

## Proved: exact expanding-run length

Put $X(n)=25n-22$. On the expanding branch,

```math
X(T(n))=\frac{28}{3}X(n).
```

Moreover, $n$ is on the expanding branch exactly when $3\mid X(n)$.
Consequently, the number $L(n)$ of consecutive expanding steps beginning at
$n\equiv1\pmod3$ is

```math
L(n)=v_3(X(n))=v_3(25n-22).
```

## Proved: logarithmic lower bound

For every $m\ge0$,

```math
T(m)+1\le \frac{28}{3}(m+1).
```

Hence, for $n_j=T^j(n)$,

```math
n_j+1\le \left(\frac{28}{3}\right)^j(n+1).
```

If an expanding run starts at time $j$, its length satisfies

```math
\begin{aligned}
L_j
&=v_3(25n_j-22)\\
&\le \log_3(25(n_j+1))\\
&\le C_n+j\log_3(28/3).
\end{aligned}
```

Let $\tau_i$ be the time of the $i$-th division-branch step. Between
$\tau_i$ and $\tau_{i+1}$ there is at most one expanding run, so

```math
\tau_{i+1}\le (\log_3 28)\tau_i+C_n'.
```

Iteration and inversion give

```math
D_K(n)\ge
\frac{\log K}{\log(\log_3 28)}-O_n(1).
```

Thus $D_K(n)=\Omega_n(\log K)$ unconditionally.

For the ceiling-division family recorded below, the coefficient in this
logarithmic lower bound can be made arbitrarily large as the base varies.
This remains a family of fixed-constant bounds, not a superlogarithmic bound
for one fixed map, so it cannot prove the target by choosing a large base.

## Proved: exact block transition

Let $n_i$ begin an expanding run and write

```math
25n_i-22=3^{L_i}u_i,\qquad 3\nmid u_i.
```

After the run,

```math
m_i=\frac{28^{L_i}u_i+22}{25}.
```

Suppose $s_i\ge1$ division steps follow before the next expanding run at
$n_{i+1}$. Write

```math
m_i=3^{s_i}n_{i+1}+d_i,
```

where the first $s_i$ base-three digits of $m_i$, and hence every base-three
digit of $d_i$, lie in $\lbrace0,2\rbrace$. Then

```math
3^{s_i}(25n_{i+1}-22)
=28^{L_i}u_i-25d_i-22(3^{s_i}-1),
```

and therefore

```math
L_{i+1}+s_i
=v_3\!\left(28^{L_i}u_i-25d_i-22(3^{s_i}-1)\right).
```

## Candidate proof mechanisms

1. **Subexponential recharge.** Prove that expanding-run lengths grow
   subexponentially in the number of completed division blocks. This is
   equivalent to the qualitative improvement needed for
   $D_K(n)=\omega(\log K)$.
2. **Restricted-digit valuation bound.** Use the fact that $d_i$ has only
   ternary digits $0$ and $2$ to improve the unrestricted height bound on the
   exact transition.
3. **Iterated LTE.** Exploit

   ```math
   v_3(28^L-1)=3+v_3(L)
   ```

   after identifying a congruence that removes or controls the unit $u_i$.

No candidate mechanism is currently a proof.

The structural conclusions that still govern the search are:

1. the full residue coding is not a finite-state transform of ordinary
   base-$B$ digits, and neither is its direct binary expansion/division
   projection;
2. prime-power expansion multipliers reset only the multiplier-prime part of
   a long-run endpoint, leaving a moving core with unrestricted prime support;
3. a fixed finite itinerary leaves an arithmetic progression of possible
   endpoints, so outside-prime valuations remain locally prescribable; and
4. for the ceiling family, the missing arithmetic input can be phrased as a
   growing-rank staircase valuation bound with subexponential rank loss.

The standalone
[moving-endpoint-core obstruction](../blockers/moving_endpoint_core_obstruction.md)
is the canonical macro-chain derivation and precise fixed-start interface.
None of these structural conclusions proves or refutes the superlogarithmic
target.

## Proved: failure has positive-density proportional gaps

For every candidate in this folder, an elementary affine upper recurrence for
the division times implies the following: failure of the target forces a
positive upper density of proportional gaps.  Those gaps are piecewise
syndetic, so one fixed spacing bound supports arbitrarily long chains along the
same bad orbit.  Sections 2 and 3 of the
[moving-endpoint-core obstruction](../blockers/moving_endpoint_core_obstruction.md)
give the canonical proof and explain why the endpoint units retain essential
global information about the fixed starting integer.

## Proved: every finite residue itinerary is realizable

For any finite word

```math
(r_0,\ldots,r_{K-1})\in\{0,1,2\}^K,
```

there is exactly one residue class modulo $3^K$ whose first $K$ iterates
have these residues modulo three.

To see this inductively, suppose the first $K$ residues determine a class
modulo $3^K$. Its three lifts modulo $3^{K+1}$ have images after $K$ steps
in all three residue classes. On a division branch this follows from the
inverse $n=3q+r$; on the expanding branch it follows because $28$ is a unit
modulo every power of three. Exactly one lift therefore realizes any chosen
next residue.

Equivalently, the map's residue-itinerary coding on $\mathbb Z_3$ is onto.

### Consequence: local recharge bounds are refuted

For arbitrary positive integers $L$ and $L'$, the finite word

```math
1^L\,0\,1^{L'}\,0
```

is realized by a nonnegative integer. Thus a block of $L$ expanding steps,
one division step, and then $L'$ expanding steps can occur with $L'$
arbitrarily large relative to $L$.

In particular, no inequality of the form

```math
L_{i+1}\le F(L_i,s_i)
```

with a universal finite-valued function $F$ can hold for all blocks of all
integer orbits.  This rules out every universal recharge route of this form,
including

```math
L_{i+1}\le C_0+C_1s_i+C_2v_3(L_i).
```

The obstruction is finite rather than asymptotic: the realizing starting
integer changes with the prescribed word. A proof of the target must use the
global fact that one fixed nonnegative integer has an eventually-zero
ordinary ternary expansion, whereas the compatible nested residue classes
for an arbitrary infinite itinerary usually converge to a non-rational
three-adic integer.

## Candidate reformulation after the obstruction

The target can be recast as follows. Let $\mathcal I(n)$ be the infinite
residue itinerary of a fixed ordinary integer $n$. Prove that no such
itinerary can have division symbols at exponentially growing positions.
Finite-word exclusion cannot accomplish this, because every finite prefix is
admissible. The proof must instead distinguish ordinary nonnegative integers
inside $\mathbb Z_3$ by a genuinely global Diophantine, transcendence, or
automaticity argument.

## Proved: exact global three-adic series

Let $\tau_m$ be the zero-based time of the $m$-th division step, and let
$b_m$ be $44$ or $94$ according as that step has residue $0$ or $2$. In the
centered coordinate $x_j=25T^j(n)-22$, every step has the form

```math
x_{j+1}=\frac{a_jx_j-b_j}{3},
```

where $(a_j,b_j)=(28,0)$ on the expanding branch and $(a_j,b_j)$ is
$(1,44)$ or $(1,94)$ on a division branch. Iterating the inverse relation
gives, for every $N$,

```math
x_0=
\frac{3^N x_N}{\prod_{0\le j\lt N}a_j}
+\sum_{0\le j\lt N}
\frac{b_j3^j}{\prod_{0\le i\le j}a_i}.
```

The first term tends to zero in $\mathbb Q_3$, since $x_N$ is an integer and
every denominator is a three-adic unit. Before the $m$-th division there
have been exactly $\tau_m-m+1$ expanding steps. Therefore

```math
x_0=
\sum_{m\ge1}
b_m\frac{3^{\tau_m}}{28^{\tau_m-m+1}}
=
\sum_{m\ge1}
b_m28^{m-1}\left(\frac3{28}\right)^{\tau_m}
\qquad\text{in }\mathbb Q_3.
```

Moreover,

```math
D_K(n)=\omega(\log K)
\quad\Longleftrightarrow\quad
\frac{\log\tau_m}{m}\longrightarrow0.
```

The implication in each direction is obtained by evaluating at division
times and, between consecutive division times, using that $D_K(n)$ is
constant. Thus the target is a global rationality-versus-lacunarity
statement for this structured series, not a finite-word restriction.

## Proved: one-expanding-residue normal form

The same series normal form holds for any map with base $B$, one expanding
residue $e$, and expanding parameters $a,c$.
Put

```math
h=ae-Bc,
\qquad
X(n)=(a-B)n-h.
```

Then

```math
X(T(n))=
\begin{cases}
\dfrac aB X(n),&n\equiv e\pmod B,\\[2mm]
\dfrac{X(n)-b_r}{B},&n\equiv r\ne e\pmod B,
\end{cases}
```

where

```math
b_r=(a-B)r+(B-1)h.
```

Consequently, if $\tau_m$ are the division times and $r_m$ their residues,

```math
X(n)=\sum_{m\ge1}
b_{r_m}a^{m-1}\left(\frac Ba\right)^{\tau_m}
\qquad\text{in }\mathbb Q_B
```

when $B$ is prime; componentwise the same identity holds over $\mathbb Q_p$
for every prime $p\mid B$ in the composite-base case.

The most rigid subfamily is $B=2$, $e=1$. There is only one division
residue, so the coefficient alphabet collapses to the singleton
$b_0=h=a-2c$:

```math
X(n)=h\sum_{m\ge1}
a^{m-1}\left(\frac2a\right)^{\tau_m}
\qquad\text{in }\mathbb Q_2.
```

Taking $c=(a\mp1)/2$ makes $h=\pm1$. This is a cleaner candidate family
than the baseline $28/3$ map for any theorem that is sensitive to coefficient
complexity. It is not yet a proof: the universal superlogarithmic sparsity
claim for this singleton-coefficient series still has to be established.

## Refuted as a complete method: height of partial sums alone

Truncating the singleton-coefficient series after $m$ division symbols gives
a rational with denominator at most $a^{\tau_m}$. The next omitted term
makes the two-adic error divisible by $2^{\tau_{m+1}}$. Applying only the
ordinary height lower bound to the nonzero numerator yields at best

```math
\tau_{m+1}\log2\le \tau_m\log a+O_n(m),
```

which merely recovers an exponential recurrence and hence an
$\Omega(\log K)$ division bound. Any successful series argument needs a
genuinely sparse-sum or rational-base theorem, not just the product formula
or the naive height of a partial sum.

## Proved: rigidity of the common-center reduction

The common-center trick cannot be extended to two distinct expanding residues.
Indeed, suppose the affine extensions of the expanding branches at residues
$r_1\ne r_2$ have the same rational fixed point $p=u/v$ in lowest terms. For
each such residue, integrality of

```math
c_r=\frac{(B-a_r)p+a_rr}{B}
```

implies, after multiplication by $v$ and reduction modulo $B$,

```math
r v\equiv u\pmod B,
```

because $\gcd(a_r,B)=1$. Applying this to $r_1$ and $r_2$ gives
$B\mid v(r_1-r_2)$. On the other hand, $rv\equiv u\pmod B$ implies that
$\gcd(B,v)$ divides $u$; since $u/v$ is reduced, $\gcd(B,v)=1$. Hence $v$ is
invertible modulo $B$, and the two congruences force $r_1\equiv r_2\pmod B$, a
contradiction.

Thus a homogeneous centered recurrence with one fixed expansion multiplier is
naturally a one-expanding-residue construction. Within that class, $B=2$ is
the unique base with only one division residue and hence a singleton division
coefficient alphabet. This does not prove that $B=2$ is optimal overall, but it
explains why it is the cleanest target for a sparse-series theorem.

## Candidate family: rational-base branches

For coprime integers $p\gt B$, the rational-base operator

```math
R_{p/B}(n)=\left\lceil\frac{pn}{B}\right\rceil
```

has quotient-remainder form

```math
R_{p/B}(Bq+r)=pq+\left\lceil\frac{pr}{B}\right\rceil.
```

Consequently one may use this branch on any chosen nonzero residue set $E$
and use the required division branch elsewhere. This produces a broad
admissible family and directly connects expansion runs to rational-base digit
words. It is a serious alternative to the centered $28/3$ map. Existing work,
however, treats even the much weaker assertion that every such rational-base
word eventually leaves a prescribed proper residue set as a difficult open
problem in general. No proved rational-base result found so far yields the
required superlogarithmic count.

## Candidate family: balanced remainders

For every odd $B\ge3$, take

```math
e=\frac{B-1}{2},\qquad a=B+2,\qquad c=\frac{B+1}{2}.
```

Then $h=ae-Bc=-1$, and the centered coordinate is particularly simple:

```math
X(n)=2n+1.
```

In this coordinate the map is

```math
X(T(n))=
\begin{cases}
\dfrac{B+2}{B}X(n),&B\mid X(n),\\[2mm]
\dfrac{X(n)-d(X(n))}{B},&B\nmid X(n),
\end{cases}
```

where $d(X)$ is the unique nonzero balanced even representative of $X$
modulo $B$ in

```math
\{-(B-1),-(B-3),\ldots,B-3,B-1\}.
```

For $B=3$ this is the admissible map

```math
T(3q)=q,\qquad T(3q+1)=5q+2,\qquad T(3q+2)=q,
```

and the two division coefficients are $-2$ and $2$.  This family replaces
floor division by balanced-remainder division on the positive odd coordinate
$X$; its expansion ratio $(B+2)/B$ can be made arbitrarily close to one.
These features make it a useful alternative to both the baseline map and the
singleton-coefficient $B=2$ family.  No superlogarithmic bound has yet been
proved for it.

## Candidate family: ceiling division with multiplier $B+1$

For any $B\ge2$, take one expanding residue

```math
e=B-1,\qquad a=B+1,\qquad c=B.
```

Again $h=-1$, but now $X(n)=n+1$.  Directly from the quotient-remainder
definition,

```math
X(T(n))=
\begin{cases}
\dfrac{B+1}{B}X(n),&B\mid X(n),\\[2mm]
\left\lceil\dfrac{X(n)}B\right\rceil,&B\nmid X(n).
\end{cases}
```

Thus the division branches are ordinary ceiling division and the sole
expanding branch has the smallest possible multiplier above $B$.  This gives
another structurally simple family with expansion ratio tending to one as
$B$ grows.  Its ordinary-base interpretation may be more useful than the
common-center sparse series, but no argument currently excludes exponentially
sparse ceiling-division times.
