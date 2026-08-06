# A Difficulty Ladder for abc and Vojta

The ladder runs from the current rigorous frontier through ordinary abc over
$\mathbb Q$ and then through bounded parts of the Vojta lattice to the general
truncated-counting conjecture.  Its positions use the repository's shared
difficulty scale rather than folder-specific endpoint normalization.  The
estimates are subjective and are not literature consensus.

Throughout, $a+b=c$ is a coprime triple of positive integers and
$R=\mathrm{rad}(abc)$.  The primary coordinate is the best proved
unconditional bound for $\log c$ in terms of $R$, ordered by growth rate.

Two regimes must be distinguished, because the transition between them is the
main qualitative event on the lower half of the ladder:

- the **radical-power regime**, where the bound has the shape
  $\log c\le R^{\theta}$;
- the **logarithmic regime**, where the bound has the shape
  $\log c\le(\log R)^{A}$, and in particular the **polynomial regime**
  $\log c\le A\log R$, equivalently $c\le R^{A}$.

Every bound proved to date lies in the radical-power regime.  Crossing into
the polynomial regime at the weak-polynomial rung is the analogue of a
negative-drift threshold: it is where the exponential loss intrinsic to
linear forms in logarithms would have to be broken.

For $q\gt1$, let $A(q)$ denote the assertion that a constant $K_q$ exists
such that $c\le K_qR^q$ for every coprime triple.  Let $V_{d,r}$ denote the
truncated-counting Vojta conjecture for every smooth projective variety of
dimension at most $d$, every simple-normal-crossings divisor, and points of
degree at most $r$ over the ground number field, with the usual exceptional
set, height, and discriminant terms.  The symbol $\infty$ in the first
coordinate removes the dimension bound; in the second it means every fixed
degree bound.  Thus $V_{\infty,\infty}$ is the general Vojta conjecture used
here.

## The primary scale

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.** $\log c\ll R^{1/3}(\log R)^{3}$, effective (Stewart--Yu, 2001). Mason--Stothers gives the polynomial analogue outright. Nevanlinna's second main theorem gives the complex-analytic analogue. Faltings and Vojta prove cases of Vojta's conjecture for subvarieties of abelian and semiabelian varieties. |
| 0.3 | **The Weakest abc-like Conjecture.** There is a fixed $\delta\gt0$ with $\log c\ll R^{1/3-\delta}$ for all coprime triples: any fixed improvement of the Stewart--Yu exponent. |
| **1** | **Subpower radical bound.** For every $\varepsilon\gt0$, $\log c\ll_{\varepsilon}R^{\varepsilon}$. |
| **2** | **Polylogarithmic bound.** $\log c\ll(\log R)^M$ for some fixed finite $M$. |
| 2.5 | **Weak polynomial abc.** $A(q)$ holds for some fixed finite $q\gt1$. |
| **3** | **Quadratic abc bound.** $A(2)$ holds. |
| **4** | **The abc conjecture over $\mathbb Q$.** For every $\varepsilon\gt0$, $c\le K(\varepsilon)R^{1+\varepsilon}$. Mordell, asymptotic Fermat, Szpiro, and the infinitude of non-Wieferich primes follow. |
| **5** | $V_{2,1}$: truncated Vojta for rational points on all curves and surfaces. |
| **6** | $V_{2,2}$ **or** $V_{3,1}$. |
| **7** | $V_{2,4}$ **or** $V_{4,1}$. |
| **8** | $V_{2,\infty}$ **or** $V_{\infty,1}$. |
| **9** | $V_{3,\infty}$ **or** $V_{\infty,2}$. |
| **10** | **General Vojta:** $V_{\infty,\infty}$. |

The upper half is a two-route lattice.  Increasing the allowed point degree
first follows the left alternatives; increasing dimension first follows the
right alternatives.  Each alternative at a higher score implies the
corresponding alternative immediately below it.  The finite cutoff `4` is a
calibration point, not a claim that degree or dimension four is intrinsically
special.  The curve case is not used as its own rung because Belyi-type
reductions make it too close to abc for reliable integer spacing.

## Implication closure

As elsewhere in this repository, a benchmark state includes its routine
consequences, and a score is assigned to the closure of the proved state.

Selected proved reductions, all **[implication]**:

- Vojta with truncated counting functions on $\mathbb{P}^1$ relative to
  $\lbrace 0,1,\infty\rbrace$ at truncation level one gives abc.  Every
  $V_{d,r}$ displayed above includes that specialization.
