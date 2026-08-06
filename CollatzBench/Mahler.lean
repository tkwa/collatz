import CollatzBench.Foundations
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.FieldTheory.IsAlgClosed.Basic

/-!
# Algebraic-multiplier escape for powers of `e`
-/

namespace CollatzBench.Mahler

/-- Fractional part of `x e^n`. -/
noncomputable def expFractionalPart (x : ℝ) (n : ℕ) : ℝ :=
  Int.fract (x * Real.exp n)

/-- Some positive algebraic multiplier stays positively separated infinitely often. -/
def AlgebraicMultiplierEscape : Prop :=
  ∃ x : ℝ, IsAlgebraic ℚ x ∧ 0 < x ∧
    ∃ ε : ℝ, 0 < ε ∧ ∀ N : ℕ, 1 ≤ N →
      ∃ n : ℕ, N ≤ n ∧ ε ≤ expFractionalPart x n

/-- Some subquadratic rational base forces every positive real start to escape. -/
def RationalBaseUniversalEscape : Prop :=
  ∃ p q : ℕ,
    Nat.Coprime p q ∧ 1 < q ∧ q < p ∧ p < q ^ 2 ∧
      ∀ x : ℝ, 0 < x → ∃ n : ℕ,
        (1 : ℝ) / q ≤ Int.fract (x * ((p : ℝ) / q) ^ n)

end CollatzBench.Mahler
