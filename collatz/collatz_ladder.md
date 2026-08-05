# An Impressiveness Ladder for Collatz-like Conjectures

This note gives a subjective scale for progress on the orbit problems in this
folder.  The ordering is primarily by mathematical reach.  The numerical
spacing is cross-checked against two different considerations: expected
logarithmic human-equivalent effort and the risk that a decisive lemma proves
several adjacent milestones at essentially the same time.  Those are three
different judgments, not claims that a difficult proof automatically proves
an impressive theorem.

Score `0` is the current rigorous frontier, score `5` is classical Collatz,
scores `6--9` give progressively sharper uniform stopping-time bounds, and
score `9.5` adds universal periodicity for a restricted one-expander family
while retaining the sharp classical bound.
The estimates are subjective and are not literature consensus.

Throughout, `K` is the number of iterates and `D_K(n)` counts the relevant
contracting-branch steps among the first `K` iterates of the starting value
`n`.  In the pure-division family used by the Positive Division-Density
Conjecture and the drift calculations below, these are precisely the
division-branch steps.

For the shortcut Collatz map, write $D_K^{\rm Col}(n)$ for the number of even
inputs among the first $K$ iterates of $n$.

## The primary scale

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.**  For a useful fixed map, every orbit satisfies `D_K(n) = Omega_n(log K)`.  The logarithmic constant can be made arbitrarily large only by changing maps; this does not give a superlogarithmic bound for one fixed map. |
| **0.2** | **[The Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md).**  Some signed unit map and some $u$ coprime to the map base satisfy $D_K(u^k)=\omega(\log K)$ for every sufficiently large fixed exponent $k$. |
| **0.4** | **[All-Start Signed Superlogarithmic Contraction](signed_superlogarithmic_contraction.md).**  Some signed unit map satisfies $D_K(n)=\omega(\log K)$ for every $n\in\mathbb N_0$. |
| **0.6** | **[All-Start Nonnegative Superlogarithmic Contraction](nonnegative_superlogarithmic_contraction.md).**  The preceding conclusion has a witness with positive multipliers and nonnegative offsets. |
| **0.8** | **Pure-division superlogarithmic contraction.**  The all-start conclusion has a witness whose contracting branches are pure division. |
| **1.0** | **Pure-division polylogarithmic contraction.**  Such a map has $D_K(n)\ge(\log K)^{1+\delta}$ eventually for every start, for some fixed $\delta\gt0$. |
| **1.3** | **Pure-division power contraction.**  Such a map has $D_K(n)\ge K^\delta$ eventually for every start, for some fixed $\delta\gt0$. |
| **1.6** | **[Positive Division-Density Conjecture](positive_division_density.md).**  Some pure-division map has $\liminf_{K\to\infty}D_K(n)/K\gt0$ for every start. |
| **2.0** | **Classical positive division density.**  Every positive shortcut-Collatz orbit has positive lower even-step density. |
| **2.3** | **Classical drift-threshold frequency.**  Every positive shortcut-Collatz orbit satisfies $\liminf_{K\to\infty}D_K^{\rm Col}(n)/K\ge\theta_{\rm Col}$, where $\theta_{\rm Col}=1-\frac{\log 2}{\log 3}$. |
| **3.0** | **Classical bounded-orbit conjecture.**  Every positive shortcut-Collatz orbit is bounded, equivalently eventually periodic in some positive cycle. |
| **4.0** | **Finite-attractor Collatz conjecture.**  Every positive orbit eventually enters one of finitely many positive cycles. |
| **5.0** | **Classical Collatz conjecture.**  Every positive integer reaches $1$, equivalently the cycle $1\leftrightarrow2$. |
| **6.0** | **Polynomial uniform stopping bound.**  There is an $A\gt0$ such that $M(X)=O(X^A)$. |
| **7.0** | **Polylogarithmic uniform stopping bound.**  There is an $A\gt0$ such that $M(X)=O((\log X)^A)$. |
| **8.0** | **Linear-log uniform stopping bound.**  $M(X)=O(\log X)$. |
| **9.0** | **Classical stopping-time limiting constant.**  $M(X)/\log X$ converges to a finite positive limit $c_{\rm Col}$. |
| **9.5** | **Stopping-time limit plus [universal one-expander periodicity](one_expander_universal_periodicity.md).**  The score-`9` statement holds, and every map in the restricted positive, coprime, pure-division, one-expander class with $a\lt B^B$ has every nonnegative orbit eventually periodic. |

The sparse-ray rung has low theorem reach because it existentially chooses the
map and controls only `O(log X)` starts below $X$.  Requiring the ray base to
be coprime to the map base prevents immediate base-alignment collapse;
cardinality-only sparse sets would be gameable.  Rates such as
$K^{1-\varepsilon}$ and $K/(\log K)^A$ are omitted because the same mechanism
is unusually likely to overshoot them without creating a new proof interface.

