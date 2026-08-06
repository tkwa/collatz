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
means a restricted-modulus or restricted-coefficient theorem.  “Full EH” or
“full GEH” means the corresponding statement for every fixed
$\vartheta\lt1$.

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
| 3.5 | $H_1\le12$ **or** $\mathrm{EH}[3/4]$. |
| **4** | $H_1\le6$ **or** $\mathrm{GEH}[3/4]$ **or** full EH. |
| 4.5 | $H_1\le4$ **or** full GEH. |
| **5** | **Twin primes:** $H_1=2$. |
| **6** | $\pi_2(X)\gg X/(\log X)^2$ for all sufficiently large $X$ **or** de Polignac's conjecture. |
| **7** | The Hardy--Littlewood asymptotic for twin primes **or** Dickson's conjecture for every fixed admissible affine-linear family. |
| **8** | The Hardy--Littlewood asymptotic for every fixed admissible affine-linear family **or** Schinzel's hypothesis H. |
| **9** | **Bateman--Horn** for every fixed admissible finite family of distinct irreducible integer polynomials with positive leading coefficients. |

The decimal rung at `0.3` is deliberately the only conjecture called
“Weakest” in this folder.  Since gaps between sufficiently large consecutive
primes are even, $H_1\lt246$ is equivalent to $H_1\le244$.

## Why this is one chain

Write $R_s$ for the statement at score $s$.  The claimed direction is always

```math
R_9\Longrightarrow R_8\Longrightarrow\cdots
\Longrightarrow R_{0.3}\Longrightarrow R_0.
```

The lower OR branches are nested because stronger EH exponents imply weaker
ones, GEH implies EH at the same exponent, and smaller gap bounds imply larger
ones.  At the distribution joins,

```math
\mathrm{GEH}[3/4]\Longrightarrow\mathrm{EH}[3/4],
\qquad
\text{full EH}\Longrightarrow\mathrm{EH}[3/4],
\qquad
\text{full GEH}\Longrightarrow\mathrm{GEH}[3/4].
```

The first arrow is Proposition 1.7 of the Polymath paper; the other two
restrict the exponent.  Thus every alternative at score `4` implies an
alternative at score `3.5`, every alternative at score `4.5` implies one
at score `4`, and twin primes implies the gap alternative at score `4.5`.
The Polymath paper proves that full GEH gives $H_1\le6$, but it does not give
$H_1\le4$; full GEH is therefore a genuine alternative at score `4.5`.
No EH or GEH rung is claimed to imply twin primes.

Above twin primes:

- either alternative at score `6` implies infinitely many twin primes;
- the twin-pair Hardy--Littlewood asymptotic implies the quantitative
  alternative at score `6`;
- Dickson implies de Polignac, including consecutiveness by the CRT
  construction in the source audit;
- the general affine Hardy--Littlewood conjecture contains the twin-pair
  asymptotic, while Schinzel H contains Dickson; and
- Bateman--Horn contains the affine Hardy--Littlewood asymptotics and its
  positive constant gives Schinzel H.

These are implication claims, not claims of equivalence.  In particular,
twin primes does not imply a positive-order lower bound, Dickson does not
imply a Hardy--Littlewood asymptotic, and Schinzel H does not imply
Bateman--Horn.

## Rung-selection audit

The named conjectures are present because they form two nested routes with
comparable effort contours, not merely because they are famous.

- Below twin primes, the gap bounds and standard EH/GEH statements are
  independently nested.  Full EH is an explicit third alternative at score
  `4`: without it, a proof of this natural theorem would stop at score
  `3.5` despite being substantially stronger than $\mathrm{EH}[3/4]$ and
  incomparable with $\mathrm{GEH}[3/4]$.
- At scores `6`--`8`, one branch adds quantitative depth for prime pairs
  and then affine families, while the other adds qualitative breadth from all
  even gaps to all affine families and then polynomial families.  Each branch
  has a written implication to the row below.
- Extra round-number gap cutoffs and extra EH exponents were rejected as
  rungs.  They are formally valid but are likely to be crossed by the same
  proof, increasing skip risk without introducing a new mathematical
  bottleneck.
- Specific linear patterns such as Sophie Germain primes, and single
  nonlinear cases such as infinitely many primes of the form $n^2+1$, were
  also tested.  They do not imply the twin-pair or de Polignac alternatives
  below them.  Including them would require unrelated branches at every lower
  score and would make the twin-prime target cease to be the score-`5`
  statement.

Bateman--Horn remains the endpoint because it simultaneously supplies the
quantitative affine branch and the qualitative polynomial branch.  A weaker
qualitative endpoint would duplicate score `8`; a broader endpoint would no
longer be the standard Bateman--Horn conjecture requested for this folder.

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

Thus twin primes at score `5` is centrally
$\log_2(4.5)\approx2.17$ doublings over the predeclared 2026 stock, within
the shared two-to-four-doubling anchor.  Bateman--Horn is centered at score
`9`, with a subjective range of roughly `8--10.5`; it is a master
conjecture but is narrower than the score-`10` general Vojta anchor.

At the integer scores, adjacent central future-effort ratios are approximately
`2.20, 1.69, 2.15, 1.75, 1.71, 1.83, 1.36, 1.40`.  The last two ratios are
nearly equal: retaining both the affine/polynomial qualitative rung at `8`
and Bateman--Horn at `9` does not create an effort-spacing anomaly.

The pairing judgments remain subjective.  If expert elicitation places two
alternatives on one row far apart, that row should drop the easier branch or
be redesigned rather than preserving a famous name.

## Integer-skip audit

For integers $n\ge1$, an $n$-skip uses
$F_{PP}(n+1)\lt1.1F_{PP}(n)$.  Each probability below is uncertain by at
least `15--20` percentage points.  Separately, the estimated probability
that the first theorem reaching score `1` overshoots the score-`0.3`
Weakest rung is `30%`; that is a baseline diagnostic, not a `0`-skip,
because $F_{PP}(0)=0$.

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

No central value exceeds `50%`.  If elicitation pushes one above it, the
affected rungs should be merged or replaced.

## Scoring rule

The score of a proof is the greatest rung whose complete displayed statement
it establishes, after applying already proved implications.  A restricted
case, average over polynomial families, almost-prime analogue, or theorem
with an extra hypothesis does not receive the unrestricted rung unless a
written reduction proves it.

Proofs of impressive off-ladder results receive no automatic fractional
credit.  The ladder may be revised when such a result yields a new natural
open statement that fits between two rungs.

All numerical effort ranges and scores are provisional judgments.  The
theorem statements and implication directions are audited separately from
those judgments.
