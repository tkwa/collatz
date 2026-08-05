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

This folder follows the **Collatz-style** convention: score `0` is the current
rigorous frontier, the headline conjecture sits at **5--6**, and score `10` is
the map-universal endpoint.  It does **not** follow the
[twin-prime](../twin-prime/difficulty_ladder.md) convention, where the
headline conjecture is calibrated to `10`.

This inconsistency is deliberate but must not be hidden: **scores from this
folder are not comparable with twin-prime scores without a stated conversion.**
Any cross-folder aggregation rule should be tested against
[`theory/historical_ladder_backtest.md`](../theory/historical_ladder_backtest.md)
before use.

## Files

- [`difficulty_ladder.md`](difficulty_ladder.md) is the primary scale.
- [`effectivity_and_routes.md`](effectivity_and_routes.md) records the second
  coordinate (effectivity), the plateau-then-cliff risk from the
  function-field and Nevanlinna analogues, and the adjudication rule.

## The two coordinates

| Coordinate | Meaning |
|---|---|
| $\Theta$ | The best proved unconditional upper bound for $\log c$ as a function of $R$, ordered by growth. |
| $E$ | The effectivity state: whether the constants in the current best bound are computable. See [`effectivity_and_routes.md`](effectivity_and_routes.md). |

The two are not reducible to one number.  Roth-, Schmidt-, and
Faltings-type arguments are structurally ineffective; Baker's method is
effective but loses an exponential factor.  A rung can clear one wall without
touching the other, so the benchmark records both.

## Status classes

Following the repository convention, statements below are tagged:

- **[proved]** an unconditional theorem;
- **[implication]** a proved reduction between open statements;
- **[heuristic]** a probabilistic or analogy-based expectation;
- **[subjective]** a difficulty judgment of this document, not literature
  consensus.

Every score assignment in this folder is **[subjective]**.
