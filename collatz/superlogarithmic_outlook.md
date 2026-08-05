# Outlook for the all-start superlogarithmic target

## The target

This note assesses the **All-Start Nonnegative Superlogarithmic Contraction
Conjecture**: whether there is an admissible Collatz-like map for which, for
every fixed starting value $n$,

```math
D_K(n)=\omega(\log K).
```

Here $D_K(n)$ is the number of division-branch steps among the first $K$
iterates.  This is an existential statement about the choice of map, followed
by a universal statement about all of its ordinary nonnegative-integer
orbits.  The target is not tied to the initial $4/3$-type diagnostic map or to
any other particular candidate family.

It does not assess the repository's moving
[Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md), which now
requires the same asymptotic only along one existentially chosen coprime power
ray.  On the [impressiveness ladder](collatz_ladder.md), the all-start target
here is score `0.6` and the sparse-ray target is score `0.2`.  The probability
and proof-difficulty judgments below should not be transferred to the latter
without a separate recalibration.

## Classical Collatz and the target

Let

- $C$ be the classical Collatz conjecture; and
- $S$ be the existential superlogarithmic statement above.

The shortcut Collatz map is admissible.  If $C$ is true, every positive orbit
of that map eventually enters $1\leftrightarrow2$, where division steps have
density $1/2$.  It follows rigorously that

```math
C\Longrightarrow S,
\qquad
\neg S\Longrightarrow\neg C.
```

Any probability assessment must respect this implication.  In particular,

```math
\Pr(\neg S)
=\Pr(\neg C)\Pr(\neg S\mid\neg C).
```

## Joint distribution

The following is my central subjective joint distribution.  These are
epistemic judgments, not mathematical or frequentist results.

| Classical Collatz $C$ | Superlogarithmic target $S$ | Probability |
|---|---|---:|
| True | True | 97.0% |
| False | True | 2.9% |
| False | False | 0.1% |
| True | False | 0% |

The last cell is zero because $C\Rightarrow S$.  The marginals and the key
conditional are therefore

```math
\Pr(\neg C)=3.0\%,
\qquad
\Pr(\neg S)=0.1\%,
\qquad
\Pr(\neg S\mid\neg C)\approx3.3\%.
```

The decimal in $0.1\%$ should not be mistaken for measurement precision.  It
is a compact way to record an order-of-magnitude judgment: roughly one chance
in a thousand, with a plausible range spanning at least a factor of several.

## Outcome distribution for $S$

The following mutually exclusive categories sum to $100\%$.

| Outcome | Probability |
|---|---:|
| The target is false | 0.1% |
| The target is true but independent of ZFC | 2.5% |
| The target is true and ZFC-provable, but remains unproved even by a galactic civilization | 0.2% |
| The target is eventually proved, but not in less than 100,000 human expert-years | 7.2% |
| **The target is provable by humans in less than 100,000 expert-years** | **90.0%** |

An **expert-year** means roughly one year of full-time work by a researcher
capable of contributing at the relevant frontier.  A **galactic
civilization** literally means a civilization controlling the resources of at
least one galaxy.  The galactic category excludes independence: a finite ZFC
proof exists, but even that civilization never finds it.  The next category
allows eventual discovery by humanity or a more capable civilization, but
not for a total human effort below 100,000 expert-years.

The proof-difficulty probabilities are much larger than the falsity
probability.  This is deliberate.  The repository contains strong evidence
that several natural proof architectures fail, but almost no direct evidence
that an exceptional ordinary orbit actually exists for every admissible map.

## Evidence about the truth of classical Collatz

Three considerations push toward $C$ being true.

1. In the usual random-parity model, a shortcut step has negative mean
   logarithmic drift.  A typical long parity word contracts, and an infinite
   divergent orbit requires a persistent atypical correlation.
2. Tao proved that, for any function $f(N)\to\infty$, the minimum of the
   Collatz orbit is below $f(N)$ for almost all $N$ in logarithmic density.
   This is a theorem about the actual arithmetic map, not merely simulation.
3. Direct computation has verified convergence for every starting value below
   $2^{71}$, with the project now reporting a slightly larger bound.  No
   counterexample occurs in that exhaustive range.

