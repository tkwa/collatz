import CollatzBench.Foundations
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Nat.Prime.Basic

/-!
# Closed abc statements

This file contains only conjectures whose mathematical objects can be stated
directly in the pinned Lean and mathlib environment.
-/

namespace CollatzBench.ABC

/-- Product of the distinct prime divisors of `n`. -/
def radical (n : ℕ) : ℕ :=
  ((Finset.range (n + 1)).filter fun p => Nat.Prime p ∧ p ∣ n).prod id

/-- Positive coprime triples `a + b = c`. -/
def IsAbcTriple (a b c : ℕ) : Prop :=
  0 < a ∧ 0 < b ∧ 0 < c ∧ Nat.Coprime a b ∧ a + b = c

/-- The current Weakest abc-like conjecture: improve the exponent `1/3`. -/
def WeakestAbcLike : Prop :=
  ∃ δ C : ℝ, 0 < δ ∧ 0 < C ∧ ∀ a b c : ℕ,
    IsAbcTriple a b c →
      Real.log c ≤ C * (radical (a * b * c) : ℝ) ^ ((1 : ℝ) / 3 - δ)

/-- The abc conjecture over `ℚ`, with no effectivity assertion. -/
def AbcConjecture : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ K : ℝ, 0 < K ∧ ∀ a b c : ℕ,
    IsAbcTriple a b c →
      (c : ℝ) ≤ K * (radical (a * b * c) : ℝ) ^ (1 + ε)

end CollatzBench.ABC
