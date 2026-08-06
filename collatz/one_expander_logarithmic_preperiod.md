# The Universal One-Expander Logarithmic-Preperiod Conjecture

This is the generalized-map component of score `11*`, the starred terminal
score in the [Collatz-like difficulty ladder](difficulty_ladder.md).  That
score conjoins it with the [exact classical maximum stopping-time
constant](scaled_stopping_constant.md).

## Conjecture

Fix an admissible map $T$ from the
[one-expander family](one_expander_universal_periodicity.md#map-family), and
let $R_T(X)$ be its maximum
[cycle-entry time](one_expander_polynomial_preperiod.md#cycle-entry-time) over
starts at most $X$.  Then

```math
R_T(X)=O_T(\log(X+2)).
```

Thus the implied constant may depend on the entire fixed map, including how
close $a$ is to $B^B$ and the offset $c$; no parameter-uniform estimate is
asserted.  This statement implies the polynomial-preperiod rung and universal
one-expander periodicity.

## Optimal order

Logarithmic order cannot be improved for this family.  Since the expanding
residue $e$ is nonzero,

```math
T(B^j)=B^{j-1}
\qquad(j\ge1).
```

If some power $B^j$ with $j\ge0$ is periodic, all periodic powers with
nonnegative exponent lie on the same finite cycle; let $J$ be the largest
exponent among them.  For every $k\gt J$, the start $B^k$ then needs exactly
$k-J$ steps to enter that cycle.  If no such power is periodic, the same
initial orbit segment gives $\rho_T(B^k)\ge k$.  Monotonicity of $R_T$ in $X$
consequently gives

```math
R_T(X)\ge
\left\lfloor\frac{\log X}{\log B}\right\rfloor-O_T(1).
```

The conjecture therefore asks for the optimal worst-case order, not merely a
convenient quantitative strengthening.

## Why the endpoint is starred

Random-residue and negative-drift models suggest logarithmic order for every
fixed map.  The project's literature audit found neither an admissible map
with a superlogarithmic preperiod maximum nor a computational-universality or
independence result that survives all of the positive, coprime, pure-division,
one-expander, and $a\lt B^B$ restrictions.  The related scope distinctions are
recorded in the [periodicity note](one_expander_universal_periodicity.md#why-the-periodicity-family-stops-here).

The remaining concern is worst-case rather than typical behavior: a sparse
set of starts could follow unusually long near-neutral residue itineraries or
encode long but finite transients.  That possibility is not concrete evidence
of falsity, but it keeps the endpoint in the development guide's borderline
band, so the score is marked with an asterisk.

## Status

Provisional open conjecture.  No proof, counterexample, or claim that this is
a standard named literature conjecture is made.
