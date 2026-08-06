import CollatzBench.ABC
import CollatzBench.Collatz
import CollatzBench.CollatzLadder
import CollatzBench.CircuitLowerBounds
import CollatzBench.Kakeya
import CollatzBench.Mahler
import CollatzBench.PrimeGaps

/-! Compile-time coverage checks for the declarations promised in `lean/coverage.md`. -/

def dedicatedLadderCoverage : List (String × Prop) :=
  [ ("collatz/weakest_collatzlike_conjecture.md",
      CollatzBench.Collatz.WeakestScaledRay),
    ("collatz/pure_division_polylogarithmic_contraction.md",
      CollatzBench.Collatz.PureDivisionPolylogarithmicContraction),
    ("collatz/power_or_density_contraction.md",
      CollatzBench.Collatz.PowerOrDensityContraction),
    ("collatz/periodicity_or_classical_density.md",
      CollatzBench.Collatz.PeriodicityOrClassicalDensity),
    ("collatz/scaled_stopping_constant.md",
      CollatzBench.Collatz.ExactMaximumStoppingConstant),
    ("collatz/one_expander_universal_periodicity.md",
      CollatzBench.Collatz.UniversalOneExpanderPeriodicity),
    ("collatz/one_expander_polynomial_preperiod.md",
      CollatzBench.Collatz.UniversalOneExpanderPolynomialPreperiod),
    ("collatz/one_expander_logarithmic_preperiod.md",
      CollatzBench.Collatz.UniversalOneExpanderLogarithmicPreperiod),
    ("circuit-lower-bounds/weakest_unrestricted_circuit_improvement.md",
      CollatzBench.CircuitLowerBounds.WeakestUnrestrictedCircuitImprovement),
    ("kakeya/weakest_kakeya_improvement.md",
      CollatzBench.Kakeya.WeakestKakeyaImprovement) ]

#check (dedicatedLadderCoverage : List (String × Prop))

#check (CollatzBench.ABC.WeakestAbcLike : Prop)
#check (CollatzBench.ABC.AbcConjecture : Prop)

#check (CollatzBench.Collatz.WeakestScaledRay : Prop)
#check (CollatzBench.Collatz.ClassicalCollatz : Prop)
#check (CollatzBench.Collatz.PureDivisionPolylogarithmicContraction : Prop)
#check (CollatzBench.Collatz.PowerOrDensityContraction : Prop)
#check (CollatzBench.Collatz.PeriodicityOrClassicalDensity : Prop)
#check (CollatzBench.Collatz.ExactMaximumStoppingConstant : Prop)
#check (CollatzBench.Collatz.UniversalOneExpanderPeriodicity : Prop)
#check (CollatzBench.Collatz.UniversalOneExpanderPolynomialPreperiod : Prop)
#check (CollatzBench.Collatz.UniversalOneExpanderLogarithmicPreperiod : Prop)

#check (CollatzBench.CircuitLowerBounds.WeakestUnrestrictedCircuitImprovement : Prop)

#check (CollatzBench.Kakeya.WeakestKakeyaImprovement : Prop)

#check (CollatzBench.Mahler.AlgebraicMultiplierEscape : Prop)
#check (CollatzBench.Mahler.RationalBaseUniversalEscape : Prop)

#check (CollatzBench.PrimeGaps.WeakestPrimePattern : Prop)
#check (CollatzBench.PrimeGaps.chebyshevPsiInProgression : ℕ → ℕ → ℕ → ℝ)
#check (CollatzBench.PrimeGaps.ElliottHalberstamAt : ℝ → Prop)
#check (CollatzBench.PrimeGaps.TwinPrimeConjecture : Prop)
#check CollatzBench.PrimeGaps.PolynomialFamily
#check (CollatzBench.PrimeGaps.BatemanHorn : Prop)
