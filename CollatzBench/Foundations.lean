import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Finset.Card

/-!
# Shared asymptotic definition
-/

namespace CollatzBench

open Filter Function

/-- `f K = ω(log K)`, expressed without choosing a convergence rate. -/
def Superlogarithmic (f : ℕ → ℕ) : Prop :=
  Tendsto (fun K : ℕ => (f K : ℝ) / Real.log K) atTop atTop

end CollatzBench
