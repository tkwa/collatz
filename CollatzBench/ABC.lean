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

/--
The arithmetic data entering truncated-counting Vojta.  Mathlib does not yet
provide arithmetic heights or normal-crossings divisors on general schemes,
so those numerical invariants are explicit typed fields rather than an
uninterpreted predicate standing for the final conjecture.
-/
structure TruncatedVojtaDatum where
  Point : Type
  dimension : ℕ
  pointDegree : Point → ℕ
  smoothProjective : Prop
  simpleNormalCrossingsDivisor : Prop
  logCanonicalHeight : Point → ℝ
  ampleHeight : Point → ℝ
  truncatedCounting : Point → ℝ
  logarithmicDiscriminant : Point → ℝ
  zariskiClosed : Set Point → Prop

/-- The direct truncated Vojta inequality for bounded dimension and degree. -/
def TruncatedVojtaAt (dimensionBound degreeBound : ℕ) : Prop :=
  ∀ V : TruncatedVojtaDatum,
    V.smoothProjective → V.simpleNormalCrossingsDivisor →
    V.dimension ≤ dimensionBound →
    ∀ ε : ℝ, 0 < ε →
      ∃ exceptional : Set V.Point, V.zariskiClosed exceptional ∧
        exceptional ≠ Set.univ ∧
        ∃ C : ℝ, ∀ x : V.Point,
          V.pointDegree x ≤ degreeBound → x ∉ exceptional →
            V.logCanonicalHeight x ≤
              V.truncatedCounting x + V.logarithmicDiscriminant x +
                ε * V.ampleHeight x + C

/-- Score `5`: truncated Vojta for rational points on curves and surfaces. -/
def TruncatedVojtaDimensionTwoRationalPoints : Prop :=
  TruncatedVojtaAt 2 1

/-- Score `10`: general truncated-counting Vojta in every finite dimension
and for every fixed finite algebraic-point degree bound. -/
def GeneralVojta : Prop :=
  ∀ dimensionBound degreeBound : ℕ,
    1 ≤ dimensionBound → 1 ≤ degreeBound →
      TruncatedVojtaAt dimensionBound degreeBound

end CollatzBench.ABC
