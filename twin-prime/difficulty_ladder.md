# A Two-Dimensional Difficulty Ladder for Twin Primes

## Purpose

This benchmark measures proved progress through twin primes and onward to
broader prime-pattern conjectures.  Through score `5`, it uses two lower-ladder
coordinates:

```math
x=(H,D).
```

- $H$ is the best unconditional upper bound for
  $H_1=\liminf_{n\to\infty}(p_{n+1}-p_n)$.
- $D$ is the strongest proved state on the
  [prime-distribution subladder](distribution_subladder.md).

The baseline is $(246,D_0)$.  Twin primes is any state with $H=2$; stronger
rungs above score `5` are recorded directly because $H$ and $D$ no longer
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

Each alternative at score `7` implies one at score `6`; each alternative at
`8` implies one at score `7`; and Bateman--Horn implies both alternatives at
`8`.  Bateman--Horn is centered at `9`, with a subjective range of roughly
`8--10.5`.  It is a master conjecture but is narrower than general Vojta or
Schanuel, so the ladder is not stretched merely to occupy score `10`.

The implication from Dickson to de Polignac includes consecutiveness.  Fix an
even $d$ and choose distinct primes $q_j\gt d$ for
$1\le j\le d-1$.  Put $M=2\prod_jq_j$ and use the Chinese remainder theorem
to choose odd $a$ with $a\equiv-j\pmod{q_j}$.  The forms $Mt+a$ and
$Mt+a+d$ are admissible, while each interior value $Mt+a+j$ is divisible by
$q_j$.  Dickson therefore makes the endpoints prime infinitely often and the
interior values composite for large $t$, giving consecutive gaps of size $d$.

## Area and effort annotation

The predeclared area $A_{PP}$ is the dependency closure of prime patterns and
prime values of integer polynomials.  It includes the relevant sieve,
distribution, correlation, local-obstruction, and algebraic inputs, but not
generic analytic number theory or algebraic geometry without a plausible
dependency.  Direct work receives weight one and broader eligible work weight
one half.

The central 2026 stock is provisionally $B_{PP}=8{,}000$
directed-equivalent expert-years, with an 80% range of `2,000--30,000` and a
sensitivity case near `12,000`.  This is an elicitation prior, not a measured
labor total.  The following ratios are calibration targets used to place
statements; they are not inferred from the scores after the fact.  The final
column reports future effort from the July 2026 baseline, the clock used by
the skip rule.

| Score | $C_{PP}(s)/B_{PP}$ | $F_{PP}(s)/B_{PP}$ | $\log_{10}F_{PP}(s)$ at the central stock |
|---:|---:|---:|---:|
| 0 | 1.00 | 0 | -- |
| 0.3 | 1.07 | 0.07 | 2.75 |
| 1 | 1.25 | 0.25 | 3.30 |
| 2 | 1.55 | 0.55 | 3.64 |
| 3 | 1.93 | 0.93 | 3.87 |
| 3.5 | 2.41 | 1.41 | 4.05 |
| 4 | 3.00 | 2.00 | 4.20 |
| 4.5 | 3.60 | 2.60 | 4.32 |
| **5** | **4.50** | **3.50** | **4.45** |
| 6 | 7.00 | 6.00 | 4.68 |
| 7 | 12.0 | 11.0 | 4.94 |
| 8 | 16.0 | 15.0 | 5.08 |
| 9 | 22.0 | 21.0 | 5.23 |

Thus twin primes at score `5` is centrally about `2.2` doublings over the
predeclared 2026 stock, within the shared two-to-four-doubling anchor.  It is
not a normalized endpoint.

## Integer-skip audit

For integers $n\ge1$, the following provisional judgments use
$F_{PP}(n+1)\lt1.1F_{PP}(n)$.  Each probability is uncertain by at least
`15--20` percentage points.  Separately, the estimated probability that the
first theorem reaching score `1` overshoots the score-`0.3` rung is `30%`;
that is a baseline diagnostic, not a `0`-skip.

| Boundary | Estimated skip probability | Principal reason |
|---:|---:|---|
| 1 to 2 | 35% | The next gap or EH theorem may pass a round-number landmark. |
| 2 to 3 | 35% | One estimate may improve both the exponent and optimized gap. |
| 3 to 4 | 40% | A convolution estimate may prove GEH and EH together while improving the gap. |
| 4 to 5 | 45% | A parity-breaking method may pass the `4.5` rung and solve twin primes. |
| 5 to 6 | 40% | A first twin-prime proof may already be quantitative, or a general route may reach de Polignac. |
| 6 to 7 | 35% | A prime-tuples framework may prove both qualitative and quantitative cases. |
| 7 to 8 | 35% | An affine-linear framework may establish both asymptotic and qualitative forms. |
| 8 to 9 | 40% | A polynomial-prime framework may pass Schinzel H on the way to Bateman--Horn. |

No central value exceeds `50%`; if elicitation pushes one above it, the
affected rungs should be merged or replaced.

## Status

All numerical effort ranges and scores are provisional judgments.  The
theorem statements and implication directions should be checked separately
from those judgments.  No row asserts that the corresponding open theorem is
true or that its score is literature consensus.
