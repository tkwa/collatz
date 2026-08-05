# Weak Orbit Problems

This repository collects deliberately modest statements about deterministic sequences
whose typical behavior appears random but whose explicit or exceptional
orbits are difficult to control.

- [`collatz/`](collatz/) contains the generalized Collatz conjectures and the
  associated work on division-branch frequency.
- [`mahler/`](mahler/) contains minimal escape problems for fractional parts
  of powers with an explicit transcendental base and with an existentially
  chosen subquadratic rational base.

The main Collatz and rational-base problems retain difficult universal
quantifiers over starting values.  The Collatz folder also maintains a moving
weakest candidate on a fixed sparse starting family, with the trivial
relaxations recorded explicitly.  The explicit-transcendental conjecture
fixes the base $e$ but permits one existentially chosen positive algebraic
starting value, asking only that the fractional parts not converge to zero.

## Criteria

We want statements which are
- probably open
- egregiously weaker than what is "probviously" true; that is, what a heuristic argument would imply

Conjectures should be the weakest reasonable open version of their type, and may be weakened from well-known versions by
- introducing existential quantifiers
