# Historical Backtest of Scalar Difficulty Ladders

## Question and provisional answer

This report separates two questions that are easy to conflate.

**Q1. Are ladder-like milestone structures predictive?**  If a problem has a
plausible sequence of intermediate theorems, does movement on that sequence
predict a higher subsequent hazard of genuine progress or solution, or does
the sequence merely make the history look smooth after the fact?

**Q2. Given that a ladder is used, how should incomparable routes be exposed
on one scale?**  In particular, should the score use logical disjunctions, a
maximum over complete proof routes, or a portfolio aggregate?

The historical cases below support a scalar public score, but not a scalar
mathematical state.  They do **not** make that score a forecast: theorem
strength, work already banked, and probability of timely solution are
different estimands.  The most robust substrate beneath the repository's
required common-scale ladder is:

1. retain a versioned portfolio of proved artifacts and implications;
2. define complete, complement-aware production functions for credible proof
   routes;
3. prefer natural implication-lattice points for the displayed rungs, using a
   disjunction only when it makes the effort path significantly smoother; and
4. keep forecasts and optional portfolio diagnostics separate from the
   displayed difficulty score.

The artifact graph and route models remain useful for designing and auditing
the scalar ladder.  They do not replace the common `5`, `10`, and `20`
calibration or turn a folder's headline target into a fixed endpoint.

This is a conditional conclusion about problems that admit ladder-like
structure.  The selected history cannot establish how common such problems
are among all famous conjectures.

## Scope: a rule fixed before choosing examples

The user-facing benchmarks are meant for problems resembling the Collatz and
twin-prime folders, not for every open problem.  To avoid selecting only
histories that flatter the proposed score, a historical case is **eligible**
only if all of the following hold.

1. **A pre-existing target.**  The headline statement was recognized before
   the decisive proof or advance.
2. **A target-specific observable or program.**  Before the endpoint, the
   literature supplied either a monotone quantitative observable or an
   explicit proof program whose components had target-specific meanings.
3. **At least three preterminal milestones.**  These milestones were stated
   or proved publicly and would have been scientifically legible at the time;
   they are not lemmas extracted from the final proof after the event.
4. **Coarse robustness.**  At least two reasonable historians would preserve
   the main ordering after merging or splitting nearby milestones.
5. **No hidden-hindsight majority.**  The case is excluded if most apparent
   progress can be recognized as target-relevant only after learning the
   final proof.

Criterion 5 does not forbid a route pivot.  It requires that, once the new
route became public, later intermediate results were recognizable as progress
without knowing whether the route would finish.

This rule admits bounded prime gaps, ternary Goldbach, arithmetic
progressions in the primes, and the Ricci-flow phase of the Poincare program.
It provisionally excludes the Hodge conjecture, whose currently visible
partial results do not provide a comparably robust scalar or component
sequence toward the full statement.  It also excludes abrupt-solution cases
such as Kadison--Singer from the primary calibration set.  Those exclusions
are scope decisions, not claims that the problems are unimportant or that no
future ladder could be designed for them.

The rule creates a serious selection effect: it conditions on retrospective
smoothness.  It can test whether an aggregation rule preserves smooth eligible
histories, but a solved-only sample cannot answer Q1.  Predictive validation
also needs unsolved, right-censored problems that met the same structural rule
at a historical cutoff.  Collatz and twin primes are natural censored cases;
Hodge is not, because it fails the scope rule rather than because it is
unsolved.

## What is being replayed

At historical date $t$, let $P_t$ be the public portfolio of proved theorems,
computations, reductions, and explicit conditional implications.  Let
$\mathrm{cl}(P_t)$ be its implication closure using reductions known by
that date.  A replay must not use later implications, later estimates of a
method's promise, or the knowledge that a route eventually succeeded.

For each route $r$, a complete route-production function
$s_r(\mathrm{cl}(P_t))$ maps all complementary ingredients of that route
to the repository's common nonnegative difficulty scale.  It may behave like
a minimum across indispensable components, a calibrated nonlinear bottleneck
function, or an implication graph with replacement costs.  It is not the
maximum of its ingredients, and a folder's target need not have score `10`.

