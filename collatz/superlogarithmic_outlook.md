# Outlook for the superlogarithmic target

## The target

The project asks whether there is an admissible Collatz-like map for which,
for every fixed starting value $n$,

```math
D_K(n)=\omega(\log K).
```

Here $D_K(n)$ is the number of division-branch steps among the first $K$
iterates.  This is an existential statement about the choice of map, followed
by a universal statement about all of its ordinary nonnegative-integer
orbits.  The target is not tied to the initial $4/3$-type diagnostic map or to
any other particular candidate family.

## Subjective probability distribution

The following probabilities are judgments, not mathematical results.  The
categories are intended to be mutually exclusive.

| Outcome | Probability |
|---|---:|
| The target is false | 12% |
| The target is true but independent of ZFC | 3% |
| The target is true and ZFC-provable, but remains unproved even by a galactic civilization | 1% |
| The target is eventually proved, but not in less than 100,000 human expert-years | 4% |
| **The target is provable by humans in less than 100,000 expert-years** | **80%** |

A **galactic civilization** here literally means a civilization that controls
the resources of at least one galaxy.  The third category excludes
independence: it says that a finite ZFC proof exists, but that even such a
civilization never finds it.  This allows for proofs whose search complexity,
conceptual prerequisites, or minimum description length remain prohibitive at
galactic scale.

The fourth category covers a true, accessible theorem that is eventually
proved by a more capable civilization, or by humanity only after expending at
least 100,000 expert-years.  It is separate from the final category, which
requires a human proof search costing strictly less than that threshold.

The 12% assigned to falsity is substantial because the existential freedom to
choose a map does not remove the fixed-start obstruction.  Every finite
residue itinerary is realizable, and a bad ordinary orbit might sustain
division times growing exponentially in their index.  On the other hand, the
same freedom to design the map is the main reason falsity is not the leading
outcome: the statement asks for only one admissible witness and only a
superlogarithmic frequency of division steps, not boundedness or periodicity.

Independence receives a low probability because the statement is a concrete
arithmetical existence claim with considerable finite combinatorial and
$p$-adic structure.  Collatz-like statements can encode computation, so
independence is not implausible in principle, but there is currently no
specific encoding or logical evidence pointing to independence for this
existential target.

## Likely proof strategies

Conditional on the target being provable by humans in less than 100,000
expert-years, my distribution over the main ingredient of that proof is:

| Main proof mechanism | Conditional probability |
|---|---:|
| A fixed-start, growing-rank $p$-adic or sparse-sum theorem | 45% |
| A specially designed admissible map with a new global invariant | 25% |
| Adelic or entropy rigidity combining finite-place and Archimedean information | 20% |
| Rational-base symbolic dynamics | 7% |
| An unexpected method outside these categories | 3% |

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

### 4. Rational-base symbolic dynamics

The orbit coding resembles normalization in a nonintegral base.  A sufficiently
strong theorem excluding extremely sparse division symbols on every ordinary
integer expansion could prove the target.  Present equidistribution and
stopping results do not provide that universal, fixed-start conclusion.

## Why the estimate is not more optimistic

The current work proves a logarithmic lower bound, permits arbitrarily large
logarithmic constants across a family of maps, and sharply describes what
failure would entail.  It does not yet supply the theorem that distinguishes
an infinite ordinary orbit from its completely unconstrained finite
itineraries.  The missing result is therefore not a routine strengthening of
an existing estimate.

At the same time, the obstacle now has a fairly precise form: rule out
positive-density chains of proportional division-time gaps along one fixed
ordinary orbit, or prove a subexponential growing-rank valuation bound.  That
specificity is why the dominant probability remains on eventual human
provability rather than falsity, independence, or permanent inaccessibility.

## Token expenditure

The initial research attempt used approximately **3.58 million tokens** out of
the authorized **10 million-token** budget.  This is the best available
goal-tracker estimate, rather than an exact billing measurement.  The estimate
includes the attempted proof search, exact checks, literature investigation,
and the write-ups in `asymptotic_progress/` and `blockers/`.

Probability assessment and token count recorded on 2026-08-02.
