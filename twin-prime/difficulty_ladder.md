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
| 0.3 | **The Weakest open rung:** $H_1\le244$ **or** $\mathrm{EH}[1/2+\delta]$ for some fixed $0\lt\delta\lt1/2$. |
| **1** | $H_1\le50$ **or** $\mathrm{EH}[2/3]$. |
| **2** | $H_1\le12$ **or** $\mathrm{EH}[3/4]$. |
| **3** | $H_1\le6$ **or** $\mathrm{GEH}[3/4]$ **or** full EH. |
| **4** | $H_1\le4$ **or** full GEH. |
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
restrict the exponent.  Thus every alternative at score `3` implies an
alternative at score `2`, every alternative at score `4` implies one at
score `3`, and twin primes implies the gap alternative at score `4`.
The Polymath paper proves that full GEH gives $H_1\le6$, but it does not give
$H_1\le4$; full GEH is therefore a genuine alternative at score `4`.
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
  independently nested.  The single coarse bridge at score `1` replaces the
  former sequence of round-number gap bounds and nearby EH exponents.  The
  $2/3$ distribution level is a substantial conventional landmark, while
  $H_1\le50$ is a factor-five outcome improvement; adding more cutoffs between
  them and the baseline would mostly create likely same-proof skips.
- The bounds `12` and `6` are source-backed conditional landmarks: full EH
  gives the former and full GEH gives the latter.  Full EH is an explicit
  third alternative at score `3`; without it, a proof of this natural theorem
  would stop at score `2` despite being substantially stronger than
  $\mathrm{EH}[3/4]$ and incomparable with $\mathrm{GEH}[3/4]$.
- The $H_1\le4$ rung is the last nontrivial even gap bound before twins, and
  full GEH is the final standard distribution conjecture before the parity
  barrier.  This is a substantive join rather than another numerical
  interpolation.
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

## Future-effort calibration and skip audit

Let $E_{PP}(s)$ be the expected future strategically directed
human-expert-years, measured from the July 2026 frontier, needed to first
reach contour $s$.  The table reports a central estimate of
$\log_{10}E_{PP}(s)$ and a deliberately wide subjective 80% interval.  It
does not add historical work to the future clock.  Score `0` is the starting
state, so its future effort is zero and its logarithm is undefined.

For an integer $n\ge1$,

```math
p_n=\Pr\bigl(E_{PP}(n+1)\lt1.1E_{PP}(n)\bigr)
```

is the estimated probability of an $n$-skip.  The event concerns correlated
research outcomes, so it is not determined by the ratio of the two central
estimates.  Noninteger rows have no $n$-skip, and the terminal integer has no
next boundary.

| Score | Expected $\log_{10}$ future expert-years | $P(n\text{-skip})$, if applicable | Calibration note |
|---:|---:|---:|---|
| 0 | -- | n/a | Current $H_1\le246$ theorem; the future clock starts here. |
| 0.3 | 2.55 (`1.2--4.0`) | -- | Minimal strict gap improvement or any unrestricted EH gain beyond $1/2$. |
| 1 | 3.05 (`1.6--4.6`) | 35% | One coarse bridge: a factor-five gap gain or the substantive $2/3$ distribution level. |
| 2 | 3.42 (`1.9--5.0`) | 35% | The EH-associated `12` landmark or a stronger fixed EH exponent. |
| 3 | 3.78 (`2.1--5.5`) | 40% | The GEH-associated `6` landmark, genuine partial GEH, or full ordinary EH. |
| 4 | 4.12 (`2.3--5.9`) | 45% | Last even gap contour before twins, or full GEH at the parity barrier. |
| **5** | **4.45 (`2.5--6.4`)** | 40% | Twin-prime infinitude; the famous target, not a scale anchor. |
| 6 | 4.78 (`2.7--6.9`) | 35% | Quantitative depth for twins or consecutive-gap breadth for every even shift. |
| 7 | 5.13 (`2.9--7.4`) | 35% | Exact twin asymptotics or qualitative affine-family breadth. |
| 8 | 5.47 (`3.1--7.9`) | 40% | Quantitative affine breadth or qualitative polynomial breadth. |
| **9** | **5.82 (`3.3--8.4`)** | n/a | Bateman--Horn closes both selected upper branches. |

The integer central estimates rise by about `0.33--0.37` log-ten units per
point.  This near-linearity is a spacing diagnostic, not an exact fit imposed
on the conjectures.  The estimated probability that the first theorem reaching
score `1` overshoots the score-`0.3` Weakest rung is `35%`; this is a baseline
diagnostic rather than a `0`-skip, because the logarithmic future-effort clock
is undefined at score `0`.

No skip estimate exceeds `50%`.  The former score-`1` through score-`3`
micro-rungs were collapsed precisely because several were likely to fall to
one proof.  If later elicitation pushes a remaining boundary above `50%`, the
response should again be to replace or merge rungs, not to add cosmetic
cutoffs.

The repository's score-`10` anchor is the median difficulty of the individual
problems BB(6), Schanuel's conjecture, and general Vojta; score `20` is roughly
BB(7).  Bateman--Horn is placed at `9` by the common scale, and this folder
ends there rather than forcing its endpoint to score `10`.

All effort numbers and pairing judgments are subjective.  If expert
elicitation places two alternatives on one row far apart, that row should
drop the easier branch or be redesigned rather than preserving a famous
name.

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
