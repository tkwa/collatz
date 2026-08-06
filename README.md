# CollatzBench

This repository develops benchmarks for superhuman mathematical-research
systems: systems capable of making real, checkable progress toward problems
that may remain far beyond the human frontier.

A binary benchmark records only whether a famous conjecture was solved, which
is too coarse for long-horizon research. CollatzBench adds more granular,
continuous scoring.

## Repository structure

- [`collatz/`](collatz/) studies the Collatz conjecture.
- [`twin-prime/`](twin-prime/) includes the twin prime conjecture and
  Bateman--Horn.
- [`abc/`](abc/) tracks progress on the abc conjecture and onward to the
  general Vojta conjecture.
- Under development:
  - [`mahler/`](mahler/) contains weak escape problems for fractional parts of
    powers. Its difficulty ladder is not yet calibrated.
- [`lean/`](lean/) maps the conjectures that can currently be stated faithfully
  in the pinned Lean and mathlib environment to closed propositions.

Cross-problem design questions are developed in [`theory/`](theory/). The
[historical ladder backtest](theory/historical_ladder_backtest.md) compares
scalar aggregation rules across several mathematical histories.

## Structure of each problem folder

Each problem folder should contain:

- a concise `README.md` explaining the problem;
- at most one conjecture designated **Weakest**, maintained as the weakest
  natural open problem currently known in its class;
- any other conjecture files under descriptive names; and
- a `difficulty_ladder.md` whose table places the selected milestones on the
  shared scale, with an endpoint near, below, or above `10` as appropriate.

Supporting research may be kept in `progress/` and precise obstructions in
`blockers/`. The authoritative calibration and ladder-construction rules are
in the
[development guide](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0).
