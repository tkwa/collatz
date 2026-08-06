# CollatzBench

This repository develops benchmarks for superhuman mathematical-research
systems: systems capable of making real, checkable progress toward problems
that may remain far beyond the human frontier.

A binary benchmark records only whether a famous conjecture was solved, which is 
is too coarse for long-horizon research. This benchmark includes more granular
continuous scoring.

## Repository structure

- [`collatz/`](collatz/) studies the Collatz conjecture.
- [`twin-prime/`](twin-prime/) includes the twin prime conjecture and Bateman--Horn.
- [`abc/`](abc/) tracks progress on the abc conjecture, and from there to the general Vojta conjecture.
- Under development
  - [`mahler/`](mahler/) contains weak escape problems for fractional parts of
  powers.  A calibrated ladder for this folder has not yet been developed.

Cross-problem design questions are developed in [`theory/`](theory/).  The
[historical ladder backtest](theory/historical_ladder_backtest.md) compares
scalar aggregation rules against bounded gaps, ternary Goldbach, prime
progressions, and the Ricci-flow route to Poincare.

### Structure of each folder

Each folder should contain:

- A `README.md` concisely explaining the problem
- One conjecture called **weakest_[folder_name]_problem**, the weakest known open problem in its class.
- Possibly other conjecture files
- `difficulty_ladder.md` containing the difficulty ladder, which ranges
  from 0 to ~10 depending on the problem.