## Division density and negative drift

Division density alone determines drift only in special families.  Suppose a
base-`B` map has one expanding multiplier `a`, and an orbit uses the division
branches with asymptotic frequency `d`.  Ignoring bounded affine terms, its
mean logarithmic multiplier is

```math
d\log(1/B)+(1-d)\log(a/B)
= (1-d)\log a-\log B.
```

It is negative precisely when

```math
d \gt 1-\frac{\log B}{\log a}.
```

For the shortcut Collatz map, `B=2` and `a=3`, so the threshold is

```math
d \gt 1-\frac{\log 2}{\log 3}
= \frac{\log(3/2)}{\log 3}
\approx 0.36907.
```

For several expanding residue classes, the total division density is not
enough.  If `f_r` is the frequency of expanding residue `r`, the corresponding
branch-weighted condition is

```math
\sum_{r\in E} f_r\log a_r \lt \log B.
```

Under uniform residue frequencies, `f_r=1/B`, this becomes

```math
\prod_{r\in E}a_r \lt B^B.
```

This is why the ladder separates classical positive density from the exact
classical drift threshold.  A small positive density can coexist with
exponential growth, and even a large total division density need not control
which expanding branches occur.  The score-`2.3` inequality is deliberately
non-strict: a strict lower bound above the threshold already forces
boundedness and would reverse the intended chain.

## The stopping-time hierarchy

For the shortcut Collatz map $T$, set

```math
\tau(n)=\min\lbrace k\ge0:T^k(n)=1\rbrace,
\qquad
M(X)=\max_{1\le n\le X}\tau(n),
```

where $\tau(n)=\infty$ if the orbit never reaches $1$.  Any finite upper bound
for $M(X)$ implies classical Collatz.  Scores `6`, `7`, and `8` successively
ask for polynomial, polylogarithmic, and logarithmic bounds.  Score `9` asks
for a finite positive limit

```math
\frac{M(X)}{\log X}\longrightarrow c_{\mathrm{Col}}.
```

The limiting statement is much stronger than merely proving Collatz.  It
requires the correct first-order growth of the most extreme stopping time,
and the constant is part of the theorem rather than a value chosen after the
proof.

## Formal implication audit and the endpoint

Every rung formally implies the one below it.  The map families in the first
part are nested.  Polylogarithmic contraction implies superlogarithmic
contraction; power contraction implies a polylogarithmic bound; and positive
lower density implies a common fixed-power bound after allowing the eventual
threshold to depend on the start.  The shortcut Collatz map is an admissible
pure-division witness, so its positive-density statement implies the
existential density rung.

A bounded integer orbit is eventually periodic.  On a positive Collatz cycle
with $o$ odd and $e$ even steps, the affine composition has slope
$3^o/2^{o+e}$ and a positive additive term, so a positive fixed point requires
$3^o/2^{o+e}\lt1$.  Hence $e/(o+e)\gt\theta_{\rm Col}$, proving that score `3`
implies score `2.3`.  The finite-attractor statement implies boundedness, and
classical Collatz implies it because only the standard positive cycle occurs.
Each uniform stopping-time bound implies Collatz and the successively sharper
bounds imply one another.

The score-`9.5` endpoint is a conjunction.  It retains the score-`9`
stopping-time limit and adds the uniform component defined in
[`one_expander_universal_periodicity.md`](one_expander_universal_periodicity.md).
Universal one-expander periodicity alone neither identifies the classical
cycle nor supplies a stopping-time estimate, so dropping the conjunction
would break the implication chain.

Broad generalized-Collatz systems can encode computation.  Kurtz and Simon,
building on Conway, proved that a natural generalized totality problem is
$\Pi^0_2$-complete.  No reduction is known here for the positive coprime
one-expander class, and no theorem rules such a reduction out.  The endpoint
is intentionally placed near that uncertain boundary, with a subjective
universality risk around `10--15%`, rather than beyond it.