- abc implies Mordell (Elkies).  Effective abc implies effective Mordell.
- abc is equivalent to the modified Szpiro conjecture (Oesterlé).
- abc implies infinitely many non-Wieferich primes (Silverman).
- Weak polynomial abc implies asymptotic Fermat and Hall-type bounds, so that
  rung already discharges several named problems.

Effectivity is deliberately absent from the scalar chain.  Standard abc and
Vojta statements need not provide computable constants, so general Vojta does
not imply effective abc.  Effective variants remain an orthogonal coordinate
in [`effectivity_and_routes.md`](effectivity_and_routes.md).

## Effort and skip annotation

The elicitation area $A_{AV}$ is the dependency closure of radical and height
inequalities, Diophantine approximation, rational and integral points, and the
Nevanlinna--Vojta dictionary that is plausibly reusable for these statements.
Generic arithmetic geometry or number theory is excluded unless an explicit
dependency makes it relevant.

The table applies the root README's future-effort and skip conventions.
Central logarithms have uncertainty of at least roughly half a decade, and
skip probabilities are subjective to at least `15` percentage points.  In the
last column, the entry on integer row $n$ is the probability of skipping from
$n$ to $n+1$; `n/a` marks a terminal integer contour.

| Score | Expected $\log_{10}$ future expert-years | $P(n\text{-skip})$ | Main skip mechanism |
|---:|---:|---:|---|
| 0 | -- | -- | -- |
| 0.3 | 2.62 | -- | -- |
| 1 | 3.18 | 30% | A new height estimate may enter the polylogarithmic regime directly. |
| 2 | 3.52 | 35% | Breaking the exponential loss may yield a quadratic bound rather than stop at an arbitrary exponent. |
| 2.5 | 3.75 | -- | -- |
| 3 | 3.93 | 35% | A near-linear method may not stop at exponent two before proving abc. |
| 4 | 4.08 | 25% | A geometric proof of abc may extend to rational points on surfaces. |
| 5 | 4.41 | 20% | A Vojta framework may increase dimension or point degree in the same proof. |
| 6 | 4.70 | 40% | One framework may pass several finite dimension or degree cutoffs at once. |
| 7 | 4.83 | 35% | A uniform argument may remove the finite cutoff on one lattice axis. |
| 8 | 4.96 | 35% | Uniformity in dimension or degree may arrive in a package. |
| 9 | 5.22 | 30% | The last bounded dimension or degree restriction may not be load-bearing. |
| 10 | 5.47 | n/a | The ladder has no score-`11` contour. |

These are elicited estimates rather than values inferred from the assigned
scores.  The relatively close central estimates from scores `6` through `8`
are retained because they remove natural finite cutoffs on different lattice
axes; their skip risks remain below the replacement threshold.  The estimated
probability that the first theorem reaching score `1` overshoots the first
positive rung is `35%`.

## Historical calibration on the exponent dial

Unlike most rungs in this repository, the lower coordinate has a genuine
historical record, which makes it usable in
[`theory/historical_ladder_backtest.md`](../theory/historical_ladder_backtest.md):

| Year | Best proved bound for $\log c$ | Attribution |
|---:|---|---|
| 1986 | $\ll R^{15}$ | Stewart--Tijdeman |
| 1991 | $\ll R^{2/3+\varepsilon}$ | Stewart--Yu |
| 2001 | $\ll R^{1/3}(\log R)^{3}$ | Stewart--Yu |

Three points over fifteen years, and then twenty-five years with no
improvement of the exponent.  A backtest should ask what an aggregation rule
fitted before 2001 would have predicted for 2026, and should treat the
resulting error as a lower bound on the uncertainty of the rungs above.

## What the scale omits

The ladder records the strength of the proved bound, not the transferability
of the method used to obtain it.  A proof of the polylogarithmic rung obtained
by breaking the exponential loss in linear forms in logarithms is far more
suggestive of abc than a proof of the same bound obtained by an argument
special to a restricted family, even though the formal coordinates cannot
distinguish them.

This is the same loss of information that the twin-prime folder accepts for
parity-breaking versus GEH-derived gap bounds, and it is handled the same way:
method-transfer claims are discussed in
[`effectivity_and_routes.md`](effectivity_and_routes.md).  The formal scalar
score moves only when implication closure establishes a displayed $\Theta$ or
$V$ rung; $E$ is reported separately.
