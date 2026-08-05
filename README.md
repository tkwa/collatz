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
  Its headline conjecture sits below the endpoint of its ladder, so its scores
  are not directly comparable with twin-prime scores without a stated
  conversion.

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

The natural mathematical state is usually multidimensional.  A benchmark
should retain the smallest number of dimensions that still separates the
main proof routes.  The twin-prime benchmark, for example, uses only:

1. the best unconditional gap bound; and
2. the strongest applicable theorem on the distribution of primes.

Other developments may be scientifically important without immediately
moving either coordinate.  They should be recorded as route evidence, not
converted into target progress merely because they are impressive.

Known implications are applied automatically.  If a distribution theorem
implies a better unconditional gap bound, the state moves in both coordinates
at no additional credited cost.  This prevents double-counting the theorem
and its routine corollary.

## Difficulty scores

Scores use one repository-wide difficulty calibration; they are not reset so
that each folder's headline conjecture has the same endpoint.  Score `0` is the
current rigorous frontier in a folder.  The cross-problem anchors are:

- score `5` represents, very roughly, one to two doublings of cumulative
  human-equivalent effort in the relevant area beyond its 2026 frontier;
- score `10` is roughly the median difficulty of the three individual
  problems BB(6), Schanuel's conjecture, and the general Vojta conjecture; and
- score `20` is roughly the difficulty of BB(7).

For the score-`5` anchor, declare the relevant area before selecting its
rungs.  Let $B_A$ be that area's 2026 stock of directed-equivalent effort and
let $F_A(s)$ be future effort strategically directed at first reaching score
$s$.  General historical effort in the declared area counts as about half as
useful as directed strategic effort; effort outside the area is not included.
The cumulative clock is

```math
C_A(s)=B_A+F_A(s).
```

A central estimate at score `5` should have $C_A(5)/B_A$ between `2` and `4`.
Declaring the area first prevents moving its boundary merely to preserve a
favored rung.

Numerical scores are contours through a multidimensional theorem state, not a
claim that proofs must traverse a linear list of lemmas.  One theorem may jump
several contours.  Milestones should be chosen or replaced to make expected
log effort increase smoothly; a rung may be a disjunction of independently
ordered statements when that materially reduces skip risk.

At integer $n$, an $n$-skip occurs when reaching $n+1$ takes less than `1.1`
times the cumulative human-equivalent effort needed to reach $n$.  Prospective
audits therefore compare $C_A(n+1)$ with $C_A(n)$, including the 2026 stock in
both quantities, rather than comparing future effort alone.

## Headline targets and extended reach

A folder's headline target sits wherever these common anchors place it.  A
folder may continue to stronger statements without changing scales.  A
separate target-specific progress diagnostic is permissible, but it must be
labeled separately and must not be presented as the repository difficulty
score.

## Evaluation rules

- Score the proved mathematical artifact, not the solver's reputation or the
  historical fame of the theorem.
- A theorem outside the recorded coordinates receives no formal target score
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
