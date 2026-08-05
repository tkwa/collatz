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
  Collatz, and increasingly uniform generalized-map theorems.
- [`twin-prime/`](twin-prime/) tracks the best unconditional prime-gap bound
  together with progress in the distribution of primes.  Its notes also
  explain why the parity obstruction may make generalized
  Elliott--Halberstam progress non-decisive.
- [`mahler/`](mahler/) contains weak escape problems for fractional parts of
  powers.  A calibrated ladder for this folder has not yet been developed.

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

For a target-normalized ladder, score `0` is the current rigorous state and
score `10` is the target conjecture.  Let $W(x)$ denote the target-relevant
human-equivalent **replacement work** represented by state $x$: roughly, the
work a capable human research community would have needed to reproduce the
proved portfolio from the baseline, using the cheapest credible route.
Abandoned work and unrelated difficult theorems do not increase $W$.

The intended calibration is

```math
W(x)\approx C e^{S(x)}.
```

Thus one score point represents about a factor of $e$ in cumulative credited
work.  Anchoring the baseline at `0` and the solution at `10` asserts that the
solution represents about $e^{10}\approx 22{,}000$ times the baseline work.
If that ratio is judged implausible for a problem, the honest generalization
is $W(x)\approx C e^{\lambda S(x)}$ with a stated $\lambda$; a multiplicative
constant alone cannot change the endpoint ratio.

Numerical scores are value contours through the multidimensional state, not a
claim that proofs must traverse a linear list of lemmas.  One theorem may jump
several contours.  Transition costs should generally increase near the target,
but they need not increase exponentially as a function of the underlying
mathematical milestones.

## Target score and extended reach

The target-normalized score answers: **how much target-relevant work has been
banked toward this conjecture?**  Some folders also include an extended reach
ladder above the target.  That second scale measures theorem strength and
generality; it should not be confused with the target-normalized work score.

For example, the twin-prime target has score `10` on its own benchmark, while
an extended number-theory ladder can place twin primes below de Polignac,
prime-tuples, Hardy--Littlewood, and Bateman--Horn statements.

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
