# A Two-Dimensional Difficulty Ladder for Twin Primes

## Purpose

This benchmark measures proved progress toward the twin prime conjecture while
allowing very different proof routes to jump between milestones.  It uses two
formal coordinates:

```math
x=(H,D).
```

- $H$ is the best unconditional upper bound for
  $H_1=\liminf_{n\to\infty}(p_{n+1}-p_n)$.
- $D$ is the strongest proved state on the
  [prime-distribution subladder](distribution_subladder.md).

The baseline is $(246,D_0)$.  The target is any state with $H=2$.

The coordinate pair is deliberately not reduced to a weighted average.  A
score is assigned from the human-equivalent replacement work represented by
the complete state, after applying every known implication.

## Outcome coordinate

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

## Target-normalized score

Let $W(H,D)$ be the estimated target-relevant human-equivalent work needed to
reproduce a proof portfolio establishing at least state $(H,D)$ from the
baseline.  Use the cheapest credible route and do not count abandoned or
unrelated work.  The intended score is

```math
S(H,D)=\log\frac{W(H,D)}{W(246,D_0)},
```

with the baseline calibrated to `0` and twin primes to `10`.  Consequently,

```math
W(H,D)\approx W(246,D_0)e^{S(H,D)}.
```

This endpoint normalization asserts an effective work ratio of about
$e^{10}\approx22{,}000$.  The ratio should be revisited rather than hidden if
future elicitation makes it implausible.

## Provisional calibration contours

The following table is a first set of contour anchors.  Ranges are used
because no consensus estimate of human-equivalent effort exists.

| Closed state | Provisional target score | Work represented relative to baseline | Interpretation |
|---|---:|---:|---|
| $(246,D_0)$ | **0** | $1$ | Current rigorous state. |
| $(100,D_0)$ | **1--2** | $3\text{--}7$ | A material unconditional improvement without a new general distribution theorem. |
| $(50,D_0)$ | **2.5--4** | $12\text{--}55$ | Roughly an order-of-magnitude narrowing of the bounded-gap interval. |
| First full $\mathrm{GEH}[1/2+\delta]$, with its best unconditional consequence | **4--5.5** | $55\text{--}245$ | The full convolution class crosses the classical one-half barrier. |
| Full EH and $H_1\le12$ | **5.5--7** | $245\text{--}1{,}097$ | Near-maximal distribution for primes, but not generalized convolutions or parity breaking. |
| Full GEH and $H_1\le6$ | **7.5--8.5** | $1{,}808\text{--}4{,}915$ | The standard distribution route is essentially exhausted; the specific-pair obstruction remains. |
| $H_1\le4$ | **8.5--9.5** | $4{,}915\text{--}13{,}360$ | A new idea has gone below the GEH-based three-point barrier. |
| $H_1=2$ | **10** | $22{,}026$ | Twin primes. |

The full-EH and full-GEH rows use the optimized conditional gap consequences
recorded in the Polymath bounded-gap work.  Once the hypothesis is proved,
those consequences become unconditional and cost no extra score.

These contours should eventually be fitted by structured expert elicitation:
estimate conditional transition costs, impose monotonicity only where a true
implication exists, and report sensitivity to alternative proof-route priors.

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

## What the two coordinates omit

The proof used to reach a state may contain information not visible in
$(H,D)$.  In particular, a proof of $H_1\le6$ using a genuinely
parity-breaking correlation estimate may be more suggestive of twin primes
than a proof obtained from GEH, even though the formal coordinates can rank
the latter higher in distribution strength.

This loss of information is the cost of restricting the benchmark to two
dimensions.  The benchmark responds conservatively: method-transfer claims
are discussed in
[`parity_and_alternative_routes.md`](parity_and_alternative_routes.md), but
formal credit waits for a proved movement in $H$ or $D$.

## Integer-boundary skipping

Let $T_i$ be the cumulative future human-equivalent effort until the first
state with score at least $i$.  Boundary $i$ is skipped when

```math
T_{i+1}\lt1.05T_i.
```

Skip probabilities should be estimated by simulating research paths through
the two-dimensional transition graph.  They should not be assigned from the
visual distance between prime-gap bounds.  GEH creates substantial skip risk
below score `8`, while a successful parity-breaking theorem could skip almost
the entire ladder.

## Extended theorem-reach ladder

The target score above ends at twin primes.  For comparison with the extended
Collatz ladder, the following separate scale continues to stronger statements.
It measures theorem reach, not $e^S$ work toward twin primes.

| Reach score | Milestone |
|---:|---|
| **0** | Current state: $H_1\le246$. |
| **2** | A major unconditional bounded-gap improvement such as $H_1\le50$. |
| **4** | $H_1\le6$. |
| **5** | $H_1\le4$. |
| **6** | Twin primes: infinitely many prime pairs at distance $2$. |
| **7** | De Polignac's conjecture: every positive even integer occurs infinitely often as a gap between consecutive primes. |
| **8** | The qualitative prime-tuples or Dickson conjecture for every fixed admissible system of affine-linear forms. |
| **9** | The Hardy--Littlewood asymptotic for every fixed admissible prime tuple, with substantial uniformity in the system. |
| **10** | A full Bateman--Horn-type asymptotic for every fixed admissible finite family of irreducible integer polynomials. |

The two scales answer different questions.  Twin primes is `10` on its own
target benchmark and `6` on the extended reach ladder.

## Status

All numerical effort ranges and scores are provisional judgments.  The
theorem statements and implication directions should be checked separately
from those judgments.  No row asserts that the corresponding open theorem is
true or that its score is literature consensus.
