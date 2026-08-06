# An Impressiveness Ladder for Collatz-like Conjectures

This note selects a scalar implication chain from a two-axis lattice of orbit
problems.  One axis allows a favorable residue-affine map and strengthens its
orbit conclusion; the other fixes the shortcut Collatz map and strengthens
its conclusion.  Two disjunctive rungs join those routes where a single chain
would otherwise ignore substantial progress on one axis.

The scale runs from the current rigorous frontier through sparse- and
all-start contraction statements, classical Collatz, progressively sharper
uniform stopping-time bounds, and a cumulative restricted one-expander
endpoint.  Scores use the
[repository-wide calibration](../README.md#difficulty-scores); the estimates
are subjective and are not literature consensus.

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
| **9.5** | **Stopping-time limit plus [universal one-expander periodicity](one_expander_universal_periodicity.md).**  The preceding limiting statement holds, and every map in the restricted positive, coprime, pure-division, one-expander class with $a\lt B^B$ has every nonnegative orbit eventually periodic. |

## Why these lower rungs are selected

The scalar chain does not assign separate scores to every syntactically
intermediate statement.  The current selection is:

| Lattice candidate | Current scalar treatment | Reason |
|---|---|---|
| All-start signed superlogarithmic, all-start nonnegative superlogarithmic, and pure-division superlogarithmic contraction | Descriptive side points between scores `0.2` and `1` | Changing the starting set, sign restrictions, pure-division restriction, and an unspecified superlogarithmic rate one axis at a time is unusually likely to create several milestones from one global orbit argument.  Score `1` uses one substantive diagonal cut instead. |
| Existential pure-division fixed-power contraction | Not a separate rung | A designed-map proof is likely to overshoot an arbitrary power toward density.  Fixing the shortcut Collatz map creates a materially different interface, so that version appears as one branch of score `1.6`. |
| Bounds such as $K^{1-\varepsilon}$ or $K/(\log K)^A$ | Not separate rungs | These rates interpolate formally but are likely to be crossed by the same density mechanism and do not add a distinct proof interface. |
| Existential pure-division density or classical fixed-power contraction | The two alternatives at score `1.6` | This is the first join of the designed-map and fixed-map routes.  Either alternative implies the score-`1` polylogarithmic statement. |
| Bare negative-drift all-orbit periodicity | Not eligible for the chain | The parameters $B=2$, $E=\lbrace1\rbrace$, $a_1=3$, $c_1=0$ have the expanding fixed point $3$.  Thus an individual periodic orbit need not contain a division step; the explicit cycle clause is what supplies the intended implication to positive density. |
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

This is why the ladder distinguishes positive density from the exact
classical drift threshold.  A small positive density can coexist with
exponential growth, and even a large total division density need not control
which expanding branches occur.  The drift-threshold inequality is
deliberately non-strict: a strict lower bound above the threshold already
forces boundedness and would collapse that part of the intended chain.

## The stopping-time hierarchy

For the shortcut Collatz map $T$, set

```math
\tau(n)=\min\lbrace k\ge0:T^k(n)=1\rbrace,
\qquad
M(X)=\max_{1\le n\le X}\tau(n),
```

where $\tau(n)=\infty$ if the orbit never reaches $1$.  Any finite upper
bound for $M(X)$ implies classical Collatz.  The successive rungs ask for
polynomial, polylogarithmic, and logarithmic bounds, followed by a finite
positive limit

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

The endpoint is a conjunction.  It retains the classical stopping-time limit
and adds the uniform component defined in
[`one_expander_universal_periodicity.md`](one_expander_universal_periodicity.md).
Universal one-expander periodicity alone neither identifies the classical
cycle nor supplies a stopping-time estimate, so omitting the conjunction
would break the chain.  The linked definition records the restricted family
and its computational-universality caveat.

## Effort and skip annotation

The Collatz elicitation area includes classical $3x+1$ and $mx+1$ stopping,
cycle, and exceptional-set work; generalized residue-affine and one-expander
integer dynamics; and adjacent arithmetic-dynamics, ergodic, or Diophantine
work only when a plausible transfer is explicit.  Generic number theory and
brute-force orbit verification are excluded.

The table uses the [root README's joint epistemic future-effort and skip
elicitation](../README.md#difficulty-scores).  Its central logarithms are
uncertain by at least roughly half a decade through the middle of the ladder
and more near the one-expander endpoint; individual score placements are
uncertain by roughly one point, and the skip probabilities by at least
`15--20` percentage points.  The entry on integer row $n$ concerns the
transition from $n$ to $n+1$.  Score `9` is marked `n/a` because this folder
selects no score-`10` contour.  The separate baseline diagnostic assigns about
`20%` probability that the first theorem reaching score `1` also overshoots
the score-`0.2` sparse-ray rung.

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
the expected log-effort column below score `10` is a diagnostic for the
selected contours, not an exact fitting constraint.

The one-expander endpoint has a rough placement range of `7.5--12`; this is a
difficulty sensitivity, not a proof-theoretic claim.
