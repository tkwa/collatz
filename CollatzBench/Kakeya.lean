import CollatzBench.Foundations
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.MeasureTheory.Function.LpSeminorm.Basic
import Mathlib.MeasureTheory.Measure.Lebesgue

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
  ∑ T ∈ family, if x ∈ T.carrier δ then 1 else 0

/-- The standard direction-separated Kakeya maximal estimate at dimension `s`. -/
def MaximalEstimateAt (n : ℕ) (s : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 < C ∧
    ∀ δ : ℝ, 0 < δ → δ ≤ 1 →
      ∀ family : Finset (Tube n), DirectionSeparated δ family →
        snorm (multiplicity δ family)
            (ENNReal.ofReal (s / (s - 1))) volume ≤
          ENNReal.ofReal (C * Real.rpow δ (1 - n / s - ε))

/-- A measurable shading occupying a `λ` fraction of its tube. -/
def IsShading {n : ℕ} (δ λ : ℝ) (shading : Tube n → Set (Point n))
    (family : Finset (Tube n)) : Prop :=
  ∀ T ∈ family,
    MeasurableSet (shading T) ∧
    shading T ⊆ T.carrier δ ∧
    λ * volumeReal (T.carrier δ) ≤ volumeReal (shading T)

def shadedUnion {n : ℕ} (family : Finset (Tube n))
    (shading : Tube n → Set (Point n)) : Set (Point n) :=
  ⋃ T ∈ family, shading T

/-- The three-dimensional shaded-tube estimate `A₃(q)`. -/
def ShadedEstimate3 (q : ℕ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ c : ℝ, 0 < c ∧
    ∀ δ λ : ℝ, 0 < δ → δ ≤ 1 → 0 < λ → λ ≤ 1 →
      ∀ family : Finset (Tube 3), DirectionSeparated δ family →
        ∀ shading : Tube 3 → Set (Point 3), IsShading δ λ shading family →
          c * Real.rpow δ ε * Real.rpow λ q *
              (∑ T ∈ family, volumeReal (T.carrier δ)) ≤
            volumeReal (shadedUnion family shading)

def h₀ : ℝ := 3 + (Real.sqrt 17665 - 97) / 600
def m₀ : ℝ := (159 + Real.sqrt 145) / 56

/-- `weakest_kakeya_improvement.md`. -/
def WeakestKakeyaImprovement : Prop :=
  (∀ K : Set (Point 4), IsKakeyaSet K → h₀ < upperMinkowskiDimension K) ∨
  (∃ η : ℝ, 0 < η ∧ MaximalEstimateAt 4 (m₀ + η)) ∨
  (∃ q : ℕ, 3 ≤ q ∧ ShadedEstimate3 q)

end

end CollatzBench.Kakeya
