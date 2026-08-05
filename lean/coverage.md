# Lean coverage

This manifest maps actual mathematical statements—not merely filenames—to
Lean declarations. “Exact” means the displayed quantifiers and mathematical
objects are implemented directly. “Typed schema” means the quantifier shape
is formalized over an explicit interface whose foundational objects must be
instantiated by a future domain library.

| Task | Source statement | Lean declaration | Coverage |
|---|---|---|---|
| abc | `abc/difficulty_ladder.md`, score 0.2: fixed `δ > 0` improving `1/3` for every positive coprime `a+b=c` | `ABC.WeakestAbcLike` | Exact, including the global implied constant. |
| abc | `abc/README.md`: for every `ε > 0`, `c ≤ K(ε) rad(abc)^(1+ε)` | `ABC.AbcConjecture` | Exact; no effectivity is asserted. |
| abc | `abc/difficulty_ladder.md`, score 10: truncated general Vojta for smooth projective varieties, normal-crossings divisors, and bounded-degree algebraic points | `ABC.GeneralVojtaSchema`, `ABC.GeneralVojta` | Typed schema. Variety/divisor/point types, finite places, heights, discriminant, truncated counting, degree, ample data, and proper exceptional sets are all explicit. A foundational arithmetic-geometry implementation is out of scope. |
| Collatz | `collatz/weakest_collatzlike_conjecture.md`: one signed unit map and exact scaled ray `d u^k`, all `k ≥ 0`, with `u` multiplicatively independent of `B`, pointwise `D_K = ω(log K)` | `Collatz.WeakestScaledRay` | Exact. The map is fixed before `d,u,k`; `k` is fixed before the `K→∞` limit. |
| Collatz | `collatz/collatz_ladder.md`, score 6: every positive shortcut-Collatz start reaches `1` | `Collatz.ClassicalCollatz` | Exact, using `C(2q)=q` and `C(2q+1)=3q+2`. |
| Mahler | `mahler/algebraic_multiplier_for_powers_of_e.md`: some positive real algebraic `x` has `{x e^n}` recurrently bounded below by one fixed `ε>0` | `Mahler.AlgebraicMultiplierEscape` | Exact, using the equivalent `∀N ∃n≥N` form from the Markdown. |
| Twin prime | `twin-prime/difficulty_ladder.md`, score 0.3: `H₁≤244` or `EH[1/2+δ]` for some fixed `δ>0`, with exponent below `1` | `PrimeGaps.WeakestPrimePattern` | Gap branch exact. EH branch is a typed analytic schema retaining the range `1/2 < θ < 1`, standard-discrepancy obligation, `X^θ` cutoff, all-log-power error bounds, and OR quantifier. |
| Twin prime | `twin-prime/difficulty_ladder.md`, score 6: infinitely many prime pairs at distance 2 | `PrimeGaps.TwinPrimeConjecture` | Exact. |
| Twin prime | `twin-prime/difficulty_ladder.md`, score 8: Bateman–Horn for every fixed admissible finite family of distinct irreducible integer polynomials with positive leading coefficients | `PrimeGaps.PolynomialFamily`, `PrimeGaps.BatemanHornSchema`, `PrimeGaps.BatemanHorn` | Algebraic family and local condition exact; singular series and logarithmic integral are separate fields with explicit canonical-definition obligations in the typed analytic schema. |

## Intentionally out of scope

At the user's direction, this PR does not formalize every intermediate ladder
rung or every conjecture mentioned as background. In particular it excludes
the non-frontier Collatz variants, intermediate abc/Vojta and twin-prime
rungs, the separate rational-base Mahler conjecture, explanatory literature
conjectures, historical examples, and open supporting targets in `progress/`
or `blockers/`. Those files were inspected for scope and naming conflicts but
are not claimed as covered here.
