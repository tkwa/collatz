# An Impressiveness Ladder for Collatz-like Conjectures

This note selects a scalar implication chain from a two-axis lattice of orbit
problems.  One axis allows a favorable residue-affine map and strengthens its
orbit conclusion; the other fixes the shortcut Collatz map and strengthens
its conclusion.  Two disjunctive rungs join those routes where a single chain
would otherwise ignore substantial progress on one axis.

Score `0` is the current rigorous frontier.  The first positive rung is the
moving sparse-ray conjecture, score `5` is classical Collatz, scores `6--9`
give sharper uniform stopping-time bounds, and score `9.5` adds universal
periodicity for a restricted one-expander family while retaining the sharp
classical stopping-time statement.  The folder stops below the repository's
score-`10` reference; endpoints do not set the common scale.

Throughout, `K` is the number of iterates.  For a residue-affine map,
$D_K(n)$ counts the designated contracting or pure-division steps among the
first $K$ iterates of $n$.  For the shortcut Collatz map, write
$D_K^{\rm Col}(n)$ for the number of even inputs among its first $K$ iterates.

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
| **9.0** | **Classical stopping-time limiting constant.**  $M(X)/\log X$ converges to a finite positive limit $c_{\rm Col}$. |
| **9.5** | **Stopping-time limit plus [universal one-expander periodicity](one_expander_universal_periodicity.md).**  The score-`9` statement holds, and every map in the restricted positive, coprime, pure-division, one-expander class with $a\lt B^B$ has every nonnegative orbit eventually periodic. |

## Why these lower rungs are selected

The scalar chain does not assign separate scores to every syntactically
intermediate statement.  The current selection is:

| Lattice candidate | Current scalar treatment | Reason |
|---|---|---|
| All-start signed superlogarithmic, all-start nonnegative superlogarithmic, and pure-division superlogarithmic contraction | Descriptive side points between scores `0.2` and `1` | Changing the starting set, sign restrictions, pure-division restriction, and an unspecified superlogarithmic rate one axis at a time is unusually likely to create several milestones from one global orbit argument.  Score `1` uses one substantive diagonal cut instead. |
| Existential pure-division fixed-power contraction | Not a separate rung | A designed-map proof is likely to overshoot an arbitrary power toward density.  Fixing the shortcut Collatz map creates a materially different interface, so that version appears as one branch of score `1.6`. |
| Bounds such as $K^{1-\varepsilon}$ or $K/(\log K)^A$ | Not separate rungs | These rates interpolate formally but are likely to be crossed by the same density mechanism and do not add a distinct proof interface. |
| Existential pure-division density or classical fixed-power contraction | The two alternatives at score `1.6` | This is the first join of the designed-map and fixed-map routes.  Either alternative implies the score-`1` polylogarithmic statement. |
| Bare negative-drift all-orbit periodicity | Not eligible for the chain | The parameters $B=2$, $E=\lbrace1\rbrace$, $a_1=3$, $c_1=0$ have the expanding fixed point $3$.  Thus periodicity alone does not imply division density. |
| Negative-drift periodicity with a division step in every eventual cycle, or classical positive density | The two alternatives at score `2` | The added division clause makes the designed-map alternative imply positive density.  The classical alternative advances the fixed-map route.  Both imply score `1.6`. |

The two disjunctions are therefore lattice joins, not arbitrary logical
weakenings.  Written from stronger to weaker, the lower formal chain is

```math
\begin{aligned}
\text{classical boundedness}
&\Longrightarrow \text{classical drift-threshold frequency}\\
&\Longrightarrow
  (\text{designed periodicity with division}
   \ \lor\ \text{classical positive density})\\
&\Longrightarrow
  (\text{existential pure-division density}
   \ \lor\ \text{classical fixed-power contraction})\\
&\Longrightarrow \text{pure-division polylogarithmic contraction}\\
&\Longrightarrow \text{the scaled-ray Weakest conjecture}.
\end{aligned}
```

## Division density and negative drift

Division density determines drift only in special families.  Suppose a
base-$B$ map has one expanding multiplier $a$, and an orbit uses the division
branches with asymptotic frequency $d$.  Ignoring bounded affine terms, its
mean logarithmic multiplier is

```math
d\log(1/B)+(1-d)\log(a/B)
=(1-d)\log a-\log B.
```

It is negative precisely when

```math
d\gt1-\frac{\log B}{\log a}.
```

For the shortcut Collatz map, $B=2$ and $a=3$, so the threshold is

```math
\theta_{\rm Col}
=1-\frac{\log 2}{\log 3}
=\frac{\log(3/2)}{\log 3}
\approx0.36907.
```

For several expanding residue classes, total division density is not enough.
If $f_r$ is the frequency of expanding residue $r$, the corresponding
branch-weighted condition is

```math
\sum_{r\in E}f_r\log a_r\lt\log B.
```

Under uniform residue frequencies, $f_r=1/B$, this becomes

```math
\prod_{r\in E}a_r\lt B^B.
```

A small positive density can coexist with exponential growth, and even a
large total division density need not control which expanding branches occur.
The score-`2.3` inequality is deliberately non-strict: a strict lower bound
above the threshold already forces boundedness and would collapse that part
of the intended chain.

