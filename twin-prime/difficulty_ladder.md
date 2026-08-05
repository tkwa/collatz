# A Disjunctive Difficulty Ladder for Prime Patterns

## Definitions

Let $p_n$ be the $n$-th prime and

```math
H_1=\liminf_{n\to\infty}(p_{n+1}-p_n).
```

For $\vartheta\in(1/2,1)$, $\mathrm{EH}[\vartheta]$ and
$\mathrm{GEH}[\vartheta]$ mean the standard Elliott--Halberstam and
generalized Elliott--Halberstam conjectures at exponent $\vartheta$ in the
bounded-gap framework.  GEH uses the full convolution class.  Neither symbol
means a restricted-modulus or restricted-coefficient theorem.  “Full GEH”
means $\mathrm{GEH}[\vartheta]$ for every fixed $\vartheta\lt1$.

For $X\ge2$, let

```math
\pi_2(X)=\#\lbrace p\le X:\ p\text{ and }p+2\text{ are prime}\rbrace.
```

The upper rungs use these standard conjectures:

- **de Polignac:** every positive even $d$ occurs infinitely often as a gap
  between consecutive primes;
- **Dickson:** every fixed admissible finite family of affine-linear forms
  with positive leading coefficients is simultaneously prime infinitely
  often;
- **Hardy--Littlewood:** the predicted singular-series asymptotic holds for
  every fixed admissible affine-linear family;
- **Schinzel H:** every fixed admissible finite family of distinct
  irreducible integer polynomials with positive leading coefficients takes
  simultaneous prime values infinitely often; and
- **Bateman--Horn:** the corresponding singular-series asymptotic holds for
  every such polynomial family.

“Admissible” includes the absence of a fixed prime divisor of the product.
The exact endpoint statement is given in
[`sources_and_implications.md`](sources_and_implications.md).

## The ladder

Every row above score `0` is open as of the August 2026 audit.  The word “or”
denotes logical disjunction.

| Score | Rung |
|---:|---|
| **0** | **Current theorem:** $H_1\le246$. |
| 0.3 | **The Weakest open rung:** $H_1\le244$ **or** $\mathrm{EH}[1/2+\delta]$ for some fixed $\delta\gt0$. |
| **1** | $H_1\le200$ **or** $\mathrm{EH}[11/20]$. |
| **2** | $H_1\le100$ **or** $\mathrm{EH}[3/5]$. |
| **3** | $H_1\le50$ **or** $\mathrm{EH}[2/3]$. |
| **4** | $H_1\le12$ **or** $\mathrm{EH}[3/4]$. |
| **5** | $H_1\le6$ **or** $\mathrm{GEH}[3/4]$. |
| 5.5 | $H_1\le4$ **or** full GEH. |
| **6** | **Twin primes:** $H_1=2$. |
| 6.5 | $\pi_2(X)\gg X/(\log X)^2$ for all sufficiently large $X$ **or** de Polignac's conjecture. |
| **7** | The Hardy--Littlewood asymptotic for twin primes **or** Dickson's conjecture for every fixed admissible affine-linear family. |
| 7.5 | The Hardy--Littlewood asymptotic for every fixed admissible affine-linear family **or** Schinzel's hypothesis H. |
| **8** | **Bateman--Horn** for every fixed admissible finite family of distinct irreducible integer polynomials with positive leading coefficients. |

The decimal rung at `0.3` is deliberately the only conjecture called
“Weakest” in this folder.  Since gaps between sufficiently large consecutive
primes are even, $H_1\lt246$ is equivalent to $H_1\le244$.

## Why this is one chain

Write $R_s$ for the statement at score $s$.  The claimed direction is always

```math
R_8\Longrightarrow R_{7.5}\Longrightarrow R_7
\Longrightarrow\cdots\Longrightarrow R_{0.3}\Longrightarrow R_0.
```

The lower OR branches are nested because stronger EH exponents imply weaker
ones, GEH implies EH at the same exponent, and smaller gap bounds imply larger
ones.  At the two joins:

```math
\mathrm{GEH}[3/4]\Longrightarrow\mathrm{EH}[3/4],
\qquad
\text{full GEH}\Longrightarrow\mathrm{GEH}[3/4].
```

The first arrow is Proposition 1.7 of the Polymath paper; the second is
restriction of the exponent.  The same paper also proves that full GEH gives
$H_1\le6$, but it does not give $H_1\le4$.  Thus “full GEH” is a genuine
alternative at score `5.5`, not a restatement of that row's gap alternative.
No partial EH or GEH rung is claimed to imply the gap alternative on its own
row.

Above twin primes:

- either alternative at score `6.5` implies infinitely many twin primes;
- the twin-pair Hardy--Littlewood asymptotic implies the quantitative
  alternative at score `6.5`;
- Dickson implies de Polignac (including consecutiveness, by a CRT
  construction recorded in the source audit);
- the general affine Hardy--Littlewood conjecture contains the twin-pair
  asymptotic, while Schinzel H contains Dickson; and
- Bateman--Horn contains the affine Hardy--Littlewood asymptotics and its
  positivity gives Schinzel H.

These are implication claims, not claims of equivalence.  In particular,
full GEH is not asserted to imply twin primes, twin primes do not imply their
Hardy--Littlewood asymptotic, and Dickson does not imply the quantitative
Hardy--Littlewood formulas.

## Subjective difficulty calibration

