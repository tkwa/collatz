# A uniform-rank valuation target

## Status

The reductions and sufficiency implications in this note are **proved**.  The
uniform-rank valuation estimates stated below are **open candidates**.  They
are not consequences of the currently checked sparse-polynomial or
$S$-unit theorems.

The point of the note is to specify the dependence on the number of terms
that a successful theorem must have.  A polynomial bound is more than enough,
but even a subexponential loss in the number of division steps would prove
the target.

## Exact staircase polynomial

Work with the ceiling-division map of base $B$, and for this note assume that
$B$ is prime.  Put

$$
a=B+1,
\qquad
x_0=n+1.
$$

Let $\tau_i$ be the one-based sequence of zero-based division times and put

$$
\lambda_i=\tau_i-i+1.
$$

Thus $\lambda_i$ is the number of expansion steps before the $i$-th division
and is nondecreasing.  If $d_i\in\{1,\ldots,B-1\}$ is the correction digit at
that division, define

$$
G_m(Y)
=x_0+\sum_{i=1}^m d_iB^{i-1}Y^{\lambda_i}.
$$

The global identity in
[`ceiling_gap_certificate.md`](ceiling_gap_certificate.md) is equivalently

$$
a^{\lambda_m}G_m(B/a)=B^{\tau_{m+1}}u_m,
\qquad B\nmid u_m.
$$

Since $a$ is a $B$-adic unit, this gives the exact valuation formula

$$
\boxed{
v_B\!\left(G_m(B/a)\right)=\tau_{m+1}.
}
$$

The special feature is the staircase relation

$$
v_B\!\left(d_iB^{i-1}(B/a)^{\lambda_i}\right)
=i-1+\lambda_i
=\tau_i.
$$

The exponent of $Y$ and the valuation of its coefficient are not independent.
Their sum is exactly the time at which the term enters the orbit expansion.

## Candidate A: excess-valuation bound

Fix $B$ and $x_0$.  A sufficient estimate is

$$
v_B\!\left(G_m(B/a)\right)-\tau_m
\le C_m\bigl(1+\log(2+\tau_m)\bigr)^A,
$$

where $A$ is fixed and

$$
\boxed{\log C_m=o(m).}
$$

The estimate only needs to hold for the digit and exponent sequences arising
from the fixed orbit of $x_0$.  A stronger and cleaner theorem would prove it
for every choice of digits $1\le d_i<B$ and nondecreasing nonnegative
integers $\lambda_i$, with
$\tau_i=\lambda_i+i-1$, whenever the successive prefixes have the required
staircase valuations.

The left side is the next expansion-run length, up to the harmless convention
of whether the intervening division step is included.  Thus Candidate A says
that the valuation gained when the last term cancels the current leading
$B$-adic unit is subexponential in the number of preceding terms, with only
polylogarithmic dependence on their largest exponent.

## Candidate B: total-valuation bound

A stronger sufficient estimate is

$$
v_B\!\left(G_m(B/a)\right)
\le C_m\bigl(1+\log(2+\tau_m)\bigr)^A,
\qquad
\log C_m=o(m).
$$

Candidate B is not needed.  Candidate A is the more natural target because
$\tau_m$ is already the valuation of the newest summand.  Any general theorem
must allow this baseline valuation.

## Proved: Candidate A implies the target

The elementary size estimate supplies constants $Q>1$ and $C$ such that

$$
\tau_m\le CQ^m.
$$

Consequently

$$
1+\log(2+\tau_m)=O(m).
$$

Candidate A and the exact valuation formula therefore give

$$
\tau_{m+1}-\tau_m
\le \exp(o(m)).
$$

Summing the increments yields

$$
\tau_m
\le \tau_1+\sum_{j<m}\exp(o(j))
=\exp(o(m)).
$$

Hence

$$
\frac{\log\tau_m}{m}\longrightarrow0.
$$

By the division-time equivalence, this is exactly

$$
D_K(n)=\omega(\log K).
$$