The relevant primary references are Tao's
[almost-bounded-orbits theorem](https://arxiv.org/abs/1909.03562) and Barina's
[verification project](https://pcbarina.fit.vutbr.cz/).

These considerations do **not** justify assigning nearly zero probability to
$\neg C$.  Negative drift concerns typical pseudo-random paths; it does not
rule out a single arithmetically selected path.  Tao's exceptional set may be
nonempty, and every finite computation is compatible with a first
counterexample above its cutoff.  The remaining $3\%$ is mostly model risk:
the parity process may contain a rigid, extremely sparse exceptional
mechanism that typical-orbit evidence cannot see.

## Why $S$ is substantially more likely than $C$

The implication $C\Rightarrow S$ is only the beginning.  Most conceivable
failures of $C$ would leave the shortcut Collatz map as a witness for $S$.

Conversely, if $S$ is false, then the shortcut Collatz map itself has an orbit
for which $D_K(n)/\log K$ does not tend to infinity.  Such an orbit cannot
eventually enter any periodic cycle with a division step.  Thus $\neg S$
would provide a particularly extreme Collatz counterexample, not merely an
arbitrary failure to reach $1$.

- A nontrivial periodic Collatz orbit would contain at least one division
  step, and hence would have positive division density.  Such a cycle refutes
  $C$ but does not by itself refute $S$.
- A divergent Collatz orbit may still have linearly many division steps.  It
  can refute $C$ while that orbit satisfies a conclusion much stronger than
  $D_K(n)=\omega(\log K)$.
- Even an orbit with only logarithmically many division steps would disqualify
  only the shortcut Collatz map.  To make $S$ false, **every** admissible map
  must have some bad ordinary orbit.

Thus $\neg S$ is not the generic way for $\neg C$ to occur.  It requires a
much more extreme symbolic failure and requires that failure to survive the
freedom to design a different map.

There is also positive heuristic evidence from the admissible families.  In
the ceiling-division family, expansion has probability about $1/B$ under a
uniform-residue model and division has probability about $(B-1)/B$; increasing
$B$ makes the typical logarithmic drift strongly negative.  The proved lower
bound has an
[arbitrarily large coefficient](asymptotic_progress/unbounded_logarithmic_constants.md)
of $\log K$ as the map varies.  Neither observation proves the fixed-map
asymptotic statement, but both make a universal no-go theorem for all maps
less likely than a proof obstruction for the candidates studied so far.

## What the repository's obstructions do and do not show

Each obstruction should be classified by the kind of evidence it supplies.

### Mostly evidence about proof difficulty

- Every finite residue itinerary is realized by an ordinary nonnegative
  integer, and its endpoints form an
  [exact arithmetic progression](asymptotic_progress/endpoint_arithmetic_progressions.md).
  Therefore no fixed finite bad pattern or finite list of local valuations
  can be forbidden.
- Finite-state carry transducers cannot compute either the full itinerary or
  its binary expansion/division projection from ordinary base-$B$ digits; see
  the [finite-state obstruction](asymptotic_progress/finite_state_coding_obstruction.md).
- Existing fixed-rank sparse-polynomial, $S$-unit, Subspace-Theorem, height,
  LTE, and rational-base results lose too much when the number of blocks
  grows.
- The clean current sufficient statement is a fixed-start, growing-rank
  [valuation estimate](asymptotic_progress/uniform_rank_valuation_target.md)
  with subexponential rank loss.  No checked theorem gives it.

These results eliminate attractive proof strategies.  They do not construct
one bad infinite orbit.  In particular, realizability of every finite prefix
uses a starting integer that may change with the prefix length.  The limiting
infinite itinerary naturally belongs to a $B$-adic integer and need not come
from any ordinary nonnegative integer.  Confusing those two assertions would
overstate the truth-level evidence supplied by the finite-prefix obstruction.

### Some evidence relevant to truth

- A hypothetical bad orbit is arithmetically possible at every finite scale;
  there is no compact local certificate that immediately rules it out.
- Ordinary integer itineraries are not known to obey the random-residue model,
  and bad symbolic sequences can be topologically abundant even when they
  have probability zero under a Bernoulli measure.
- No expanding admissible map is currently proved to satisfy even the weaker
  universal positive-density claim.  Rational-base stopping problems already
  remain open at qualitative levels.

These facts justify a nonzero falsity probability and prevent treating the
choice among maps as a collection of independent random trials.  They still
fall far short of evidence that **all** admissible maps possess an exceptional
ordinary orbit.

### Evidence that failure would be highly structured

For the candidate families with an affine upper recurrence for division
times, the proved
[failure structure](asymptotic_progress/failure_structure.md) implies much
more than occasional long expansion runs.  Failure forces a positive upper
density of proportional division-time gaps and hence arbitrarily long
bounded-spacing chains of such gaps along one fixed orbit.  The endpoint
cores in those chains have unrestricted prime support, which is why current
local methods stop.  But the requirement that chains of unbounded length
remain anchored to one fixed ordinary start is also a strong global
constraint.  At present this is better viewed as a precise open interface
than as evidence on which side of the interface the truth lies.

## Stress tests and sensitivity

Write

```math
q=\Pr(\neg C),
\qquad
r=\Pr(\neg S\mid\neg C).
```

Then $\Pr(\neg S)=qr$.  Three useful calibrations are:

| Calibration | $q$ | $r$ | $qr=\Pr(\neg S)$ |
|---|---:|---:|---:|
| Optimistic stochastic model | 1% | 1% | 0.01% |
| Central estimate | 3% | 3.33% | 0.10% |
| Skeptical exceptional-orbit model | 10% | 10% | 1.00% |

The central number should move if either conditional changes.  Values far
above the skeptical row would amount to a strong belief in an obstruction
shared by every admissible map; the current repository does not provide
evidence of that strength.

The opposite extreme is also unjustified.  It would be a mistake to infer
universal truth directly from negative drift, Tao's almost-all theorem, or
finite verification.  All three can miss one exceptional ordinary integer.
The $0.1\%$ central estimate is therefore much larger than the literal random
model would suggest.

## Likely proof strategies

Conditional on the target being provable by humans in less than 100,000
expert-years, my distribution over the main ingredient of that proof is:

| Main proof mechanism | Conditional probability |
|---|---:|
| A fixed-start, growing-rank $p$-adic or sparse-sum theorem | 32% |
| A specially designed admissible map with a new global invariant | 28% |
| Adelic or entropy rigidity combining finite-place and Archimedean information | 16% |
| A proof of a stronger statement, including classical Collatz or positive density | 10% |
| Rational-base symbolic dynamics | 8% |
| An unexpected method outside these categories | 6% |

These routes may overlap.  The table classifies a future proof by what appears
to do the decisive work.

### 1. Fixed-start growing-rank valuation control

The clearest current reduction asks for a valuation estimate whose loss is
subexponential in the number of completed division blocks.  Existing
fixed-rank $S$-unit, sparse-polynomial, and Subspace-Theorem bounds deteriorate
too quickly as the rank grows.  A theorem that exploits the staircase support
and the fact that every term comes from one fixed ordinary orbit would attack
the obstruction directly.

### 2. A map designed around a global invariant

Finite residue itineraries and finite-state carry models are too flexible, so
the invariant would need genuinely unbounded memory.  Plausible forms include
an infinite-state potential, a canonical rational-base representation, or a
quantity distributed across several valuations.  The aim would be to make a
long succession of proportionally growing division gaps globally
inconsistent, even though every finite prefix is locally realizable.

### 3. Adelic or entropy rigidity

Long expanding gaps create strong divisibility at the base prime, while the
corresponding endpoints acquire Archimedean height and uncontrolled prime
support elsewhere.  A product-formula, entropy, or height argument might show
that the same fixed orbit cannot repeatedly satisfy all of these constraints
at positive density.  This would have to use correlations across an
unbounded sequence of blocks; one-block height bounds are insufficient.

### 4. A stronger theorem proves $S$ as a corollary

A proof of classical Collatz would settle $S$ immediately.  So would a proof
that one admissible map has positive lower division density, or that all
orbits of one expanding admissible map are eventually periodic and each
eventual cycle contains a division step.  Since $S$ is much weaker, it is more
likely to be proved directly, but a stronger breakthrough has enough
independent probability to deserve its own category.

### 5. Rational-base symbolic dynamics

The orbit coding resembles normalization in a nonintegral base.  A sufficiently
strong theorem excluding extremely sparse division symbols on every ordinary
integer expansion could prove the target.  Present equidistribution and
stopping results do not provide that universal, fixed-start conclusion.

## Provability calibration

The $90\%$ probability of a proof below 100,000 expert-years is not a claim
that the theorem is close.  That threshold is enormous.  The present work
proves a logarithmic lower bound, permits arbitrarily large logarithmic
constants across a family of maps, and sharply describes what failure would
entail.  It does not yet supply the theorem that distinguishes one infinite
ordinary orbit from unconstrained finite itineraries.

The $2.5\%$ independence probability reflects the logical complexity of a
concrete arithmetic statement with alternating quantifiers and the general
ability of broader Collatz-like systems to encode computation.  It remains
low because there is no independence construction for this restricted
existential target, nor evidence that every potential witness is logically
pathological.

The $0.2\%$ galactic category is smaller still.  It requires a finite ZFC
proof whose search complexity, conceptual prerequisites, or minimum
description length defeats a civilization controlling at least one galaxy.
That is possible in principle but is a much stronger claim than saying that
current mathematics lacks the right fixed-start theorem.

The main proof routes should not be read as independent bets.  A successful
global invariant may be proved with an adelic estimate; a rational-base
theorem may supply the needed growing-rank valuation bound.  The table assigns
credit to the ingredient that seems most likely to do the decisive work.

## What would change the assessment

Evidence that would materially increase $\Pr(\neg S)$ includes:

- a theorem forcing a sparse-division ordinary orbit for every admissible map;
- an explicit general mechanism turning topologically bad $B$-adic
  itineraries into ordinary nonnegative starting integers; or
- a sparse-division counterexample for several arithmetically distinct,
  strongly negative-drift maps.

Merely finding a divergent Collatz orbit would increase $\Pr(\neg C)$ much
more than $\Pr(\neg S)$ unless its division count were itself only
logarithmic.  Likewise, failure of another finite-rank proof technique should
mostly shift mass among the proof-difficulty categories.

Evidence that would settle or strongly support $S$ includes:

- a fixed-start valuation estimate with subexponential loss in the number of
  blocks;
- a global invariant for one admissible map that rules out bounded-spacing
  chains of proportional gaps; or
- any proof of the Positive Division-Density Conjecture or of classical
  Collatz.
