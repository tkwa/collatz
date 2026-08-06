# A Two-Dimensional Difficulty Ladder for Twin Primes

## Purpose

This benchmark measures proved progress through twin primes and onward to
broader prime-pattern conjectures.  Through twin primes, it uses two lower-ladder
coordinates:

```math
x=(H,D).
```

- $H$ is the best unconditional upper bound for
  $H_1=\liminf_{n\to\infty}(p_{n+1}-p_n)$.
- $D$ is the strongest proved state on the
  [prime-distribution subladder](distribution_subladder.md).

The baseline is $(246,D_0)$.  Twin primes is any state with $H=2$; stronger
rungs above the target are recorded directly because $H$ and $D$ no longer
distinguish them.

The coordinate pair is retained as an underlying theorem state, not averaged.
The public score below selects implication-lattice points and joins alternative
routes with logical disjunctions when that makes progress substantially
smoother.

## Lower-ladder outcome coordinate

The following are useful landmarks for the unconditional coordinate.  They
are not asserted to require equal effort.

| Level | Unconditional theorem |
|---:|---|
| $O_0$ | $H_1\le246$, the current benchmark baseline. |
| $O_1$ | $H_1\le100$. |
| $O_2$ | $H_1\le50$. |
| $O_3$ | $H_1\le12$. |
| $O_4$ | $H_1\le6$. |
| $O_5$ | $H_1\le4$. |
| $O_6$ | $H_1=2$, the twin prime conjecture. |

Round-number intermediate bounds are calibration markers, not predictions
about the next theorem.  A proof of GEH, for example, can move directly from
$O_0$ to $O_4$ through its standard sieve consequence.

## Shared-scale public ladder

For $\vartheta\in(1/2,1)$, $\mathrm{EH}[\vartheta]$ and
$\mathrm{GEH}[\vartheta]$ have their standard meanings in the bounded-gap
framework; GEH uses the full convolution class.  Full EH or GEH means the
corresponding statement for every fixed $\vartheta\lt1$.

Every row above zero is open.  The word “or” denotes logical disjunction.

| Score | Rung |
|---:|---|
| **0** | **Current theorem:** $H_1\le246$. |
| 0.3 | **The Weakest open rung:** $H_1\le244$ **or** $\mathrm{EH}[1/2+\delta]$ for some fixed $\delta\gt0$. |
| **1** | $H_1\le200$ **or** $\mathrm{EH}[11/20]$. |
| **2** | $H_1\le100$ **or** $\mathrm{EH}[3/5]$. |
| **3** | $H_1\le50$ **or** $\mathrm{EH}[2/3]$. |
| 3.5 | $H_1\le12$ **or** $\mathrm{EH}[3/4]$. |
| **4** | $H_1\le6$ **or** $\mathrm{GEH}[3/4]$ **or** full EH. |
| 4.5 | $H_1\le4$ **or** full GEH. |
| **5** | **Twin primes:** $H_1=2$. |

The lower alternatives are nested: stronger distribution exponents imply
weaker ones, GEH implies EH at the same exponent, and smaller gap bounds imply
larger ones.  Full EH implies $\mathrm{EH}[3/4]$; full GEH implies
$\mathrm{GEH}[3/4]$; and twin primes imply $H_1\le4$.  No distribution rung is
claimed to imply twin primes.

## Implication closure and shortcuts

A benchmark state always includes routine consequences.  Formally, let
$\mathrm{cl}(x)$ be the strongest pair obtained from $x$ using already
proved reductions.  Scores are assigned to $\mathrm{cl}(x)$.

This has three important effects:

1. GEH receives credit for the resulting $H_1\le6$ theorem without counting
   that corollary twice.
2. A direct proof of $H_1\le6$ need not receive GEH credit.
3. A parity-breaking theorem can jump from $H_1\le246$ to $H_1=2$ without
   traversing the distribution subladder.

The third possibility is why GEH is not declared a prerequisite.

## What the lower-ladder coordinates omit

The proof used to reach a state may contain information not visible in
$(H,D)$.  In particular, a proof of $H_1\le6$ using a genuinely
parity-breaking correlation estimate may be more suggestive of twin primes
than a proof obtained from GEH, even though the formal coordinates can rank
the latter higher in distribution strength.

