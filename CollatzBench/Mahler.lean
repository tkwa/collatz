import CollatzBench.Foundations
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.FieldTheory.IsAlgClosed.Basic

/-!
# Weak escape conjectures for powers
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

/-- Fractional part along a rational base `p/q`. -/
noncomputable def rationalBaseFractionalPart (p q : ℕ) (x : ℝ) (n : ℕ) : ℝ :=
  Int.fract (x * ((p : ℝ) / q) ^ n)

/-- One coprime subquadratic rational base forces every positive start to escape. -/
def RationalBaseUniversalEscape : Prop :=
  ∃ p q : ℕ,
    1 < q ∧ q < p ∧ p < q ^ 2 ∧ Nat.Coprime p q ∧
    ∀ x : ℝ, 0 < x → ∃ n : ℕ,
      (1 : ℝ) / q ≤ rationalBaseFractionalPart p q x n

end CollatzBench.Mahler
