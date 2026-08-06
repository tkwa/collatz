import CollatzBench.ABC
import CollatzBench.Collatz
import CollatzBench.Mahler
import CollatzBench.PrimeGaps

/-! Compile-time coverage checks for the declarations promised in `lean/coverage.md`. -/

#check (CollatzBench.ABC.WeakestAbcLike : Prop)
#check (CollatzBench.ABC.AbcConjecture : Prop)

#check (CollatzBench.Collatz.WeakestScaledRay : Prop)
#check (CollatzBench.Collatz.ClassicalCollatz : Prop)

#check (CollatzBench.Mahler.AlgebraicMultiplierEscape : Prop)
#check (CollatzBench.Mahler.RationalBaseUniversalEscape : Prop)

#check (CollatzBench.PrimeGaps.WeakestPrimePattern : Prop)
#check (CollatzBench.PrimeGaps.chebyshevPsiInProgression : ℕ → ℕ → ℕ → ℝ)
#check (CollatzBench.PrimeGaps.ElliottHalberstamAt : ℝ → Prop)
#check (CollatzBench.PrimeGaps.TwinPrimeConjecture : Prop)
#check CollatzBench.PrimeGaps.PolynomialFamily
#check (CollatzBench.PrimeGaps.BatemanHorn : Prop)
