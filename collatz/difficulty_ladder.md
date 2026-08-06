# A Difficulty Ladder for Collatz-like Conjectures

This table selects one implication chain from the folder's two-axis lattice.
The [folder overview](README.md#how-to-read-the-ladder) explains the axes,
joins, stopping-time hierarchy, endpoint, and subjective effort annotations.

Here $K$ is the number of iterates, $D_K(n)$ counts designated contracting
steps, and $D_K^{\rm Col}(n)$ counts even inputs for the shortcut Collatz map.
For the stopping-time rows, $M(X)$ is the largest time needed by a positive
start at most $X$ to reach $1$.

## The primary scale

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.**  For an explicit useful fixed map, every orbit satisfies $D_K(n)=\Omega_n(\log K)$.  The logarithmic coefficient can be made arbitrarily large only by changing maps, which does not give a superlogarithmic bound for one fixed map. |
| **0.2** | **[The Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md).**  Some signed unit map and some exact scaled ray $d u^k$, with $u$ multiplicatively independent of the map base, satisfy $D_K(d u^k)=\omega(\log K)$ for every sufficiently large fixed exponent $k$. |
| **1.0** | **[Pure-Division Polylogarithmic Contraction](pure_division_polylogarithmic_contraction.md).**  Some nonnegative pure-division map and one fixed $\delta\gt0$ satisfy $D_K(n)\ge(\log K)^{1+\delta}$ eventually for every nonnegative start. |
| **1.6** | **[Power-or-Density Contraction](power_or_density_contraction.md).**  Either some pure-division map has positive division density on every orbit, or the shortcut Collatz map has a common fixed-power lower bound $D_K^{\rm Col}(n)\ge K^\delta$ on every orbit. |
| **2.0** | **[Periodicity-or-Classical-Density](periodicity_or_classical_density.md).**  Either some negative-drift pure-division map has every orbit eventually enter a cycle containing a division step, or every shortcut-Collatz orbit has positive lower even-step density. |
| **2.3** | **Classical drift-threshold frequency.**  Every positive shortcut-Collatz orbit satisfies $\liminf_{K\to\infty}D_K^{\rm Col}(n)/K\ge\theta_{\rm Col}$, where $\theta_{\rm Col}=1-\frac{\log 2}{\log 3}$. |
| **3.0** | **Classical bounded-orbit conjecture.**  Every positive shortcut-Collatz orbit is bounded, equivalently eventually periodic in some positive cycle. |
| **4.0** | **Finite-attractor Collatz conjecture.**  There is a finite set of positive cycles such that every positive orbit eventually enters one of them. |
| **5.0** | **Classical Collatz conjecture.**  Every positive integer reaches $1$, equivalently the cycle $1\leftrightarrow2$. |
| **6.0** | **Polynomial uniform stopping bound.**  There is an $A\gt0$ such that $M(X)=O(X^A)$. |
| **7.0** | **Polylogarithmic uniform stopping bound.**  There is an $A\gt0$ such that $M(X)=O((\log X)^A)$. |
| **8.0** | **Linear-log uniform stopping bound.**  $M(X)=O(\log X)$. |
| **9.0** | **Kontorovich--Lagarias scaled stopping constant.**  $\limsup_{n\to\infty}\tau(n)/\log n=\gamma_{\rm RRW}\approx41.677647$, equivalently $\limsup_{X\to\infty}M(X)/\log X=\gamma_{\rm RRW}$. |
| **9.5** | **[Exact maximum stopping constant](scaled_stopping_constant.md).**  $M(X)/\log X$ converges to $\gamma_{\rm RRW}$, upgrading the score-`9` limsup to a full limit. |
| **10.0** | **Classical exact limit plus generalized periodicity.**  The score-`9.5` limit holds, and [universal one-expander periodicity](one_expander_universal_periodicity.md) holds for the restricted positive, coprime, pure-division family with $a\lt B^B$. |
| **10.5**\* | **Borderline terminal conjunction.**  The score-`9.5` limit holds, and every map in that one-expander family has a [polynomial worst-case preperiod](one_expander_polynomial_preperiod.md). |

## Selected joins and side points

| Lattice candidate | Current scalar treatment | Reason |
|---|---|---|
| Signed, nonnegative, and pure-division all-start superlogarithmic statements | Side points between `0.2` and `1` | Score `1` makes one substantive diagonal step instead of scoring several likely-coupled variants. |
| Existential pure-division fixed-power contraction and other interpolating rates | No separate rung | A designed-map proof may overshoot these rates without adding a distinct proof interface. |
| Existential pure-division density or classical fixed-power contraction | Alternatives at `1.6` | This first join credits progress on either axis; either route implies score `1`. |
| Bare negative-drift periodicity | Not eligible | A cycle need not contain a division step, so bare periodicity does not imply positive division density. |
| Designed-map periodicity with division or classical positive density | Alternatives at `2` | The cycle clause makes the designed-map route imply density; both alternatives imply score `1.6`. |
| Convergence of $M(X)/\log X$ to an unspecified positive constant | Not selected | It is incomparable with score `9`: it controls record gaps but does not identify the stochastic-model limsup.  Score `9.5` requires both. |
| Universal logarithmic one-expander preperiod | Unscored stronger side point | It is the natural optimal-order strengthening of score `10.5`, but rare near-neutral or computational transients keep its confidence below the endpoint threshold. |

## Effort and skip annotation

These subjective estimates use the scope and interpretation summarized in the
[folder overview](README.md#effort-and-skip-annotations).

| Score | Expected $\log_{10}$ cumulative human-expert-years from the current frontier | $P(n\text{-skip})$, if applicable | Calibration note |
|---:|---:|---:|---|
| 0 | -- | n/a | Current proved frontier; future effort is zero, so its logarithm is undefined. |
| 0.2 | 2.15 | -- | Exceptionally weak sparse-start statement; the large gap to score `1` is intentional. |
| 1 | 2.99 | 30% | One diagonal all-start, map-family, and rate milestone replaces several highly coupled micro-rungs. |
| 1.6 | 3.27 | -- | First two-route join: designed-map density or classical fixed-power contraction. |
| 2 | 3.38 | 40% | Second join: designed-map periodicity with division or classical positive density. |
| 2.3 | 3.50 | -- | Exact non-strict classical drift threshold. |
| 3 | 3.60 | 35% | Boundedness may arrive with global cycle control, but the lower joins permit earlier progress on either main route. |
| 4 | 3.85 | 35% | A recurrence proof may control finitely many attractors before identifying the standard cycle. |
| 5 | 4.05 | 25% | Classical Collatz is the folder's famous target, not a normalization anchor. |
| 6 | 4.43 | 35% | A constructive proof may already contain a polynomial stopping bound. |
| 7 | 4.78 | 30% | Quantitative contraction may sharpen directly from polynomial to polylogarithmic. |
| 8 | 5.13 | 30% | Extreme-value control may pass from a polylogarithm to logarithmic order. |
| 9 | 5.27 | 25% | Identifies the extreme stopping-time limsup with the stochastic-model constant. |
| 9.5 | 5.47 | -- | Upgrades that exact limsup to convergence of the normalized running maximum. |
| 10 | 5.82 | n/a | First upper conjunction; the one-expander component adds wide universality and overlap uncertainty. |
| 10.5* | 6.07 | -- | Polynomial preperiod control adds worst-case runtime risk and is retained only as a borderline endpoint. |

The periodicity component has a rough placement range of `7.5--12`, and the
polynomial-preperiod component roughly `8.5--14`.  These are difficulty
sensitivities, not proof-theoretic claims.  The folder overview explains the
asterisk on the terminal score.
