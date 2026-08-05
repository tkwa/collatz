# abc and Vojta

This folder tracks proved progress on the size of a coprime triple relative to
its radical, from the current unconditional exponent up to the general Vojta
conjecture.

Throughout, $a+b=c$ is a triple of coprime positive integers with
$a,b,c\gt 0$, and

```math
R=\mathrm{rad}(abc)=\prod_{p\mid abc}p .
```

The abc conjecture asserts that for every $\varepsilon\gt 0$ there is
$K(\varepsilon)$ with $c\le K(\varepsilon)R^{1+\varepsilon}$.

## Why this folder exists

The other folders in this repository track problems whose headline statement
is the endpoint of the ladder.  This folder is shaped differently, and that is
the point of including it.  abc is a *specialization* of a single much larger
statement: Vojta's conjecture with truncated counting functions, applied to
$\mathbb{P}^1$ with the divisor $\lbrace 0,1,\infty\rbrace$ and truncation
level one, is abc.  The same master statement specializes to Faltings'
theorem, Bombieri--Lang, Szpiro, and Hall.

So the folder has genuine headroom above its famous problem, in the same way
that [`collatz/`](../collatz/) has headroom above the classical conjecture.
A system that proves abc has not exhausted the folder.

## Scoring convention used here

This folder uses the repository-wide difficulty calibration.  Score `0` is
the current rigorous frontier, ordinary abc over $\mathbb Q$ is score `5`, and
general Vojta is score `10`.  abc sits below the endpoint because it is a
specialization, not because this folder resets the scale.  These scores are
directly comparable in meaning with the other folders, subject to the wide
uncertainty stated in each ladder.

## Files

- [`difficulty_ladder.md`](difficulty_ladder.md) is the primary scale.
- [`effectivity_and_routes.md`](effectivity_and_routes.md) records the
  orthogonal effectivity coordinate, the plateau-then-cliff risk from the
  function-field and Nevanlinna analogues, and the adjudication rule.

## Recorded state

| Coordinate | Meaning |
|---|---|
| $\Theta$ | The best proved unconditional upper bound for $\log c$ as a function of $R$, ordered by growth. |
| $V=(d,r)$ | The dimension and algebraic-point-degree reach of a proved truncated Vojta statement. |
| $E$ | The effectivity state: whether the constants in the current best bound are computable. See [`effectivity_and_routes.md`](effectivity_and_routes.md). |

The scalar ladder selects implication points from $\Theta$ and $V$.
Effectivity remains an auxiliary diagnostic rather than an independent scalar
rung: Roth-, Schmidt-, and Faltings-type arguments are structurally
ineffective, while Baker's method is effective but loses an exponential
factor.

## Status classes

Following the repository convention, statements below are tagged:

- **[proved]** an unconditional theorem;
- **[implication]** a proved reduction between open statements;
- **[heuristic]** a probabilistic or analogy-based expectation;
- **[subjective]** a difficulty judgment of this document, not literature
  consensus.

Every score assignment in this folder is **[subjective]**.
