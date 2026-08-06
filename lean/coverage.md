# Lean coverage

Every entry below maps an actual mathematical statement—not merely a
filename—to a closed Lean proposition.  Displayed quantifiers, constants,
maps, circuit semantics, Euclidean geometry, measures, and asymptotics are
implemented directly; no user-supplied semantic schema stands in for them.

## Dedicated ladder-file coverage

This is the completion criterion for issue `#1`: every dedicated conjecture
Markdown file linked as a milestone from a `difficulty_ladder.md` is covered.
Inline rungs, background conjectures, `dev_notes/`, and folders without a
difficulty ladder are outside that criterion.

| Source file | Lean declaration | Coverage |
|---|---|---|
| `collatz/weakest_collatzlike_conjecture.md` | `Collatz.WeakestScaledRay` | Exact signed unit-map, scaled-ray, independence, and pointwise asymptotic quantifiers. |
| `collatz/pure_division_polylogarithmic_contraction.md` | `Collatz.PureDivisionPolylogarithmicContraction` | Exact admissible map family, common exponent, all starts, and start-dependent thresholds. |
| `collatz/power_or_density_contraction.md` | `Collatz.PowerOrDensityContraction` | Exact two-route disjunction, with pointwise density and common fixed-power alternatives. |
| `collatz/periodicity_or_classical_density.md` | `Collatz.PeriodicityOrClassicalDensity` | Exact negative-drift cycle-with-division or classical positive-density disjunction. |
| `collatz/scaled_stopping_constant.md` | `Collatz.ExactMaximumStoppingConstant` | Direct RRW moment/rate equation, unique branch-selected constant, stopping time, running maximum, and full limit. |
| `collatz/one_expander_universal_periodicity.md` | `Collatz.UniversalOneExpanderPeriodicity` | Exact restricted one-expander parameters and universal eventual-periodicity quantifiers. |
| `collatz/one_expander_polynomial_preperiod.md` | `Collatz.UniversalOneExpanderPolynomialPreperiod` | Exact map-dependent positive constants, eventual polynomial bound, and worst-case starts. |
| `collatz/one_expander_logarithmic_preperiod.md` | `Collatz.UniversalOneExpanderLogarithmicPreperiod` | Exact map-dependent logarithmic cycle-entry bound over all starts up to `X`. |
| `circuit-lower-bounds/weakest_unrestricted_circuit_improvement.md` | `CircuitLowerBounds.WeakestUnrestrictedCircuitImprovement` | Direct verifier-machine `NP`, acyclic complete-`B₂` circuits, minimum gate count, and unbounded-additive limsup quantifiers. |
| `kakeya/weakest_kakeya_improvement.md` | `Kakeya.WeakestKakeyaImprovement` | Direct compact Kakeya sets, volume-neighborhood upper Minkowski dimension, direction-separated tube maximal estimate, shaded estimate, and exact three-way disjunction. |

## Additional statement coverage

These closed propositions remain useful anchors but are not needed for the
dedicated-file completion criterion.

| Task | Source statement | Lean declaration | Coverage |
|---|---|---|---|
| abc | `abc/difficulty_ladder.md`: fixed `δ > 0` improving `1/3` for every positive coprime `a+b=c` | `ABC.WeakestAbcLike` | Exact, including the global implied constant. |
| abc | `abc/README.md`: for every `ε > 0`, `c ≤ K(ε) rad(abc)^(1+ε)` | `ABC.AbcConjecture` | Exact; no effectivity is asserted. |
| Collatz | `collatz/difficulty_ladder.md`: every positive shortcut-Collatz start reaches `1` | `Collatz.ClassicalCollatz` | Exact, using `C(2q)=q` and `C(2q+1)=3q+2`. |
| Mahler | `mahler/algebraic_multiplier_for_powers_of_e.md`: some positive real algebraic `x` has `{x e^n}` recurrently bounded below | `Mahler.AlgebraicMultiplierEscape` | Exact equivalent recurrent-epsilon form. |
| Mahler | `mahler/README.md`: some coprime subquadratic rational base forces every positive real start to escape `[0,1/q)` | `Mahler.RationalBaseUniversalEscape` | Exact `∃p ∃q ∀x ∃n` quantifier order. |
| Twin prime | `twin-prime/difficulty_ladder.md`: `H₁≤244` or `EH[1/2+δ]` for some fixed `δ>0` | `PrimeGaps.WeakestPrimePattern` | Exact prime-power sum, reduced residue classes, cutoff, and all-log-power error bounds. |
| Twin prime | `twin-prime/difficulty_ladder.md`: infinitely many prime pairs at distance 2 | `PrimeGaps.TwinPrimeConjecture` | Exact. |
| Twin prime | `twin-prime/difficulty_ladder.md`: one-variable Bateman–Horn | `PrimeGaps.BatemanHorn` | Exact polynomial family, root counts, ordered singular series, logarithmic integral, and asymptotic. |

## Deliberate exclusions

The library does not claim coverage of ordinary inline ladder rungs,
explanatory literature conjectures, historical examples, rejected variants,
or supporting targets in `dev_notes/`, `collatz/progress/`, and
`collatz/blockers/`. General Vojta remains excluded because the pinned mathlib
does not supply the necessary arithmetic-geometry semantics.
