# Frontier Mathematics Benchmarks

This repository develops benchmarks for superhuman mathematical-research
systems: systems capable of making real, checkable progress toward problems
that may remain far beyond the human frontier.

A binary benchmark records only whether a famous conjecture was solved.  That
is too coarse for long-horizon research.  A system might prove a major lemma,
remove an entire obstruction, or improve the best unconditional theorem
without finishing the headline problem.  Conversely, it might prove a very
difficult but largely unrelated theorem.  These benchmarks are intended to
distinguish those cases.

## Problem folders

- [`collatz/`](collatz/) studies contraction frequency, recurrence, classical
  Collatz, sharp classical stopping-time asymptotics, and a restricted
  one-expander family near the possible universality boundary.
- [`twin-prime/`](twin-prime/) tracks the best unconditional prime-gap bound
  together with progress in the distribution of primes.  Its notes also
  explain why the parity obstruction may make generalized
  Elliott--Halberstam progress non-decisive.
- [`mahler/`](mahler/) contains weak escape problems for fractional parts of
  powers.  A calibrated ladder for this folder has not yet been developed.
- [`abc/`](abc/) tracks the size of a coprime triple against its radical, from
  the current best unconditional exponent up to the general Vojta conjecture.
  Its headline conjecture sits below the endpoint of its ladder; both use the
  same repository-wide score calibration as the other folders.

Cross-problem design questions are developed in [`theory/`](theory/).  The
[historical ladder backtest](theory/historical_ladder_backtest.md) compares
scalar aggregation rules against bounded gaps, ternary Goldbach, prime
progressions, and the Ricci-flow route to Poincare.

Each folder should distinguish proved theorems, conditional implications,
finite computation, heuristics, and subjective difficulty judgments.  There
should be at most one conjecture called **Weakest** in a folder; that name is
reserved for a moving frontier statement and should be revised when a weaker
natural statement is shown to remain nontrivial.

## What a benchmark state records

The underlying implication lattice may be multidimensional.  Preserve enough
structure to distinguish the main proof routes, then select natural lattice
points for the displayed scalar rungs.  When no single chain tracks the
important routes smoothly, a rung may join statements with logical
disjunction.

Other developments may be scientifically important without establishing a
displayed rung.  Record them as route evidence rather than assigning
speculative fractional credit.  Apply known implications automatically so a
theorem and its routine corollary are not counted twice.

## Difficulty scores

Scores use one repository-wide difficulty calibration; they are not reset so
that each folder's headline conjecture has the same endpoint.  Score `0` is the
current rigorous frontier in a folder, and its first positive rung must be
open.  The cross-problem anchors are:

- score `5` represents, very roughly, one to two doublings of cumulative
  human-equivalent effort in the relevant area beyond its 2026 frontier;
- score `10` is roughly the median difficulty of the three individual
  problems BB(6), Schanuel's conjecture, and the general Vojta conjecture; and
- score `20` is roughly the difficulty of BB(7).

For the score-`5` anchor, declare the relevant area before selecting its
rungs.  Let $D_A$ be its 2026 stock of work already directed at the benchmark,
let $G_A$ be broader but credibly relevant work within that area, and set

```math
B_A=D_A+0.5G_A.
```

This does not count all effort in mathematics.  Let $F_A(s)$ be future effort
strategically directed at first reaching score $s$.  The cumulative clock is

```math
C_A(s)=B_A+F_A(s).
```

A central estimate at score `5` should have $C_A(5)/B_A$ between `2` and `4`.
Declaring the area first prevents moving its boundary merely to preserve a
favored rung.

Numerical scores are contours through a multidimensional theorem state, not a
claim that proofs must traverse a linear list of lemmas.  One theorem may jump
several contours.  Milestones should be chosen or replaced to make expected
log effort increase smoothly.  Prefer lattice points that preserve several
natural implication paths.  A rung may be a disjunction of independently
ordered statements only when that makes progress significantly smoother.

At integer $n$, an $n$-skip occurs when reaching $n+1$ takes less than `1.1`
times the cumulative human-equivalent effort needed to reach $n$.  Prospective
audits therefore compare $C_A(n+1)$ with $C_A(n)$, including the 2026 stock in
both quantities, rather than comparing future effort alone.
If any estimated integer-skip probability exceeds `50%`, replace or reorder
the relevant rungs.  If no arrangement brings the maximum below `50%`, use
fewer integer levels rather than inventing cosmetic milestones.

## Headline targets and stronger rungs

A folder's headline target sits wherever these common anchors place it.  A
folder may continue to stronger statements without changing scales.  A
separate target-specific progress diagnostic is permissible, but it must be
labeled separately and must not be presented as the repository difficulty
score.

## Evaluation rules

- Score the proved mathematical artifact, not the solver's reputation or the
  historical fame of the theorem.
- A theorem outside the recorded coordinates receives no formal ladder score
  until a proved consequence moves a coordinate.  Possible method transfer
  may be reported separately.
- Prefer a range or sensitivity analysis when human-equivalent costs are
  uncertain.
- Freeze a scoring model for a benchmark evaluation.  New mathematical
  information may justify a later version, but should not retroactively move
  scores within one run.
- Never treat bounded computation or favorable experiments as a universal
  proof.

These ladders are research instruments, not literature consensus.  Their
milestones and costs should be revised as new implications, obstructions, and
proof routes become understood.
