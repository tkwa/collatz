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

/-! Four representative statements per calibrated ladder folder: the weakest,
strongest, and two important interior milestones. -/
def representativeLadderCoverage : List (String × String × Prop) :=
  [ ("abc", "weakest", CollatzBench.ABC.WeakestAbcLike),
    ("abc", "abc", CollatzBench.ABC.AbcConjecture),
    ("abc", "V_2_1", CollatzBench.ABC.TruncatedVojtaDimensionTwoRationalPoints),
    ("abc", "strongest", CollatzBench.ABC.GeneralVojta),
    ("circuit-lower-bounds", "weakest",
      CollatzBench.CircuitLowerBounds.WeakestUnrestrictedCircuitImprovement),
    ("circuit-lower-bounds", "fixed-polynomial",
      CollatzBench.CircuitLowerBounds.FixedPolynomialGain),
    ("circuit-lower-bounds", "NP-not-subset-P-poly",
      CollatzBench.CircuitLowerBounds.NPNotSubsetPPoly),
    ("circuit-lower-bounds", "strongest",
      CollatzBench.CircuitLowerBounds.StrongEventualExponentialCircuitHypothesis),
    ("collatz", "weakest", CollatzBench.Collatz.WeakestScaledRay),
    ("collatz", "classical", CollatzBench.Collatz.ClassicalCollatz),
    ("collatz", "exact-stopping-constant",
      CollatzBench.Collatz.ExactMaximumStoppingConstant),
    ("collatz", "strongest",
      CollatzBench.Collatz.UniversalOneExpanderLogarithmicPreperiod),
    ("kakeya", "weakest", CollatzBench.Kakeya.WeakestKakeyaImprovement),
    ("kakeya", "first-fixed-checkpoint",
      CollatzBench.Kakeya.FirstKakeyaCheckpoint),
    ("kakeya", "all-dimensional-maximal",
      CollatzBench.Kakeya.AllDimensionalMaximal),
    ("kakeya", "strongest",
      CollatzBench.Kakeya.AllDimensionalPolynomialWolffMaximal),
    ("twin-prime", "weakest", CollatzBench.PrimeGaps.WeakestPrimePattern),
    ("twin-prime", "twin-primes", CollatzBench.PrimeGaps.TwinPrimeConjecture),
    ("twin-prime", "Bateman-Horn", CollatzBench.PrimeGaps.BatemanHorn),
    ("twin-prime", "strongest", CollatzBench.PrimeGaps.MultivariateBatemanHorn) ]

#check (representativeLadderCoverage : List (String × String × Prop))

#check (CollatzBench.ABC.WeakestAbcLike : Prop)
#check (CollatzBench.ABC.AbcConjecture : Prop)
#check (CollatzBench.ABC.TruncatedVojtaDimensionTwoRationalPoints : Prop)
#check (CollatzBench.ABC.GeneralVojta : Prop)

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
#check (CollatzBench.CircuitLowerBounds.FixedPolynomialGain : Prop)
#check (CollatzBench.CircuitLowerBounds.NPNotSubsetPPoly : Prop)
#check (CollatzBench.CircuitLowerBounds.StrongEventualExponentialCircuitHypothesis : Prop)

#check (CollatzBench.Kakeya.WeakestKakeyaImprovement : Prop)
#check (CollatzBench.Kakeya.FirstKakeyaCheckpoint : Prop)
#check (CollatzBench.Kakeya.AllDimensionalMaximal : Prop)
#check (CollatzBench.Kakeya.AllDimensionalPolynomialWolffMaximal : Prop)

#check (CollatzBench.Mahler.AlgebraicMultiplierEscape : Prop)
#check (CollatzBench.Mahler.RationalBaseUniversalEscape : Prop)

#check (CollatzBench.PrimeGaps.WeakestPrimePattern : Prop)
#check (CollatzBench.PrimeGaps.chebyshevPsiInProgression : ℕ → ℕ → ℕ → ℝ)
#check (CollatzBench.PrimeGaps.ElliottHalberstamAt : ℝ → Prop)
#check (CollatzBench.PrimeGaps.TwinPrimeConjecture : Prop)
#check CollatzBench.PrimeGaps.PolynomialFamily
#check (CollatzBench.PrimeGaps.BatemanHorn : Prop)
#check (CollatzBench.PrimeGaps.MultivariateBatemanHorn : Prop)
