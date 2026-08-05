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
- [`twin-prime/`](twin-prime/) is a scalar disjunctive ladder from the best
  unconditional prime-gap bound through twin primes to Bateman--Horn.
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

The natural mathematical state may be multidimensional, but the displayed
score should be one-dimensional.  Incomparable proof routes can be combined
in a logical disjunction when doing so materially improves path tracking.
Known implications are applied automatically, without double-counting a
theorem and its routine corollaries.

## Difficulty scores

Score `0` is the current rigorous state, and the first positive score must be
an open problem.  Scores are chosen so the expected logarithm of
human-expert-years rises as smoothly as the mathematics permits.  Each rung
reports that estimate explicitly; a one-point interval is not assumed to have
the same exchange rate in every folder unless the annotations support it.

One theorem may jump several contours.  At integer $n$, the ladder therefore
also estimates the probability of an $n$-skip: reaching $n+1$ with less than
`1.1` times the human-equivalent effort needed to reach $n$.  A skip
probability above `50%` is a warning to merge, reorder, or replace rungs.

The score measures theorem reach and smooth trackable progress, not the
probability of a solution by a date.  A headline conjecture may occur below
the endpoint when stronger natural statements provide useful headroom.  In
the prime-pattern ladder, twin primes is score `6` and Bateman--Horn is score
`8`; scores `9` and `10` remain available for harder cross-task anchors.

## Evaluation rules

- Score the proved mathematical artifact, not the solver's reputation or the
  historical fame of the theorem.
- A theorem outside the displayed rungs receives no formal score until a
  proved consequence establishes a rung.  Possible method transfer may be
  reported separately.
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
