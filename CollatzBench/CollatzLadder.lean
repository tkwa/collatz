import CollatzBench.Collatz
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Finset.Interval
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Order.Filter.AtTopBot.CountablyGenerated

/-!
# Dedicated Collatz ladder statements

This file formalizes the headline propositions in the dedicated Markdown
documents linked from `collatz/difficulty_ladder.md`.
-/

namespace CollatzBench.Collatz

open Filter Function

/-- A nonnegative residue-affine map whose nonexpanding branches are division. -/
structure PureDivisionMap where
  base : ℕ
  base_ge_two : 2 ≤ base
  expanding : Finset ℕ
  multiplier : ℕ → ℕ
  offset : ℕ → ℕ

namespace PureDivisionMap

/-- The exact parameter restrictions used by the dedicated pure-division notes. -/
def Admissible (M : PureDivisionMap) : Prop :=
  M.expanding.Nonempty ∧
    ∀ r ∈ M.expanding,
      1 ≤ r ∧ r < M.base ∧ M.base < M.multiplier r ∧
        Nat.Coprime (M.multiplier r) M.base

/-- The residue-class map, with quotient `n / B` and remainder `n % B`. -/
def step (M : PureDivisionMap) (n : ℕ) : ℕ :=
  if n % M.base ∈ M.expanding then
    M.multiplier (n % M.base) * (n / M.base) + M.offset (n % M.base)
  else
    n / M.base

/-- Division-branch inputs among the first `K` iterates. -/
def divisionCount (M : PureDivisionMap) (n K : ℕ) : ℕ :=
  ((Finset.range K).filter fun j =>
    (M.step^[j]) n % M.base ∉ M.expanding).card

/-- Positive lower asymptotic division density, in an equivalent epsilon form. -/
def HasPositiveDivisionDensity (M : PureDivisionMap) (n : ℕ) : Prop :=
  ∃ ε : ℝ, 0 < ε ∧ ∃ K₀ : ℕ, ∀ K : ℕ, K₀ ≤ K →
    ε ≤ (M.divisionCount n K : ℝ) / (K : ℝ)

/-- Uniform-residue negative drift for a pure-division map. -/
def HasNegativeDrift (M : PureDivisionMap) : Prop :=
  M.expanding.prod M.multiplier < M.base ^ M.base

/-- The orbit enters a period containing at least one division branch. -/
def EventuallyCyclesWithDivision (M : PureDivisionMap) (n : ℕ) : Prop :=
  ∃ k p : ℕ, 1 ≤ p ∧
    (M.step^[k + p]) n = (M.step^[k]) n ∧
    1 ≤ ((Finset.range p).filter fun j =>
      (M.step^[k + j]) n % M.base ∉ M.expanding).card

end PureDivisionMap

/-- Even inputs among the first `K` shortcut-Collatz iterates. -/
def shortcutDivisionCount (n K : ℕ) : ℕ :=
  ((Finset.range K).filter fun j => Even ((shortcut^[j]) n)).card

/-- `pure_division_polylogarithmic_contraction.md`. -/
def PureDivisionPolylogarithmicContraction : Prop :=
  ∃ M : PureDivisionMap, M.Admissible ∧ ∃ δ : ℝ, 0 < δ ∧
    ∀ n : ℕ, ∃ K₀ : ℕ, ∀ K : ℕ, K₀ ≤ K →
      Real.rpow (Real.log K) (1 + δ) ≤ (M.divisionCount n K : ℝ)

/-- `power_or_density_contraction.md`. -/
def PowerOrDensityContraction : Prop :=
  (∃ M : PureDivisionMap, M.Admissible ∧
      ∀ n : ℕ, M.HasPositiveDivisionDensity n) ∨
    (∃ δ : ℝ, 0 < δ ∧ ∀ n : ℕ, ∃ K₀ : ℕ, ∀ K : ℕ, K₀ ≤ K →
      Real.rpow K δ ≤ (shortcutDivisionCount n K : ℝ))

/-- `periodicity_or_classical_density.md`. -/
def PeriodicityOrClassicalDensity : Prop :=
  (∃ M : PureDivisionMap,
      M.Admissible ∧ M.HasNegativeDrift ∧
        ∀ n : ℕ, M.EventuallyCyclesWithDivision n) ∨
    (∀ n : ℕ, ∃ ε : ℝ, 0 < ε ∧ ∃ K₀ : ℕ, ∀ K : ℕ, K₀ ≤ K →
      ε ≤ (shortcutDivisionCount n K : ℝ) / (K : ℝ))

