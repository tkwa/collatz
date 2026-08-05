# A Difficulty Ladder for abc and Vojta

Score `0` is the current rigorous frontier, score `5` is the abc conjecture
with ineffective constants, score `6` is effective abc, and score `10` is the
general Vojta conjecture with truncated counting functions.  A one-point
interval is intended to contain a real qualitative transition, but the scale is
not a ratio scale and the estimates are not literature consensus.

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
the polynomial regime at score `2.0` is the analogue of a negative-drift
threshold: it is where the exponential loss intrinsic to linear forms in
logarithms would have to be broken.

## The primary scale

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.** $\log c\ll R^{1/3}(\log R)^{3}$, effective (Stewart--Yu, 2001). Mason--Stothers gives the polynomial analogue outright. Nevanlinna's second main theorem gives the complex-analytic analogue. Faltings and Vojta prove cases of Vojta's conjecture for subvarieties of abelian and semiabelian varieties. |
| 0.2 | **The Weakest abc-like Conjecture.** There is a fixed $\delta\gt 0$ with $\log c\ll R^{1/3-\delta}$ for all coprime triples: any improvement whatsoever of the Stewart--Yu exponent. |
| 0.4 | A $(\log R)$-power bound for a restricted family, for example triples supported on a fixed finite set of primes, with the number of primes allowed to grow. |
| 0.8 | Subexponential in the radical: $\log c\le R^{\varepsilon}$ for every fixed $\varepsilon\gt 0$. |
| 1.3 | Quasi-polynomial: $\log c\le(\log R)^{A}$ for some fixed $A$. The logarithmic regime is entered but the exponent is not $1$. |
| 1.6 | $\log c\le(\log R)^{1+\varepsilon}$ for every $\varepsilon\gt 0$. |
| **2.0** | **Polynomial abc (weak abc).** $c\le R^{A}$ for some fixed $A$, effective. Asymptotic Fermat, Hall-type bounds, and the exponential loss of the linear-forms-in-logarithms method all fall here. This is the largest single transition on the ladder. |
| 2.5 | Explicit small exponent with a computable constant, for example $c\le C R^{2}$ with $C$ named. |
| 3.2 | An **ineffective** bound $c\le K(\varepsilon)R^{1+\varepsilon}$ for some fixed $\varepsilon_0\lt 1$ and all $\varepsilon\ge\varepsilon_0$, by an argument that cannot name $K$. |
| 4.0 | Ineffective $c\le K(\varepsilon)R^{1+\varepsilon}$ for every $\varepsilon\gt 0$ over $\mathbb{Q}$, with $K$ not computable. |
| **5.0** | **The abc conjecture, ineffective.** The full statement over $\mathbb{Q}$ with non-computable constants. Mordell, asymptotic Fermat, Szpiro, and the infinitude of non-Wieferich primes follow. |
| 5.5 | One effectivity obstruction removed: either $K(\varepsilon)$ made computable for a partial range of $\varepsilon$, or fully effective weak abc with the exponent driven to $1$. |
| **6.0** | **Effective abc.** Explicit computable $K(\varepsilon)$ for every $\varepsilon\gt 0$. Effective Mordell follows. |
| 6.4 | The $n$-term generalization (the $n$-conjecture) over $\mathbb{Q}$. |
| 6.8 | Uniform abc over all number fields, with the constant depending explicitly on degree and discriminant. This, and not abc over $\mathbb{Q}$, is the version from which the absence of Siegel zeros for odd real characters is known to follow. |
| 7.5 | Vojta's conjecture with truncated counting functions for curves, over all number fields: the complete one-dimensional case. |
| 8.2 | Vojta's conjecture, untruncated, for all smooth projective varieties. Bombieri--Lang for surfaces of general type follows. |
| 9.0 | Vojta with truncated counting functions for all varieties over number fields, together with Bombieri--Lang in all dimensions, for rational points. |
| **10** | **General Vojta.** Truncated counting functions, arbitrary smooth projective varieties, arbitrary normal-crossings divisors, and algebraic points of bounded degree. Every specialization in the Vojta dictionary is discharged. |

## Implication closure

As elsewhere in this repository, a benchmark state includes its routine
consequences, and a score is assigned to the closure of the proved state.

Selected proved reductions, all **[implication]**:

- Vojta with truncated counting functions on $\mathbb{P}^1$ relative to
  $\lbrace 0,1,\infty\rbrace$ at truncation level one is abc.  This is why the
  ladder is a genuine chain above score `5`.
- abc implies Mordell (Elkies).  Effective abc implies effective Mordell.
- abc is equivalent to the modified Szpiro conjecture (Oesterlé).
- abc implies infinitely many non-Wieferich primes (Silverman).
- A uniform abc over number fields implies no Siegel zeros for odd real
  characters (Granville--Stark).  This is placed at score `6.8`, not `5.0`.
- Weak abc with any fixed exponent implies asymptotic Fermat and
  Hall-type bounds, so score `2.0` already discharges several named problems.

## Exchange-rate annotation

The scale is ordinal.  For a benchmark intended to measure long-horizon
research, the ordinal scale alone is misleading, because the effort contained
in a unit interval varies by orders of magnitude across the range.  The table
below is the **[subjective]** annotation, in $\log_{10}$ human-expert-years of
remaining effort to first reach the rung, conditional on the statement being
provable in ZFC and on no acceleration from automated provers.

| Rung | Point estimate | 80% interval |
|---:|---:|---|
| 0.8 | 2.4 | 1.5--3.5 |
| 2.0 | 3.4 | 2.4--4.6 |
| 5.0 | 3.8 | 2.8--5.0 |
| 6.0 | 3.9 | 2.9--5.1 |
| 10 | 4.5 | 3.4--5.9 |

Two consequences follow, and both are design-relevant.

First, roughly half of the total estimated effort below score `5` sits in the
interval from `0` to `2`.  A reader treating the scale as linear in effort
will be wrong by more than two orders of magnitude across regions.

Second, the interval from `6.0` to `10` is estimated to contain more remaining
effort than everything below `6.0`.  The endpoint is a master conjecture of the
same class as Schanuel's conjecture, and the headroom is real rather than
decorative.

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
of the method used to obtain it.  A proof of score `2.0` obtained by breaking
the exponential loss in linear forms in logarithms is far more suggestive of
abc than a proof of the same bound obtained by an argument special to a
restricted family, even though the formal coordinates cannot distinguish them.

This is the same loss of information that the twin-prime folder accepts for
parity-breaking versus GEH-derived gap bounds, and it is handled the same way:
method-transfer claims are discussed in
[`effectivity_and_routes.md`](effectivity_and_routes.md), and formal credit
waits for a proved movement in $\Theta$ or $E$.