Reference: Stuart A. Kurtz and Janos Simon,
[“The Undecidability of the Generalized Collatz Problem”](https://doi.org/10.1007/978-3-540-72504-6_49).

The restricted endpoint varies $B$, the unique expanding residue, its positive
coprime multiplier, and its nonnegative offset, while forcing every other
branch to be pure division.  It is materially narrower than arbitrary
residue-affine systems.

## Area and effort annotation

The predeclared Collatz area includes classical $3x+1$ and $mx+1$ stopping,
cycle, and exceptional-set work; generalized residue-affine and one-expander
integer dynamics; and adjacent arithmetic-dynamics, ergodic, or Diophantine
work only when a plausible transfer is explicit.  Generic number theory and
brute-force orbit verification are not counted as mathematical-research
stock.  Direct work receives weight one and broader eligible work weight one
half.

The central 2026 stock is provisionally $B_{Col}=2{,}000$
directed-equivalent expert-years, with an 80% range of `750--4,500`.  This is
an elicitation prior, not a bibliometric measurement.  The following ratios
are calibration targets used to place statements, not estimates inferred
from their scores.  The final column reports future effort from the July 2026
baseline, the clock used by the skip rule.  Ratios for unchanged statements
retain the prior elicitation; the new score-`4` contour and the endpoint use
fresh overlap-aware central judgments.

| Score | $C_{Col}(s)/B_{Col}$ | $F_{Col}(s)/B_{Col}$ | $\log_{10}F_{Col}(s)$ at the central stock |
|---:|---:|---:|---:|
| 0 | 1.00 | 0 | -- |
| 0.2 | 1.07 | 0.07 | 2.15 |
| 0.4 | 1.19 | 0.19 | 2.58 |
| 0.6 | 1.30 | 0.30 | 2.78 |
| 0.8 | 1.39 | 0.39 | 2.89 |
| 1 | 1.49 | 0.49 | 2.99 |
| 1.3 | 1.69 | 0.69 | 3.14 |
| 1.6 | 1.93 | 0.93 | 3.27 |
| 2 | 2.21 | 1.21 | 3.38 |
| 2.3 | 2.57 | 1.57 | 3.50 |
| 3 | 3.00 | 2.00 | 3.60 |
| 4 | 4.50 | 3.50 | 3.85 |
| **5** | **6.56** | **5.56** | **4.05** |
| 6 | 14.4 | 13.4 | 4.43 |
| 7 | 31.4 | 30.4 | 4.78 |
| 8 | 68.6 | 67.6 | 5.13 |
| 9 | 94.0 | 93.0 | 5.27 |
| 9.5 | 150 | 149 | 5.47 |

Thus classical Collatz at score `5` is centrally about `2.7` doublings over
the area-specific 2026 stock, within the shared two-to-four-doubling anchor.
The one-expander endpoint has a central cross-problem placement near
`9.5`, with a rough range of `7.5--12`; it is not forced to `10` merely because
it ends this folder.  Conditional on truth and reachability, the comparison
assigns about `50%` probability that it is easier than the median individual
among BB(6), Schanuel, and general Vojta, about `30%` that it is comparable,
and about `20%` that it is harder.  Separately, the estimated risk that the
restricted family still supports computation or otherwise defeats the
intended foundational reachability is about `10--15%`.

## Integer-boundary skip audit

For integers $n\ge1$, the following provisional probabilities use the future-
effort rule $F_{Col}(n+1)\lt1.1F_{Col}(n)$.  Each is uncertain by at least
`15--20` percentage points.  Separately, the estimated probability that the
first theorem reaching score `1` overshoots the score-`0.2` rung is `20%`;
that is a baseline diagnostic, not a `0`-skip.

| Transition | Skip probability | Main reason it could be skipped |
|---:|---:|---|
| **1 to 2** | **30%** | A lower-bound mechanism may naturally yield positive density rather than a chosen intermediate rate. |
| **2 to 3** | **40%** | A classical frequency theorem may reach the drift threshold and boundedness together. |
| **3 to 4** | **35%** | A recurrence proof may control the global cycle set as part of the same argument. |
| **4 to 5** | **35%** | A finite-attractor proof may also identify the standard cycle as the only attractor. |
| **5 to 6** | **25%** | A constructive Collatz proof may carry an explicit polynomial stopping bound. |
| **6 to 7** | **35%** | A quantitative contraction proof may naturally be polylogarithmic. |
| **7 to 8** | **30%** | Extreme-value control may sharpen a polylogarithm directly to logarithmic order. |
| **8 to 9** | **30%** | A logarithmic upper-bound proof may also identify the limiting constant. |

No central estimate exceeds `50%`.  If elicitation pushes one above that
threshold, the relevant rungs should be merged or replaced.

The endpoint is a final half-step rather than an integer boundary.  Its
central future-effort ratio relative to score `9` is about `1.60`.  The
one-expander conjunct is priced separately rather than treated as an automatic
consequence of the classical result.  The uncertainty is especially wide
because the amount of machinery shared by the two conjuncts is unknown.

## How to read the numbers

The scale deliberately keeps three judgments visible:

- **theorem reach:** how many starts and maps are controlled, and how strong
  the orbit conclusion is;
- **expected log effort:** whether neighboring results plausibly require
  comparable multiplicative increases in cumulative research effort; and
- **skip risk:** whether a natural lemma is likely to establish several
  milestones at once.

Theorem reach governs the ordering.  Expected effort and skip risk govern the
spacing.  Historical fame does not raise a weak theorem's score.  Thus `5` is not
literally three times as impressive as `2`, and a proof may be much harder or
easier than its theorem's placement suggests.