The conservative scalar is

```math
S_{\max}(P_t)=\max_r s_r(\mathrm{cl}(P_t)).
```

A route may be added to a live benchmark once its target relevance is publicly
demonstrated.  Scores already reported under a frozen benchmark version are
not silently rewritten.  A retrospective research replay may compare an old
version with a later rescoring, but must label the distinction.

## Historical case 1: bounded gaps between primes

This is both an eligible historical case and part of the live twin-prime
problem.  Its observable is $H_1$, the limit inferior of consecutive prime
gaps.  Before a finite value was known, normalized small-gap results and the
level of distribution supplied a recognizable route program.

| Date | Public milestone | What a contemporaneous tracker could credit |
|---:|---|---|
| 2005 | Goldston, Pintz, and Yildirim proved $\liminf (p_{n+1}-p_n)/\log p_n=0$ and showed that an improvement beyond Bombieri--Vinogradov would imply bounded gaps. | Major movement on the GPY route, even though $H_1$ remained unproved finite. |
| 2013 | Zhang proved $H_1\le70{,}000{,}000$. | The outcome coordinate became finite; the GPY/distribution program paid out. |
| 2013 | Polymath8 reduced the unconditional bound to $4{,}680$. | Direct quantitative improvement plus reusable distribution estimates. |
| 2013 | Maynard's multidimensional sieve gave $H_1\le600$ and bounded intervals containing arbitrarily many primes. | A new route became independently credible and immediately surpassed the incumbent outcome. |
| 2014 | Polymath's generalized Selberg-sieve optimization gave $H_1\le246$. | Further outcome progress; the same paper records $12$ under EH and $6$ under GEH. |

