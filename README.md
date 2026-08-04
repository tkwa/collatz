# Weak Orbit Problems

This repository collects very weak statements about deterministic sequences
whose typical behavior appears random but whose explicit or exceptional
orbits are difficult to control.

- [`collatz/`](collatz/) contains the generalized Collatz conjectures and the
  associated work on division-branch frequency.
- [`mahler/`](mahler/) contains minimal escape problems for fractional parts
  of powers with an explicit transcendental base and with an existentially
  chosen subquadratic rational base.

The Collatz and rational-base problems retain difficult universal quantifiers
over starting values. The explicit-transcendental conjecture fixes the base
$e$ but permits one existentially chosen positive algebraic starting value,
asking only that the fractional parts not converge to zero.