This loss of information is the cost of the lower-ladder display.  The
benchmark responds conservatively below twin primes: method-transfer claims
are discussed in
[`parity_and_alternative_routes.md`](parity_and_alternative_routes.md), but
formal credit waits for a proved movement in $H$ or $D$.  Above twin primes,
the displayed quantitative and breadth statements are scored directly.

## Stronger rungs on the same scale

Let $\pi_2(X)$ count primes $p\le X$ for which $p+2$ is prime.  De Polignac
asserts that every positive even number occurs infinitely often as a
consecutive prime gap.  Dickson and Hardy--Littlewood concern admissible
affine-linear families; Schinzel H and Bateman--Horn extend them to admissible
families of irreducible integer polynomials.

| Score | Rung |
|---:|---|
| **6** | $\pi_2(X)\gg X/(\log X)^2$ for all sufficiently large $X$ **or** de Polignac's conjecture. |
| **7** | The Hardy--Littlewood asymptotic for twin primes **or** Dickson's conjecture for every fixed admissible affine-linear family. |
| **8** | The Hardy--Littlewood asymptotic for every fixed admissible affine-linear family **or** Schinzel's hypothesis H. |
| **9** | **Bateman--Horn** for every fixed admissible finite family of distinct irreducible integer polynomials with positive leading coefficients. |

Each alternative in a row implies one in the row below it, and Bateman--Horn
implies both alternatives in the preceding row.  Bateman--Horn is centered at
`9`, with a subjective range of roughly
`8--10.5`.  It is a master conjecture but is narrower than general Vojta or
Schanuel, so the ladder is not stretched merely to occupy score `10`.

The implication from Dickson to de Polignac includes consecutiveness.  Fix an
even $d$ and choose distinct primes $q_j\gt d$ for
$1\le j\le d-1$.  Put $M=2\prod_jq_j$ and use the Chinese remainder theorem
to choose odd $a$ with $a\equiv-j\pmod{q_j}$.  The forms $Mt+a$ and
$Mt+a+d$ are admissible, while each interior value $Mt+a+j$ is divisible by
$q_j$.  Dickson therefore makes the endpoints prime infinitely often and the
interior values composite for large $t$, giving consecutive gaps of size $d$.

## Effort and skip annotation

The prime-pattern elicitation area $A_{PP}$ is the dependency closure of prime
patterns and prime values of integer polynomials.  It includes the relevant sieve,
distribution, correlation, local-obstruction, and algebraic inputs, but not
generic analytic number theory or algebraic geometry without a plausible
dependency.

The table applies the root README's future-effort and skip conventions.
Central logarithms are uncertain by at least roughly half a decade, and skip
probabilities by at least `15--20` percentage points.  The entry on integer
row $n$ concerns the transition from $n$ to $n+1$.

| Score | Expected $\log_{10}$ future expert-years | $P(n\text{-skip})$ | Main skip mechanism |
|---:|---:|---:|---|
| 0 | -- | -- | -- |
| 0.3 | 2.75 | -- | -- |
| 1 | 3.30 | 35% | The next gap or EH theorem may pass a round-number landmark. |
| 2 | 3.64 | 35% | One estimate may improve both the exponent and optimized gap. |
| 3 | 3.87 | 40% | A convolution estimate may prove GEH and EH together while improving the gap. |
| 3.5 | 4.05 | -- | -- |
| 4 | 4.20 | 45% | A parity-breaking method may pass the intermediate gap rung and solve twin primes. |
| 4.5 | 4.32 | -- | -- |
| 5 | 4.45 | 40% | A first twin-prime proof may already be quantitative, or a general route may reach de Polignac. |
| 6 | 4.68 | 35% | A prime-tuples framework may prove both qualitative and quantitative cases. |
| 7 | 4.94 | 35% | An affine-linear framework may establish both asymptotic and qualitative forms. |
| 8 | 5.08 | 40% | A polynomial-prime framework may pass Schinzel H on the way to Bateman--Horn. |
| 9 | 5.23 | n/a | The ladder has no score-`10` contour. |

These are elicited estimates rather than values inferred from the assigned
scores.  The estimated probability that the first theorem reaching score `1`
overshoots the first positive rung is `30%`.  Twin primes and Bateman--Horn
retain their displayed positions because the central future-effort sequence
remains roughly geometric; neither position normalizes an endpoint or creates
an intermediate anchor.

## Status

All numerical effort ranges and scores are provisional judgments.  The
theorem statements and implication directions should be checked separately
from those judgments.  No row asserts that the corresponding open theorem is
true or that its score is literature consensus.
