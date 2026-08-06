# Lean coverage

This manifest maps actual mathematical statements—not merely filenames—to
Lean declarations. Every conjecture listed here is a closed proposition:
its displayed quantifiers and mathematical objects are implemented directly,
without an abstract user-supplied schema standing in for missing semantics.

| Task | Source statement | Lean declaration | Coverage |
|---|---|---|---|
| abc | `abc/difficulty_ladder.md`: fixed `δ > 0` improving `1/3` for every positive coprime `a+b=c` | `ABC.WeakestAbcLike` | Exact, including the global implied constant. |
| abc | `abc/README.md`: for every `ε > 0`, `c ≤ K(ε) rad(abc)^(1+ε)` | `ABC.AbcConjecture` | Exact; no effectivity is asserted. |
| Collatz | `collatz/weakest_collatzlike_conjecture.md`: one signed unit map and exact scaled ray `d u^k`, all `k ≥ k₀`, with `u` multiplicatively independent of `B`, pointwise `D_K = ω(log K)` | `Collatz.WeakestScaledRay` | Exact. The map and `d,u,k₀` are fixed before `k`; each `k` is fixed before the `K→∞` limit. |
| Collatz | `collatz/difficulty_ladder.md`: every positive shortcut-Collatz start reaches `1` | `Collatz.ClassicalCollatz` | Exact, using `C(2q)=q` and `C(2q+1)=3q+2`. |
| Mahler | `mahler/algebraic_multiplier_for_powers_of_e.md`: some positive real algebraic `x` has `{x e^n}` recurrently bounded below by one fixed `ε>0` | `Mahler.AlgebraicMultiplierEscape` | Exact, using the equivalent `∀N ∃n≥N` form from the Markdown. |
| Mahler | `mahler/README.md`: some coprime subquadratic rational base forces every positive real start to escape `[0,1/q)` | `Mahler.RationalBaseUniversalEscape` | Exact, including the `∃p ∃q ∀x ∃n` quantifier order and one-hit conclusion. |
| Twin prime | `twin-prime/difficulty_ladder.md`: `H₁≤244` or `EH[1/2+δ]` for some fixed `δ>0`, with exponent below `1` | `PrimeGaps.WeakestPrimePattern` | Exact. The EH branch directly defines the prime-power sum, reduced residue classes, `X^θ` cutoff, and all-log-power error bounds. |
| Twin prime | `twin-prime/difficulty_ladder.md`: infinitely many prime pairs at distance 2 | `PrimeGaps.TwinPrimeConjecture` | Exact. |
| Twin prime | `twin-prime/difficulty_ladder.md`: Bateman–Horn for every fixed admissible finite family of distinct irreducible integer polynomials with positive leading coefficients | `PrimeGaps.PolynomialFamily`, `PrimeGaps.BatemanHorn` | Exact. Root counts, ordered singular-series partial products, the generalized logarithmic integral, degree factor, and asymptotic are defined directly. |

## Intentionally out of scope

General Vojta is omitted because the pinned mathlib does not yet supply the
needed arithmetic-geometry semantics for Weil heights, normal-crossings
divisors, truncated counting functions, and bounded-degree algebraic points.

The library does not formalize every intermediate ladder rung or every
conjecture mentioned as background. It excludes unformalized Collatz rungs,
including the exact maximum stopping constant, universal one-expander
periodicity, the polynomial-preperiod rung, and the logarithmic-preperiod
endpoint; intermediate abc/Vojta and twin-prime rungs; the multivariate
Bateman--Horn endpoint; explanatory literature conjectures; historical
examples; and supporting targets in `collatz/progress/` or
`collatz/blockers/`. None is claimed as covered here.
