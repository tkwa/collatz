# Outlook for the all-start superlogarithmic target

## The target

This note assesses the **All-Start Nonnegative Superlogarithmic Contraction
Conjecture**: whether there is an admissible Collatz-like map for which, for
every fixed starting value $n$,

```math
D_K(n)=\omega(\log K).
```

Here $D_K(n)$ is the number of contracting-branch steps among the first $K$
iterates.  In a pure-division witness, including the shortcut Collatz map,
these are exactly the division-branch steps.  This is an existential statement
about the choice of map, followed by a universal statement about all of its
ordinary nonnegative-integer orbits.  The target is not restricted to the
pure-division subfamily.

It does not assess the repository's moving
[Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md), which
requires the same asymptotic for only infinitely many members of one
existentially chosen exact scaled ray whose base is multiplicatively
independent of the map base.  The
[difficulty ladder](difficulty_ladder.md) places that sparse-ray statement at
score `0.2` and a stronger pure-division polylogarithmic statement at score
`1`.  The all-start superlogarithmic target here is a descriptive lattice
point between them by implication, not a separate scalar rung.  The probability
and proof-difficulty judgments below should not be transferred to either
displayed rung without a separate recalibration.

## Classical Collatz and the target

Let

- $C$ be the classical Collatz conjecture; and
- $S$ be the existential superlogarithmic statement above.

The shortcut Collatz map is admissible.  If $C$ is true, every positive orbit
of that map eventually enters $1\leftrightarrow2$, where its contracting,
pure-division branch has density $1/2$.  It follows rigorously that

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
   $2^{71}$.  The linked project reports the current frontier; no
   counterexample occurs in the stated exhaustive range.

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

There is also positive heuristic evidence from the pure-division subfamily,
which is a sufficient source of witnesses for $S$.  In the ceiling-division
family, expansion has probability about $1/B$ under a uniform-residue model
and division has probability about $(B-1)/B$; increasing $B$ makes the typical
logarithmic drift strongly negative.  The proved lower bound has an
[arbitrarily large coefficient](progress/research_state.md#proved-logarithmic-lower-bound)
of $\log K$ as the map varies.  Neither observation proves the fixed-map
asymptotic statement, but both make a universal no-go theorem for all maps
less likely than a proof obstruction for the candidates studied so far.

## What the repository's obstructions do and do not show

Most detailed obstructions concern the pure-division route, not every
admissible contracting map.  Their technical statements and proofs are
canonical in the [research state](progress/research_state.md) and the
[moving-endpoint-core
analysis](blockers/moving_endpoint_core_obstruction.md).  Their evidential
roles are different:

| Result | What it supports | What it does not support |
|---|---|---|
| Every finite itinerary is realizable | Local forbidden-pattern and finite-state arguments cannot prove the target. | One ordinary integer realizes an arbitrary infinite itinerary; the realizing start may change with the prefix. |
| Failure forces bounded-spacing chains of proportional gaps along one fixed orbit | Any counterexample has strong global structure, and the missing fixed-start theorem is precise. | Such an infinite chain exists; the reduction is conditional on failure. |
| Existing valuation, height, sparse-sum, and rational-base methods stop at that interface | Several natural proof architectures are insufficient. | The conjecture is false or the interface cannot be crossed by another method or map. |

There is nevertheless some truth-level caution: bad symbolic behavior is
possible at every finite scale, ordinary itineraries need not follow the
random-residue model, and no studied expanding pure-division map is known to
satisfy universal positive division density.  This justifies a nonzero
falsity probability, but it is far from evidence that **every** admissible map
has an exceptional ordinary orbit.

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

The first, third, and fifth categories attack the fixed-start interface from
different directions; the canonical technical formulation is the
[missing-theorem statement](blockers/moving_endpoint_core_obstruction.md#10-an-explicit-statement-of-the-missing-theorem).
The designed-map category instead seeks global structure that avoids the
moving-core obstruction.  The stronger-theorem category includes classical
Collatz, universal positive division density, or periodicity with a division
step in every eventual cycle.  The routes overlap, so the table assigns credit
to the ingredient that does the decisive work rather than asserting that the
mechanisms are disjoint.

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

## What would change the assessment

Evidence that would materially increase $\Pr(\neg S)$ includes:

- a theorem forcing a sparse contracting-branch count on some ordinary orbit
  of every admissible map;
- an explicit general mechanism turning topologically bad $B$-adic
  itineraries into ordinary nonnegative starting integers; or
- sparse-contraction counterexamples for several arithmetically distinct,
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
