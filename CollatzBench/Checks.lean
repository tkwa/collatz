import CollatzBench.ABC
import CollatzBench.Collatz
import CollatzBench.Mahler
import CollatzBench.PrimeGaps

/-! Compile-time coverage checks for the declarations promised in `lean/coverage.md`. -/

#check CollatzBench.ABC.WeakestAbcLike
#check CollatzBench.ABC.AbcConjecture
#check CollatzBench.ABC.GeneralVojtaSchema
#check CollatzBench.ABC.GeneralVojta

#check CollatzBench.Collatz.WeakestScaledRay
#check CollatzBench.Collatz.ClassicalCollatz

#check CollatzBench.Mahler.AlgebraicMultiplierEscape

#check CollatzBench.PrimeGaps.WeakestPrimePattern
#check CollatzBench.PrimeGaps.TwinPrimeConjecture
#check CollatzBench.PrimeGaps.PolynomialFamily
#check CollatzBench.PrimeGaps.BatemanHorn
