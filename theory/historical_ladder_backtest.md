# Historical Backtest of Scalar Difficulty Ladders

## Question and provisional answer

This report separates two questions that are easy to conflate.

**Q1. Are ladder-like milestone structures predictive?**  If a problem has a
plausible sequence of intermediate theorems, does movement on that sequence
predict a higher subsequent hazard of genuine progress or solution, or does
the sequence merely make the history look smooth after the fact?

**Q2. Given that a ladder is used, how should its state be collapsed?**  In
particular, should the score be a function of two independent coordinates, a
maximum over many coordinates, a maximum over complete proof routes, or a
portfolio aggregate?

The historical cases below support a scalar public score, but not a scalar
mathematical state.  The most robust simple design is:

1. retain a versioned portfolio of proved artifacts and implications;
2. define complete, complement-aware production functions for credible proof
   routes;
3. publish the maximum route score as the conservative official score; and
4. use a prior-weighted route portfolio, including an unseen-route reserve,
   only as a predictive diagnostic.

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
$\operatorname{cl}(P_t)$ be its implication closure using reductions known by
that date.  A replay must not use later implications, later estimates of a
method's promise, or the knowledge that a route eventually succeeded.

For each route $r$, a complete route-production function
$s_r(\operatorname{cl}(P_t))$ maps all complementary ingredients of that route
to a score in $[0,10]$.  It may behave like a minimum across indispensable
components, a calibrated nonlinear bottleneck function, or an implication
graph with replacement costs.  It is not the maximum of its ingredients.

The conservative scalar is

```math
S_{\max}(P_t)=\max_r s_r(\operatorname{cl}(P_t)).
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
[EuDML](https://eudml.org/doc/205365).

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