/-- The repeated-random-walk moment function in the stopping-constant note. -/
noncomputable def rrwMoment (θ : ℝ) : ℝ :=
  (1 / 2 : ℝ) * Real.rpow 2 θ + (1 / 2 : ℝ) * Real.rpow (2 / 3) θ

/-- The Legendre-transform rate function in the stopping-constant note. -/
noncomputable def rrwRate (a : ℝ) : ℝ :=
  sSup {y : ℝ | ∃ θ : ℝ, y = θ * a - Real.log (rrwMoment θ)}

/-- The equation and lower branch condition defining the RRW constant. -/
def SatisfiesRRWConstantEquation (γ : ℝ) : Prop :=
  γ * rrwRate (1 / γ) = 1 ∧
    ((1 / 2 : ℝ) * Real.log (4 / 3))⁻¹ < γ

/-- Shortcut stopping time, using the supplied universal termination witness. -/
noncomputable def stoppingTime (h : ClassicalCollatz) (n : ℕ) : ℕ :=
  if hn : 0 < n then Nat.find (h n hn) else 0

/-- Maximum shortcut stopping time over positive starts at most `X`. -/
noncomputable def maximumStoppingTime (h : ClassicalCollatz) (X : ℕ) : ℕ :=
  (Finset.Icc 1 X).sup (stoppingTime h)

/-- `scaled_stopping_constant.md`, including the note's unique model constant. -/
def ExactMaximumStoppingConstant : Prop :=
  ∃ γ : ℝ,
    SatisfiesRRWConstantEquation γ ∧
    (∀ γ' : ℝ, SatisfiesRRWConstantEquation γ' → γ' = γ) ∧
    ∃ h : ClassicalCollatz,
      Tendsto
        (fun X : ℕ => (maximumStoppingTime h X : ℝ) / Real.log X)
        atTop (nhds γ)

/-- A member of the restricted positive, coprime, one-expander family. -/
structure OneExpanderMap where
  base : ℕ
  base_ge_two : 2 ≤ base
  expandingResidue : ℕ
  residue_pos : 1 ≤ expandingResidue
  residue_lt : expandingResidue < base
  multiplier : ℕ
  multiplier_gt : base < multiplier
  multiplier_lt : multiplier < base ^ base
  multiplier_coprime : Nat.Coprime multiplier base
  offset : ℕ

namespace OneExpanderMap

/-- The one-expander map from quotient and remainder. -/
def step (M : OneExpanderMap) (n : ℕ) : ℕ :=
  if n % M.base = M.expandingResidue then
    M.multiplier * (n / M.base) + M.offset
  else
    n / M.base

/-- An orbit eventually repeats with a positive period. -/
def EventuallyPeriodic (M : OneExpanderMap) (n : ℕ) : Prop :=
  ∃ k p : ℕ, 1 ≤ p ∧ (M.step^[k + p]) n = (M.step^[k]) n

/-- A recurrence is reached by a real-valued upper bound on the entry time. -/
def EntersCycleBy (M : OneExpanderMap) (n : ℕ) (bound : ℝ) : Prop :=
  ∃ k p : ℕ, 1 ≤ p ∧ (k : ℝ) ≤ bound ∧
    (M.step^[k + p]) n = (M.step^[k]) n

end OneExpanderMap

/-- `one_expander_universal_periodicity.md`. -/
def UniversalOneExpanderPeriodicity : Prop :=
  ∀ M : OneExpanderMap, ∀ n : ℕ, M.EventuallyPeriodic n

/-- `one_expander_polynomial_preperiod.md`. -/
def UniversalOneExpanderPolynomialPreperiod : Prop :=
  ∀ M : OneExpanderMap, ∃ A C : ℝ, 0 < A ∧ 0 < C ∧ ∃ X₀ : ℕ,
    ∀ X : ℕ, X₀ ≤ X → ∀ n : ℕ, n ≤ X →
      M.EntersCycleBy n (C * Real.rpow X A)

/-- `one_expander_logarithmic_preperiod.md`. -/
def UniversalOneExpanderLogarithmicPreperiod : Prop :=
  ∀ M : OneExpanderMap, ∃ C : ℝ, 0 < C ∧ ∃ X₀ : ℕ,
    ∀ X : ℕ, X₀ ≤ X → ∀ n : ℕ, n ≤ X →
      M.EntersCycleBy n (C * Real.log (X + 2))

end CollatzBench.Collatz