Let $Y_s$ be the human-expert-years required by a non-automated research
community, starting from the August 2026 frontier, to first prove rung $s$.
A human-expert-year means one year of full-time work by a frontier research
mathematician or an equivalent coordinated contribution.
The estimates are conditional on the rung being true and provable in the
accepted foundational framework.  The quantity calibrated is
$\mathbb E[\log_{10}Y_s]$, not $\log_{10}\mathbb E[Y_s]$.

| Score | $\mathbb E[\log_{10}Y_s]$ | 80% interval | Geometric-central effort |
|---:|---:|---:|---:|
| 0.3 | 2.3 | 0.8--4.0 | 200 expert-years |
| 1 | 3.0 | 1.3--4.7 | 1,000 expert-years |
| 2 | 4.0 | 2.1--5.9 | 10,000 expert-years |
| 3 | 5.0 | 2.9--6.9 | 100,000 expert-years |
| 4 | 6.0 | 3.7--7.9 | 1,000,000 expert-years |
| 5 | 6.8 | 4.4--8.7 | 6,300,000 expert-years |
| 5.5 | 7.0 | 4.6--8.9 | 10,000,000 expert-years |
| 6 | 7.2 | 4.8--9.1 | 16,000,000 expert-years |
| 6.5 | 7.4 | 5.0--9.3 | 25,000,000 expert-years |
| 7 | 7.6 | 5.2--9.5 | 40,000,000 expert-years |
| 7.5 | 7.8 | 5.4--9.7 | 63,000,000 expert-years |
| 8 | 8.0 | 5.6--9.9 | 100,000,000 expert-years |

The intervals are intentionally much wider than the spacing.  They represent
disagreement about future methods and the exchange rate between historical
and future work, not measurement error.

### Cross-task anchors

The absolute scale is tied to the development guide, not normalized to this
folder.  For calibration, the cumulative human-equivalent effort embodied in
the 2026 mathematical frontier is assigned a central value of about
$10^{6.5}$ expert-years, with order-of-magnitude uncertainty.

- Score `5` has central effort $10^{6.8}$ expert-years, about twice that
  cumulative reference: roughly one doubling, within the guide's one-to-two
  doubling anchor.
- Twin primes at score `6` is above that anchor but below a master conjecture
  spanning all polynomial prime values.
- Bateman--Horn ends this ladder at score `8`, with central effort $10^8$
  expert-years.  It is treated as one master-conjecture-scale achievement,
  not as the score-`10` capability level.
- Score `10` remains reserved for roughly the capability at which two among
  $\mathrm{BB}(6)$, Schanuel, and general Vojta have been solved.  Extrapolating
  this table would put that anchor near $10^9$ expert-years, but this ladder
  deliberately has no score-`9` or score-`10` rung.

The $10^{6.5}$ and $10^9$ conversions are subjective exchange-rate choices,
not measurements of historical labor.  Their purpose is cross-task
comparability.  Moving either by an order of magnitude should shift the whole
table, not stretch Bateman--Horn back to score `10`.

Pairing two alternatives does not assert that their proofs would look alike.
The calibration makes the following more limited judgments:

- incremental EH exponents and the accompanying round-number gap cutoffs are
  of comparable theorem reach below score `4`;
- a genuine GEH exponent beyond one half is comparable to reaching the
  sieve-theoretic $6$-gap frontier;
- full GEH and a direct $4$-gap theorem are both major ways of going beyond
  that frontier, while neither is known to imply the other; and
- quantitative depth for one pair and qualitative breadth over all even
  gaps are comparable ways of strengthening twin-prime infinitude.

These pairings are the most judgment-sensitive part of the ladder.  If expert
elicitation places the alternatives more than about `0.6` log-ten units apart,
the corresponding OR rung should be split or one branch should be dropped.

The apparent precision is bookkeeping.  These are provisional subjective
judgments, not a literature consensus and not a probability that a statement
is true.

## Integer-skip audit

For integer $n\ge1$, an $n$-skip occurs when the realized effort to reach
score $n+1$ is less than `1.1` times the effort to reach score $n$.  The table
estimates this prospectively, allowing one proof to discharge both rungs.

| Boundary | Estimated $p(n\text{-skip})$ | Principal reason |
|---:|---:|---|
| 1 to 2 | 35% | An EH estimate or sieve optimization may overshoot a round-number landmark. |
| 2 to 3 | 35% | The same theorem may improve both the exponent and the optimized gap. |
| 3 to 4 | 40% | A strong EH theorem could overshoot the exponent landmark. |
| 4 to 5 | 40% | A convolution estimate may prove GEH and EH at once. |
| 5 to 6 | 45% | A method that beats the three-point barrier may pass the `5.5` rung and solve the specified pair. |
| 6 to 7 | 40% | A first twin-prime proof may already be quantitative, while a general route may reach Dickson. |
| 7 to 8 | 35% | A polynomial-prime framework may pass Schinzel H and establish Bateman--Horn in one step. |

No estimate exceeds `50%`.  The largest risks occur at genuine implication
shortcuts; adding more gap cutoffs would make those risks worse rather than
smoother.  If expert elicitation pushes a boundary above `50%`, adjacent
rungs should be merged instead of inventing a cosmetic intermediate theorem.

## Scoring rule

The score of a proof is the greatest rung whose complete displayed statement
it establishes, after applying already proved implications.  A restricted
case, average over polynomial families, almost-prime analogue, or theorem
with an extra hypothesis does not receive the unrestricted rung unless a
written reduction proves it.

Proofs of impressive off-ladder results receive no automatic fractional
credit.  The ladder may be revised when such a result yields a new natural
open statement that fits between two rungs.