The same proof works if the polylogarithm is replaced by any factor whose
logarithm is $o(m)$ after using the elementary bound $\log\tau_m=O(m)$.

## Why the rank dependence is decisive

Suppose instead that a theorem gave the same estimate with $C_m=C^m$ for a
fixed $C>1$.  It would imply only

$$
\log\tau_m=O(m),
$$

which is the already known logarithmic division bound.  A bound such as
$C_m=m^{cm}$ is even further from the target.  Thus it is not enough for a
theorem to be effective for each fixed number of terms: the logarithm of its
rank-dependent constant must be $o(m)$.

This also explains the infinitesimal-rate obstruction.  A hypothetical bad
orbit may have

$$
\limsup_{m\to\infty}\frac{\log\tau_m}{m}=c
$$

for an arbitrarily small $c>0$.  No fixed exponential loss in $m$ can be
absorbed by first choosing a map with a sufficiently favorable but fixed
logarithmic constant.

## Why generic sparse-polynomial bounds do not apply

Clearing denominators gives

$$
a^{\lambda_m}G_m(B/a)
=x_0a^{\lambda_m}
+\sum_{i=1}^m
d_iB^{\lambda_i+i-1}a^{\lambda_m-\lambda_i}.
$$

As an ordinary sparse polynomial evaluated at $a$, its coefficient height is
already at least $B^{\tau_m}$.  A theorem depending linearly on the logarithm
of that height is therefore allowed an $O(\tau_m)$ error and recovers only the
elementary affine recurrence.

The change to $G_m$ lowers the visible coefficient height to $B^{m-1}$, but it
introduces the fixed rational evaluation point $B/a$ and a growing number of
terms.  Existing fixed-term $p$-adic root-separation and $S$-unit estimates do
not provide a constant $C_m$ with $\log C_m=o(m)$.  In particular, the
trinomial algorithms and separation estimates of Rojas and Zhu do not cover
growing $m$; their four-term examples also show that unrestricted sparse
polynomials can have root-separation behavior with linear degree dependence.
The staircase coefficient-exponent relation above is additional structure
that those results do not use.

## Local freedom does not refute the candidate

For every finite staircase pattern there is some starting integer realizing
it.  The endpoint arithmetic-progression theorem therefore rules out an
estimate uniform in the starting value with no dependence on $x_0$.
Candidate A fixes $x_0$ before $m$ tends to infinity.  This fixed-start
dependence is essential: it is the only part of the statement that is not
visible in one finite itinerary.

## A narrower first target

Before attempting Candidate A in full, it would already be useful to prove a
subexponential-rank bound under the additional hypothesis that the large
valuation jumps occur in a bounded-spacing chain.  Hypothetical failure
supplies exactly such chains at arbitrarily large ranks.  The macro-chain
identities show that each link then has bounded local complexity, while the
single polynomial $G_m$ retains the common fixed start.

This is the most precise current interface between the dynamics and a future
valuation theorem:

1. the dynamics supplies staircase exponents, bounded digits, and a fixed
   constant term;
2. failure supplies positive-density, bounded-spacing large jumps; and
3. the missing arithmetic input is a valuation estimate whose loss across
   an unbounded chain is subexponential in its length.

## Checked nearby literature

- J. M. Rojas and Y. Zhu, [“A complexity chasm for solving univariate sparse
  polynomial equations over $p$-adic fields”](https://arxiv.org/abs/2003.00314),
  proves polynomial-time root analysis for trinomials over fixed $p$-adic
  fields and exhibits a four-term root-separation obstruction.  It does not
  give a growing-rank staircase valuation bound.
- M. Avendaño, A. Ibrahim, J. M. Rojas, and K. Rusek, [“Faster $p$-adic
  feasibility for certain multivariate sparse polynomials”](https://doi.org/10.1016/j.jsc.2011.09.007),
  concerns feasibility and root detection for fixed sparse formats, not the
  required uniform dependence on a growing number of terms.

No checked theorem currently supplies Candidate A, even for $B=2$ and
$d_i=1$.
