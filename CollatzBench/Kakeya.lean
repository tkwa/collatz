import CollatzBench.Foundations
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.MeasureTheory.Function.LpSeminorm.Basic
import Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace
import Mathlib.RingTheory.MvPolynomial.Basic

/-!
# The dedicated weakest Kakeya statement

This file gives direct Euclidean, tube, volume, and `Lᵖ` semantics for the
three alternatives in `kakeya/weakest_kakeya_improvement.md`.
-/

namespace CollatzBench.Kakeya

open scoped BigOperators ENNReal
open MeasureTheory Set

noncomputable section

abbrev Point (n : ℕ) := EuclideanSpace ℝ (Fin n)

/-- A compact set containing a unit segment in every unit direction. -/
def IsKakeyaSet {n : ℕ} (K : Set (Point n)) : Prop :=
  IsCompact K ∧ ∀ v : Point n, ‖v‖ = 1 →
    ∃ x : Point n, ∀ t : ℝ, t ∈ Set.Icc 0 1 → x + t • v ∈ K

/-- The open Euclidean `δ`-neighborhood used in upper Minkowski dimension. -/
def metricNeighborhood {n : ℕ} (δ : ℝ) (K : Set (Point n)) : Set (Point n) :=
  {x | ∃ y ∈ K, dist x y < δ}

def volumeReal {n : ℕ} (S : Set (Point n)) : ℝ :=
  (volume S).toReal

/-- Lower limit as the supremum of eventual lower bounds at zero from above. -/
def lowerLimitAtZero (f : ℝ → ℝ) : ℝ :=
  sSup {a : ℝ | ∃ r : ℝ, 0 < r ∧
    ∀ δ : ℝ, 0 < δ → δ < r → a ≤ f δ}

/-- The volume-neighborhood formula from `kakeya/README.md`. -/
def upperMinkowskiDimension {n : ℕ} (K : Set (Point n)) : ℝ :=
  n - lowerLimitAtZero (fun δ =>
    Real.log (volumeReal (metricNeighborhood δ K)) / Real.log δ)

/-- A unit line segment thickened by radius `δ`. -/
structure Tube (n : ℕ) where
  center : Point n
  direction : Point n
  direction_unit : ‖direction‖ = 1

def Tube.carrier {n : ℕ} (δ : ℝ) (T : Tube n) : Set (Point n) :=
  {x | ∃ t : ℝ, t ∈ Set.Icc 0 1 ∧ dist x (T.center + t • T.direction) < δ}

/-- Projective angular separation of distinct tube directions. -/
def DirectionSeparated {n : ℕ} (δ : ℝ) (family : Finset (Tube n)) : Prop :=
  ∀ T ∈ family, ∀ U ∈ family, T ≠ U →
    δ ≤ min ‖T.direction - U.direction‖ ‖T.direction + U.direction‖

def multiplicity {n : ℕ} (δ : ℝ) (family : Finset (Tube n)) (x : Point n) : ℝ :=
  ∑ T ∈ family, (T.carrier δ).indicator (fun _ => 1) x

/-- The standard direction-separated Kakeya maximal estimate at dimension `s`. -/
def MaximalEstimateAt (n : ℕ) (s : ℝ) : Prop :=
  1 < s ∧ s ≤ n ∧
    ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 < C ∧
      ∀ δ : ℝ, 0 < δ → δ ≤ 1 →
        ∀ family : Finset (Tube n), DirectionSeparated δ family →
          eLpNorm (multiplicity δ family)
              (ENNReal.ofReal (s / (s - 1))) volume ≤
            ENNReal.ofReal (C * Real.rpow δ (1 - n / s - ε))

/-- A measurable shading occupying a `λ` fraction of its tube. -/
def IsShading {n : ℕ} (δ density : ℝ) (shading : Tube n → Set (Point n))
    (family : Finset (Tube n)) : Prop :=
  ∀ T ∈ family,
    MeasurableSet (shading T) ∧
    shading T ⊆ T.carrier δ ∧
    density * volumeReal (T.carrier δ) ≤ volumeReal (shading T)

def shadedUnion {n : ℕ} (family : Finset (Tube n))
    (shading : Tube n → Set (Point n)) : Set (Point n) :=
  ⋃ T ∈ family, shading T

