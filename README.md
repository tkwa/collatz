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

The authoritative calibration, ladder-shape, endpoint, and skip rules live in
the [development guide](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0).
Scores use that one repository-wide scale; they are not reset so that each
folder's headline conjecture has the same endpoint.

For an area $A$, let $E_A(s)$ be the expected future human-expert-years of
strategically directed research, measured from the July 2026 frontier, needed
to first reach score $s$.  Folder tables report the central elicitation

```math
\ell_A(s)=\log_{10}E_A(s).
```

The current frontier has $E_A(0)=0$, so its logarithm is undefined.  This
future-effort clock is not a historical work stock, replacement cost, or count
of all effort in mathematics.  Its uncertainty is a distribution, even when a
table gives one central logarithm.

Numerical scores are contours through a multidimensional theorem state, not a
claim that proofs must traverse a linear list of lemmas.  One theorem may jump
several contours.  Below the guide's upper calibration point, roughly even
increments in $\ell_A$ are a spacing diagnostic rather than an exact global
conversion formula.  No intermediate score, including `5`, is an independent
anchor.  Prefer natural implication points to cosmetic milestones, and use a
disjunction of independently ordered statements only when it materially
improves spacing.

For an integer contour $n$ that has an $n+1$ contour in the same ladder, the
reported skip probability is

```math
\Pr\bigl(E_A(n+1)\lt1.1E_A(n)\bigr).
```

The first open rung is audited separately because $E_A(0)=0$; a terminal
integer has no next-contour skip probability.

## Headline targets and stronger rungs

A folder's headline target sits wherever the shared calibration places it.  A
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