The source abstracts make the sequence unusually auditable.  The
[GPY exposition](https://arxiv.org/abs/math/0505300) states both the normalized
gap theorem and the conditional bounded-gap implication.  The
[Polymath sieve paper](https://arxiv.org/abs/1407.4897) records Zhang's
$70{,}000{,}000$, Polymath's $4{,}680$, Maynard's $600$, and its own $246$;
it also records the EH and GEH consequences.  Zhang's paper is
[published by the *Annals of Mathematics*](https://annals.math.princeton.edu/2014/179-3/p07),
and Maynard's theorem and $600$ bound appear in
[his original preprint](https://arxiv.org/abs/1311.4600).

**Replay judgment.**  The raw outcome coordinate alone is lumpy: it gives GPY
almost no credit until Zhang.  A coordinate-wise maximum of outcome and
distribution does better, but treats complementary sieve and distribution
inputs as substitutes.  A complete GPY production function can credit the
2005 theorem without pretending it already proves finite $H_1$; a separate
Maynard route then overtakes it.  The route-level maximum produces a smooth
and historically intelligible series without assuming that GEH is
load-bearing for twin primes.

## Historical case 2: ternary Goldbach

The ternary Goldbach conjecture is an especially clean test of
complementarity.  Define $L_t$ as the lowest proved analytic threshold above
which every odd integer is a sum of three primes, and $V_t$ as the largest
rigorously verified finite range.  Neither coordinate solves the problem by
itself; the proof closes only when the ranges overlap.

| Date | Public milestone | What a contemporaneous tracker could credit |
|---:|---|---|
| 1937 | Vinogradov proved the conjecture for all sufficiently large odd integers. | The infinite tail was solved, leaving an explicitness and finite-range program. |
| 1939 | Borodzin gave the explicit threshold $3^{3^{15}}$. | $L_t$ became finite and therefore commensurable with computation. |
| 1989 | Chen and Wang reduced the published explicit threshold to about $3.33\mathbin{\cdot}10^{43{,}000}$. | A large but monotone analytic improvement. |
| 2002 | Liu and Wang reduced it to $2\mathbin{\cdot}10^{1{,}346}$. | The same route advanced by many orders of magnitude, though not yet to a feasible range. |
| 2013 | Helfgott sharpened the major- and minor-arc estimates enough to meet rigorous finite verification; the cited computation covered odd integers through about $8.875694\mathbin{\cdot}10^{30}$. | The analytic and computational branches finally overlapped, proving the target. |

These values and the logic of joining an asymptotic theorem to finite
verification are described in
[Helfgott's proof and historical introduction](https://ar5iv.labs.arxiv.org/html/1312.7748).
The concise [arXiv record](https://arxiv.org/abs/1312.7748) states the final
theorem and identifies the circle method, large sieve, and exponential-sum
inputs.

**Replay judgment.**  This case defeats the maximum of independent raw
dimensions.  A high analytic score cannot substitute for an insufficient
verification range, and a heroic computation cannot substitute for an
analytic theorem above it.  A Goldbach route function must combine both,
schematically through the signed log-gap $\log L_t-\log V_t$ and the quality
of the underlying certificates.  Route-level aggregation then yields many
genuine preterminal milestones and gives the final overlap exactly once.

## Historical case 3: arithmetic progressions in the primes

The target was that the primes contain arithmetic progressions of every
finite length.  The retrospective route has three independently visible
components: dense-set combinatorics, a relative or transference theorem, and
number-theoretic pseudorandomness for a majorant of the primes.

| Date | Public milestone | What a contemporaneous tracker could credit |
|---:|---|---|
| 1975 | Szemeredi proved that every positive-density subset of the integers contains arbitrarily long arithmetic progressions. | The dense combinatorial engine existed, but no transfer to the sparse primes was known. |
| 2003 | Green proved that every positive-relative-density subset of the primes contains a three-term progression. | The prime restriction/majorant machinery worked for the first nontrivial length. |
| 2004 | Green and Tao supplied a relative Szemeredi theorem and a pseudorandom almost-prime majorant, proving arbitrary lengths. | The three complementary components were joined. |

Green's [three-term theorem](https://arxiv.org/abs/math/0302311) explicitly
identifies the majorant property and restriction theorem for primes.  The
[Green--Tao paper](https://arxiv.org/abs/math/0404188) explicitly lists its
three ingredients: Szemeredi's theorem, a new transference principle, and the
Goldston--Yildirim input that places the primes inside a pseudorandom set of
almost primes.  Szemeredi's original paper is available from
[*Acta Arithmetica*](https://doi.org/10.4064/aa-27-1-199-245).

**Replay judgment.**  The route is compressed in calendar time after 2003 but
not logically atomic.  Coordinate-wise max would alternately overvalue dense
combinatorics or undervalue the sparse majorant.  A complement-aware route
function gives partial credit to the three-term prime theorem and to a general
transference theorem, but reaches `10` only when the number-theoretic and
combinatorial inputs fit together.

## Historical case 4: the Ricci-flow route to Poincare

The full Poincare conjecture looks discrete if viewed only as a yes/no
topological statement.  The eligible history begins with Hamilton's Ricci-flow
program, which created a recognizable analytic route with specific
obstructions: singularity formation, noncollapsing and local models, surgery,
long-time behavior, and extinction in the relevant case.

| Date | Public milestone | What a contemporaneous tracker could credit |
|---:|---|---|
| 1982 | Hamilton proved convergence results for closed three-manifolds with positive Ricci curvature. | A substantial special case and a concrete geometric evolution method. |
| 1993--1995 | Hamilton developed the formation and classification program for Ricci-flow singularities. | The main obstruction to extending the flow became an articulated route component. |
| 2002 | Perelman introduced entropy and noncollapsing tools, verified several assertions in Hamilton's program, and sketched the geometrization route. | Several previously missing analytic components moved together. |
| March 2003 | Perelman constructed Ricci flow with surgery on three-manifolds and verified most of the announced surgery assertions. | The route passed its central continuation-through-singularities bottleneck. |
| July 2003 | Perelman proved finite extinction for closed oriented three-manifolds with no aspherical prime factors. | The Poincare case followed within the established surgery framework. |
| 2006 onward | Detailed expositions checked and completed the proof record. | Verification confidence increased; it should not be counted as a second solution. |

Hamilton's starting theorem is available from
[Project Euclid](https://projecteuclid.org/journals/journal-of-differential-geometry/volume-17/issue-2/Three-manifolds-with-positive-Ricci-curvature/10.4310/jdg/1214436922.full),
and his singularity program appears in
[*Surveys in Differential Geometry*](https://doi.org/10.4310/SDG.1993.v2.n1.a2).
Perelman's three public steps are the
[entropy paper](https://arxiv.org/abs/math/0211159),
[surgery paper](https://arxiv.org/abs/math/0303109), and
[finite-extinction paper](https://arxiv.org/abs/math/0307245).
The [Kleiner--Lott notes](https://arxiv.org/abs/math/0605667) are a detailed
verification-oriented exposition of the first two Perelman papers.

**Replay judgment.**  A binary outcome score is flat until 2003.  A maximum
over raw dimensions such as "singularity control" and "topological reach"
mistakes prerequisites for substitutes.  A Hamilton-program production
function can credit the 1982 special case and the later analytic bottlenecks.
The 2002--2003 sequence still contains a large jump, but not an unstructured
one: the public papers themselves name which pieces are proved and which are
deferred.  This is near the broadest kind of history that should enter the
smooth calibration set.

## First conclusion from the replays

| Historical route | Raw coordinate maximum | Complete-route maximum | Portfolio value |
|---|---|---|---|
| Bounded gaps | Misses GPY complementarity and route maturity. | Smoothly handles GPY, Zhang, and the Maynard pivot. | Useful for forecasting GEH, parity, and sieve routes in parallel. |
| Ternary Goldbach | Fundamentally wrong because analytic and computational ranges are complements. | Correctly scores the closing of the range gap. | Useful if several analytic estimates or verification methods coexist. |
| Prime progressions | Treats combinatorics, transference, and pseudorandomness as substitutes. | Correctly requires the components to fit. | Useful before it is clear which majorant/transference package will work. |
| Ricci flow | Overstates isolated components or stays flat on the outcome. | Represents the articulated Hamilton program reasonably well. | Useful for uncertainty about surgery, collapsing, and alternative topology routes. |

The consistent failure is not one-dimensionality itself.  It is taking a
maximum over **ingredients** rather than over **complete production routes**.

## Four estimands that should not be collapsed silently

### 1. Mathematical impressiveness or theorem reach

This asks how strong, general, and structurally informative the proved
artifact is.  It is principally an ex post property of
$\mathrm{cl}(P_t)$.  The extended Collatz ladder is close to this
meaning.  A maximum over complete theorem routes is natural because the
strongest proved consequence can dominate reach, although incomparable
theorems should remain visible underneath.

An impressive theorem need not materially increase the near-term probability
of the benchmark target.  Conversely, a technically narrow estimate may be
the last missing input to a proof and have high predictive value without
great standalone reach.

### 2. Probability of reaching level $Y$ within effort multiple $X$

This is the forecasting quantity

```math
F_{X,Y}(t)
=
\Pr\!\left(
\text{level }Y\text{ is reached before an additional }X E_t
\text{ human-equivalent effort}
\mid \mathcal I_t
\right),
```

where $E_t$ is a stated current-effort baseline and $\mathcal I_t$ contains
only information public at time $t$.  It depends on route priors, complements,
research activity, failed approaches, and the chance of an unforeseen route.
A softmax or explicit Bayesian route portfolio is better suited to it than a
hard maximum.  This quantity may legitimately fall after a newly discovered
obstruction even though the theorem portfolio has only grown.

### 3. Cumulative replacement work already banked

This asks how much target-relevant work a capable community would need to
reproduce the proved assets from the baseline.  It is a property of the
artifact portfolio, not a forecast.  Two meanings must be distinguished:

- **leading-route replacement work** counts the work embodied in the strongest
  complete route state; a route-level maximum is appropriate;
- **portfolio replacement work** counts all nonredundant target-relevant
  assets across routes; it requires an overlap-adjusted union cost, not a
  maximum.

Neither is the actual historical effort expended.  Two communities can reach
the same theorem state after radically different amounts of failed work, so
no function of the mathematical state alone can equal cumulative hours
actually spent.

### 4. Smoothness and diagnostic usefulness

Smoothness is a property of a time series, not a mathematical achievement.
It is useful for detecting an uninformative ladder and for giving research
systems intermediate feedback.  Optimizing it directly is dangerous: a
softmax can manufacture a smooth curve by crediting many speculative routes,
even if those credits do not predict success or represent banked theorems.

The estimands can therefore rank the same portfolio differently.  Parallel
half-developed routes can raise a solution forecast while leaving the
leading-route maximum unchanged.  A broad theorem can raise impressiveness
more than forecast probability.  A duplicated proof can be impressive but
add little replacement work after overlap is removed.

### Selected score and optional diagnostics

This repository has selected **reach** as its common scalar: a conservative
theorem-strength contour, usually obtained from implication closure and
complete route states.  Store the full artifact graph beneath that score.
When useful, publish two separately labeled diagnostics rather than folding
them into reach:

1. **Banked work** $W$: the logarithm of leading-route or overlap-adjusted
   portfolio replacement work, with the choice printed beside the number.
2. **Forecast** $F_{X,Y}$: probabilities for a small fixed grid of effort
   multiples and target levels.

Report skip and smoothness diagnostics beside these outputs, not as another
achievement score.  This preserves the information needed for forecasting
without creating a second scalar ladder.

## Q1: are ladders predictive, or merely smooth in hindsight?

The four positive histories show that recognizable milestones *can* survive
a contemporaneous replay.  They do not show that the existence of such
milestones predicts solution.  Conditioning on solved, retrospectively smooth
cases makes that causal-sounding inference impossible.

A defensible predictive study would use the following protocol.

1. **Build a cutoff registry.**  At several historical dates, apply the scope
   rule to problems using documents available by the cutoff.  Include later
   solutions, substantial advances, and still-unsolved right-censored cases.
2. **Blind route construction.**  Give one panel sources truncated at date
   $t$ and ask it to define artifacts, complements, routes, and scores.  A
   separate panel records what happened after $t$.
3. **Use an effort clock.**  Reconstruct broad distributions over
   human-equivalent effort from author-years, project size, explicit
   computational expenditure, and field activity.  Calendar time is a
   secondary sensitivity check, not the primary clock.
4. **Forecast fixed outcomes.**  At each snapshot predict the next genuine
   milestone, attainment of level $Y$ within additional effort $X E_t$, and
   remaining log effort to the target.
5. **Evaluate out of sample.**  Fit any calibration on all but one problem and
   score the held-out problem.  Repeat as leave-one-problem-out validation;
   never tune rung placement on the held-out future.
6. **Keep versions frozen.**  New routes become eligible on the date their
   target relevance was publicly established.  Later route knowledge may be
   studied as a separate hindsight oracle, not inserted into the
   contemporaneous series.

For event forecasts, use log score or Brier score for calibration and a
time-dependent concordance statistic for discrimination.  For remaining
effort, use interval coverage and continuous ranked probability score on
$\log E$.  Compare against simple base rates and against an idealized
contemporaneous superforecaster using all public information.  The latter is
one comparator, not the definition of progress.

The decisive Q1 tests are:

- Does crossing a ladder contour increase the out-of-sample hazard of the next
  contour or solution after controlling for total field effort?
- Does the score reduce error in remaining-effort forecasts relative to the
  problem's age, publication rate, and base rate alone?
- Do improvements replicate across held-out problems, or arise only because
  each ladder was tailored to its own future?

If these tests fail, the ladder may still be a useful theorem-reach benchmark;
it should simply not be advertised as a predictor.

## Q2: comparison of state and aggregation designs

### Two independent dimensions

A pair such as $(H,D)$ is transparent and preserves information.  It is a good
display state when the coordinates correspond to real mathematical
observables.  It does not itself rank states, and any weighted average imports
exchange rates between possibly complementary ingredients.  Ternary Goldbach
shows that even two excellent coordinates may need a conjunctive production
function rather than an average.

### Maximum over raw dimensions

This is simple but usually has the wrong algebra.  It assumes dimensions are
substitutes.  It can declare a route nearly complete when one indispensable
ingredient is absent, and it is unstable under adding another weakly relevant
dimension.  A maximum over many raw dimensions is even more susceptible to
this problem.

### Maximum over complete routes

This preserves scalar simplicity while allowing arbitrary complementarity
inside a route.  It ignores secondary-route option value until another route
overtakes the leader, which is conservative for theorem reach and
leading-route replacement work.  It is less appropriate for solution
forecasting, where two independent plausible routes should usually raise the
aggregate probability.

### Soft maximum over routes

For route scores $s_r$ and declared weights $\pi_r$ with
$\sum_r\pi_r=1$, a diagnostic is

```math
S_{\tau}(P)
=
\tau\log\sum_r \pi_r
\exp\!\left(s_r(P)/\tau\right).
```

The temperature $\tau$ controls how much secondary routes matter.  This is
smoother than a hard maximum, but the result changes if one route is split
into two correlated descriptions.  It needs route priors and overlap
corrections.  Once the target is proved, implication closure should set every
route's outcome state to the target's score on the common scale; it should not
reset the target to `10`.

### Overlap-adjusted artifact portfolio

An artifact ledger can assign replacement costs to proved assets and count
shared lemmas once.  This is the right family for total banked portfolio work.
It can nevertheless reward a large body of target-relevant work on routes that
never solve the target.  That is correct for a work-stock measure and wrong if
misread as solution probability.

### Explicit predictive route ensemble

For forecasting, model route-specific transition hazards and dependencies,
then integrate over known routes plus an unseen-route component.  This is not
generally reducible to a stable progress score.  It can use the hard-max or
banked-work scores as features without identifying either with probability.

### Optional forecast-comparator illustration

This subsection is deliberately subordinate to the objective-first comparison
above.  An ideal forecaster is one useful comparator, not the benchmark's
purpose.  The following broad ranges are **author judgments with no empirical
validation**, included only to state a falsifiable prior ordering.  They should
not be copied into a benchmark specification.  “Forecast skill captured”
means the fraction of improvement in a proper prediction score between a
simple base-rate model and an ideal all-public-information superforecaster,
conditional on the retrospectively ladder-like problem class used here.

| Design | Theorem-reach fidelity | Banked-work fidelity | Forecast skill captured |
|---|---|---|---:|
| Two raw dimensions, shown without scalarization | Medium to high when the route is stable | Medium | 40--65% |
| Maximum over raw dimensions | Low; prerequisites look like substitutes | Low to medium | 20--40% |
| Maximum over many raw dimensions | Low to medium and definition-sensitive | Low | 25--45% |
| Maximum over complete route functions | High | High for leading-route work | 55--75% |
| Prior-weighted softmax over routes | Medium; priors contaminate theorem reach | Medium | 65--85% |
| Dependency-aware route ensemble with unseen-route mass | Medium unless a separate reach score is retained | High if coupled to an artifact ledger | 70--90% |

The ranges would be lower on an unrestricted conjecture universe, especially
for abrupt imported-method solutions.  The small historical sample cannot
resolve differences of ten percentage points; the main robust ordering is
that complete route models should beat raw-coordinate maxima, while
prior-weighted portfolios should beat a hard maximum for forecasting if their
extra parameters are estimated out of sample.

## Quantitative smoothness audit

Let $A_j$ be the cumulative actual human-equivalent effort at historical event
$j$, and let $S_j$ be the contemporaneously assigned score after that event.
For a prospective ladder, use the future expert-year clock $E_A(s)$ defined
in the root README.  Because either quantity is uncertain, every statistic
below should be computed over an elicited distribution, not a single invented
hour count.

### Integer-boundary skipping

For a historical replay, let $A(i)$ be the first cumulative effort at which
$S_j\ge i$.  Boundary $i$ is skipped when

```math
A(i+1)\lt1.1A(i).
```

For a prospective 2026 ladder, use $E_A(i)$ in the same inequality for every
integer $i\ge1$ that has an $i+1$ contour.  The ratio is undefined at the
July-2026 baseline $E_A(0)=0$; whether the first score-`1` result overshoots the first positive
rung is a separate baseline diagnostic, not a `0`-skip under the ratio rule.

Report the posterior probability of a skip, the expected number of skipped
integer boundaries, and the longest run of consecutive skips.  Treat several
results in one paper or tightly coupled project as one event unless there is
evidence that the intermediate theorem was available substantially earlier.

### Additional diagnostics

- **Largest jump:** $\max_j(S_j-S_{j-1})$.
- **Tail concentration:** the fraction of the final score first awarded in
  the last ten percent of cumulative effort.
- **Log-effort fit:** cross-validated error in
  $\log A_j=\alpha+\lambda S_j+\varepsilon_j$; do not fit and assess on the
  same case.
- **Credit lag:** the target-route effort completed before the score first
  recognized the corresponding asset.
- **Route-revision jump:** score change caused by redefining routes rather
  than by a new theorem.
- **Partition sensitivity:** variation when a reasonable route is split,
  merged, or assigned a different overlap correction.
- **False-progress rate:** high-scoring transitions that fail to improve
  held-out milestone hazard or remaining-effort forecasts.  This is relevant
  only when predictive validity is claimed.

Smoothness should be reported against both actual reconstructed effort and
replacement effort.  The first measures the historical research process; the
second measures the mathematical stock.  They answer different questions.

## The semantics of an exponential local fit

An equation such as

```math
W(P)\approx C\exp(\lambda S(P))
```

is coherent only after $W$ is named and $\lambda$ is fitted for the declared
area and range.  The repository's cross-problem anchors do not imply one
global exchange rate between a score point and effort.

- Under a hard maximum over complete routes, $W$ is approximately the
  **replacement work embodied in the leading route**, not all work performed
  and not all useful work across routes.
- Under an overlap-adjusted artifact portfolio, $W$ can mean **total banked
  portfolio replacement work**, but secondary routes increase it even when
  the best theorem consequence does not move.
- If $W$ means **actual cumulative historical effort**, then $S$ must depend on
  the path and research process, not only on the theorem state.  Failed work
  must be counted, so it is unsuitable as a pure achievement score.
- If the desired output is **probability of reaching $Y$ within $X$ times
  current effort**, exponential work calibration is at most a model feature;
  it is not the probability itself.

Thus a multiplicative work interpretation is not an argument for one
aggregator or for endpoint normalization.  It is a constraint on the
semantics after the objective is chosen.

## Recommendation for this repository

1. Store a theorem portfolio beneath the scalar public ladder.  Auxiliary
   coordinates may remain useful displays, but they are not separate scoring
   systems.
2. Define route functions over implication closure.  Complements live inside
   each route; alternatives are aggregated across routes.
3. Choose displayed rungs from natural implication-lattice points.  Use a
   disjunction of chains only when it significantly improves smoothness; do
   not take the maximum of raw dimensions.
4. Do not call that score an all-things-considered forecast.  Publish
   $F_{X,Y}$ separately using a dependency-aware portfolio with explicit
   unseen-route mass.
5. Name the work quantity and fit any local score-to-effort exchange rate
   explicitly.  It cannot mean actual cumulative hours while remaining a
   state-only score, and it must not override the authoritative shared
   calibration.
6. Preserve the four historical cases in a versioned replay dataset and add
   eligible censored cases.  Fit no numerical contour until blind,
   leave-one-problem-out tests are possible.

This architecture keeps one public scale without pretending that methods are
linearly ordered or that theorem reach is a deadline forecast.