## The stopping-time hierarchy

For the shortcut Collatz map $T$, set

```math
\tau(n)=\min\lbrace k\ge0:T^k(n)=1\rbrace,
\qquad
M(X)=\max_{1\le n\le X}\tau(n),
```

where $\tau(n)=\infty$ if the orbit never reaches $1$.  Any finite upper
bound for $M(X)$ implies classical Collatz.  Scores `6`, `7`, and `8`
successively ask for polynomial, polylogarithmic, and logarithmic bounds.
Score `9` asks for a finite positive limit

```math
\frac{M(X)}{\log X}\longrightarrow c_{\rm Col}.
```

The limiting statement requires the first-order growth of the most extreme
stopping time; the constant is part of the theorem rather than a value chosen
after the proof.

## Formal implication audit and endpoint

Both score-`1.6` alternatives imply score `1`: positive lower density gives a
pointwise linear lower bound, and any fixed positive power of $K$ eventually
dominates $(\log K)^2$.  At score `2`, designed-map periodicity implies
positive density because every eventual cycle contains a division step.
Classical positive density supplies both score-`1.6` alternatives, since the
shortcut map is admissible and a pointwise linear bound eventually dominates
a common fixed power such as $K^{1/2}$.

The classical drift threshold implies positive classical density.  A bounded
integer orbit is eventually periodic.  On a positive Collatz cycle with $o$
odd and $e$ even steps, the affine composition has slope
$3^o/2^{o+e}$ and a positive additive term.  A positive fixed point therefore
requires

```math
\frac{3^o}{2^{o+e}}\lt1,
```

so $e/(o+e)\gt\theta_{\rm Col}$.  This proves that score `3` implies score
`2.3`.  Classical boundedness also supplies the shortcut map as a witness for
the designed periodicity alternative: every positive eventual cycle contains
an even input, and zero is a division-branch fixed point.

The finite-attractor statement implies boundedness.  Classical Collatz
implies the finite-attractor statement because only the standard positive
cycle is needed.  Each uniform stopping-time bound implies Collatz, and the
successively sharper bounds imply one another.

The score-`9.5` endpoint is a conjunction.  It retains the score-`9`
stopping-time limit and adds the uniform component defined in
[`one_expander_universal_periodicity.md`](one_expander_universal_periodicity.md).
Universal one-expander periodicity alone neither identifies the classical
cycle nor supplies a stopping-time estimate, so omitting the conjunction
would break the chain.

Broad generalized-Collatz systems can encode computation.  Kurtz and Simon,
building on Conway, proved that a natural generalized totality problem is
$\Pi^0_2$-complete.  No reduction is known here for the positive coprime
one-expander class, and no theorem rules such a reduction out.  The endpoint
is deliberately restricted rather than presented as a decidable fragment.

Reference: Stuart A. Kurtz and Janos Simon,
[“The Undecidability of the Generalized Collatz Problem”](https://doi.org/10.1007/978-3-540-72504-6_49).

## Expected effort and integer-skip audit

Let $E_{\rm Col}(s)$ denote the expected future strategically directed
human-expert-years, measured from the July 2026 frontier, required first to
reach contour $s$.  The central values below are elicited judgments, not
measurements or consequences of the scores.  Uncertainty is at least about
`0.5` log units through the middle of the ladder and wider near the
one-expander endpoint; individual score placements are uncertain by roughly
one point.

For an integer $n\ge1$, an $n$-skip is the event

```math
E_{\rm Col}(n+1)\lt1.1E_{\rm Col}(n).
```

Noninteger rows have no integer-skip probability.  Score `9` is marked
`n/a` because this folder selects no score-`10` Collatz contour.  The separate
baseline diagnostic assigns about `20%` probability that the first theorem
reaching score `1` also overshoots the score-`0.2` sparse-ray rung.

| Score | Expected $\log_{10}$ future expert-years | $P(n\text{-skip})$, if applicable | Calibration note |
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
| 9 | 5.27 | n/a | Last selected integer contour; a logarithmic-bound proof may also identify the limiting constant. |
| 9.5 | 5.47 | -- | Terminal conjunction; the one-expander component has especially wide universality and overlap uncertainty. |

No estimated integer-skip probability exceeds `50%`.  The near-linearity of
$\log_{10}E_{\rm Col}(s)$ below score `10` is a diagnostic for the selected
contours, not an exact fitting constraint.  The universal anchors remain
score `10` near the median individual difficulty among BB(6), Schanuel's
conjecture, and general Vojta, and score `20` near BB(7); this folder's
endpoint need not equal either anchor.

## How to read the scale

The scale keeps three judgments separate:

- **theorem reach:** which starts and maps are controlled, and how strong the
  orbit conclusion is;
- **expected log effort:** whether successive contours plausibly require
  smooth multiplicative increases in directed research effort; and
- **skip risk:** whether one natural proof is likely to establish adjacent
  integer contours at essentially the same time.

Formal implication governs the ordering.  Expected effort and skip risk guide
which lattice points are displayed.  Historical fame does not raise a weak
statement's score, and bounded computation never establishes a universal
orbit claim.
