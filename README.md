# CollatzBench

This repository develops benchmarks for superhuman mathematical-research
systems: systems capable of making real, checkable progress toward problems
that may remain far beyond the human frontier.

A binary benchmark records only whether a famous conjecture was solved, which
is too coarse for long-horizon research. CollatzBench adds more granular,
continuous scoring.

## Repository structure

- [`collatz/`](collatz/) studies the Collatz conjecture.
- [`twin-prime/`](twin-prime/) continues from the twin prime conjecture through
  one-variable Bateman--Horn to its multivariate extension over $\mathbb Z$.
- [`abc/`](abc/) tracks progress on the abc conjecture and onward to the
  general Vojta conjecture.
- [`kakeya/`](kakeya/) tracks geometric and maximal-function forms of the
  Euclidean Kakeya conjecture.
- [`circuit-lower-bounds/`](circuit-lower-bounds/) tracks unrestricted
  nonuniform Boolean-circuit lower bounds from the explicit-function linear
  frontier toward superpolynomial and exponential lower bounds.
- Under development:
  - [`mahler/`](mahler/) contains weak escape problems for fractional parts of
    powers. Its difficulty ladder is not yet calibrated.
- [`lean/`](lean/) maps every dedicated conjecture file linked from a
  difficulty ladder, plus the weakest, strongest, and two important interior
  milestones from every calibrated ladder folder, to closed propositions in
  the pinned Lean and mathlib environment.

Cross-problem design questions are developed in [`theory/`](theory/). The
[historical ladder backtest](theory/historical_ladder_backtest.md) compares
scalar aggregation rules across several mathematical histories.

## Scoring and authoring

The authoritative calibration and ladder-construction rules are in the
[development guide](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0).
Contributor-facing folder and documentation conventions are maintained in
[`AGENTS.md`](AGENTS.md).
