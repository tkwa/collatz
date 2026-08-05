import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Tactic

/-!
# Shared definitions for benchmark statements

The definitions in this file deliberately spell out quantifier order.  In
particular, `Superlogarithmic f` is pointwise in the function `f`: it does not
assert a rate uniform over a family of starting values.
-/

namespace CollatzBench

open Filter Function

/-- `f K = ω(log K)`, expressed without choosing a convergence rate. -/
def Superlogarithmic (f : ℕ → ℕ) : Prop :=
  Tendsto (fun K : ℕ => (f K : ℝ) / Real.log K) atTop atTop

/-- A positive lower asymptotic density.  The witness may depend on `f`. -/
def PositiveLowerDensity (f : ℕ → ℕ) : Prop :=
  ∃ ε : ℝ, 0 < ε ∧ ∀ᶠ K : ℕ in atTop, ε ≤ (f K : ℝ) / K

/-- A positive lower density with a prescribed common lower bound. -/
def LowerDensityAtLeast (ε : ℝ) (f : ℕ → ℕ) : Prop :=
  0 < ε ∧ ∀ᶠ K : ℕ in atTop, ε ≤ (f K : ℝ) / K

/-- The orbit of `x` under `f` is eventually periodic. -/
def EventuallyPeriodic {α : Type*} (f : α → α) (x : α) : Prop :=
  ∃ k p : ℕ, 0 < p ∧ (f^[k + p]) x = (f^[k]) x

/-- A property holds for infinitely many natural-number indices. -/
def InfinitelyOftenNat (P : ℕ → Prop) : Prop :=
  ∀ N : ℕ, ∃ n : ℕ, N ≤ n ∧ P n

end CollatzBench