/-- The three-dimensional shaded-tube estimate `A₃(q)`. -/
def ShadedEstimate3 (q : ℕ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ c : ℝ, 0 < c ∧
    ∀ δ density : ℝ, 0 < δ → δ ≤ 1 → 0 < density → density ≤ 1 →
      ∀ family : Finset (Tube 3), DirectionSeparated δ family →
        ∀ shading : Tube 3 → Set (Point 3), IsShading δ density shading family →
          c * Real.rpow δ ε * Real.rpow density q *
              (∑ T ∈ family, volumeReal (T.carrier δ)) ≤
            volumeReal (shadedUnion family shading)

def h₀ : ℝ := 3 + (Real.sqrt 17665 - 97) / 600
def m₀ : ℝ := (159 + Real.sqrt 145) / 56

/-- `weakest_kakeya_improvement.md`. -/
def WeakestKakeyaImprovement : Prop :=
  (∀ K : Set (Point 4), IsKakeyaSet K → h₀ < upperMinkowskiDimension K) ∨
  (∃ η : ℝ, 0 < η ∧ MaximalEstimateAt 4 (m₀ + η)) ∨
  (∃ q : ℕ, 3 ≤ q ∧ ShadedEstimate3 q)

/-- Score `1`: the first fixed checkpoint on any of the three lower routes. -/
def FirstKakeyaCheckpoint : Prop :=
  (∀ K : Set (Point 4), IsKakeyaSet K →
    (31 / 10 : ℝ) ≤ upperMinkowskiDimension K) ∨
  MaximalEstimateAt 4 (123 / 40 : ℝ) ∨
  ShadedEstimate3 100

/-- The ordinary endpoint maximal estimate in every finite dimension. -/
def AllDimensionalMaximal : Prop :=
  ∀ n : ℕ, 2 ≤ n → MaximalEstimateAt n n

/-- A direct Boolean formula in polynomial equalities and inequalities. -/
inductive SemialgebraicFormula (n : ℕ) where
  | nonnegative (p : MvPolynomial (Fin n) ℝ)
  | equalZero (p : MvPolynomial (Fin n) ℝ)
  | conjunction (left right : SemialgebraicFormula n)
  | disjunction (left right : SemialgebraicFormula n)
  | negation (formula : SemialgebraicFormula n)

namespace SemialgebraicFormula

def Holds {n : ℕ} : SemialgebraicFormula n → Point n → Prop
  | nonnegative p, x => 0 ≤ p.eval x
  | equalZero p, x => p.eval x = 0
  | conjunction left right, x => left.Holds x ∧ right.Holds x
  | disjunction left right, x => left.Holds x ∨ right.Holds x
  | negation formula, x => ¬ formula.Holds x

def complexity {n : ℕ} : SemialgebraicFormula n → ℕ
  | nonnegative p => p.totalDegree + 1
  | equalZero p => p.totalDegree + 1
  | conjunction left right => left.complexity + right.complexity + 1
  | disjunction left right => left.complexity + right.complexity + 1
  | negation formula => formula.complexity + 1

def carrier {n : ℕ} (formula : SemialgebraicFormula n) : Set (Point n) :=
  {x | formula.Holds x}

end SemialgebraicFormula

/-- A tube family indexed by its thickness scale. -/
abbrev TubeFamilies (n : ℕ) := ℝ → Finset (Tube n)

/-- The polynomial Wolff incidence axiom with explicit semialgebraic tests and
a constant uniform in the scale, density, and test set. -/
def SatisfiesPolynomialWolffAxioms {n : ℕ}
    (families : TubeFamilies n) : Prop :=
  ∀ E : ℕ, ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 < C ∧
    ∀ δ : ℝ, 0 < δ → δ ≤ 1 →
      ∀ density : ℝ, δ ≤ density → density ≤ 1 →
        ∀ formula : SemialgebraicFormula n, formula.complexity ≤ E →
          (((families δ).filter fun T =>
            density * volumeReal (T.carrier δ) ≤
              volumeReal (T.carrier δ ∩ formula.carrier)).card : ℝ) ≤
            C * Real.rpow δ (-ε) * volumeReal formula.carrier *
              Real.rpow δ (1 - n) * Real.rpow density (-n : ℝ)

/-- The endpoint maximal estimate for every polynomial-Wolff tube family. -/
def PolynomialWolffMaximalAt (n : ℕ) : Prop :=
  ∀ families : TubeFamilies n, SatisfiesPolynomialWolffAxioms families →
    ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 < C ∧
      ∀ δ : ℝ, 0 < δ → δ ≤ 1 →
        eLpNorm (multiplicity δ (families δ))
              (ENNReal.ofReal (n / (n - 1 : ℝ))) volume ≤
            ENNReal.ofReal (C * Real.rpow δ (-ε))

/-- Score `9`: the polynomial-Wolff endpoint in every finite dimension. -/
def AllDimensionalPolynomialWolffMaximal : Prop :=
  ∀ n : ℕ, 2 ≤ n → PolynomialWolffMaximalAt n

end

end CollatzBench.Kakeya
