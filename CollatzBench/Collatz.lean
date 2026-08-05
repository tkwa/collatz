import CollatzBench.Foundations

/-!
# Collatz-like conjectures

Formal statement layer for the repository-owned Collatz-like conjectures.
Each residue-affine structure includes a branch equation for every Euclidean
decomposition.  This avoids hiding the quotient/remainder convention in an
implementation detail while still determining the map uniquely.
-/

namespace CollatzBench.Collatz

open CollatzBench Function

/-- A residue-affine self-map of the nonnegative integers. -/
structure NatResidueAffineMap where
  base : ℕ
  base_ge_two : 2 ≤ base
  multiplier : ℕ → ℕ
  offset : ℕ → ℕ
  step : ℕ → ℕ
  step_spec : ∀ q r : ℕ, r < base →
    step (base * q + r) = multiplier r * q + offset r

namespace NatResidueAffineMap

def IsUnitMultiplier (M : NatResidueAffineMap) : Prop :=
  ∀ r < M.base, 0 < M.multiplier r ∧ Nat.Coprime (M.multiplier r) M.base

def IsContracting (M : NatResidueAffineMap) (r : ℕ) : Prop :=
  r < M.base ∧ M.multiplier r < M.base

def IsExpanding (M : NatResidueAffineMap) (r : ℕ) : Prop :=
  r < M.base ∧ M.base < M.multiplier r

def HasMixedSlopes (M : NatResidueAffineMap) : Prop :=
  (∃ r, M.IsContracting r) ∧ ∃ r, M.IsExpanding r

def IsPureDivisionAt (M : NatResidueAffineMap) (r : ℕ) : Prop :=
  r < M.base ∧ M.multiplier r = 1 ∧ M.offset r = 0

def contractingCount (M : NatResidueAffineMap) (n K : ℕ) : ℕ :=
  ((Finset.range K).filter fun j =>
      M.multiplier (((M.step^[j]) n) % M.base) < M.base).card

def divisionCount (M : NatResidueAffineMap) (n K : ℕ) : ℕ :=
  ((Finset.range K).filter fun j =>
      M.multiplier (((M.step^[j]) n) % M.base) = 1 ∧
      M.offset (((M.step^[j]) n) % M.base) = 0).card

end NatResidueAffineMap

/-- A residue-affine map on the integers, with nonnegative Euclidean residues. -/
structure IntResidueAffineMap where
  base : ℕ
  base_ge_two : 2 ≤ base
  multiplier : ℕ → ℤ
  offset : ℕ → ℤ
  step : ℤ → ℤ
  step_spec : ∀ q : ℤ, ∀ r : ℕ, r < base →
    step ((base : ℤ) * q + r) = multiplier r * q + offset r

namespace IntResidueAffineMap

def IsUnitMultiplier (M : IntResidueAffineMap) : Prop :=
  ∀ r < M.base,
    M.multiplier r ≠ 0 ∧ Int.gcd (M.multiplier r) M.base = 1

def IsContracting (M : IntResidueAffineMap) (r : ℕ) : Prop :=
  r < M.base ∧ |M.multiplier r| < (M.base : ℤ)

def IsExpanding (M : IntResidueAffineMap) (r : ℕ) : Prop :=
  r < M.base ∧ (M.base : ℤ) < |M.multiplier r|

def HasMixedSlopes (M : IntResidueAffineMap) : Prop :=
  (∃ r, M.IsContracting r) ∧ ∃ r, M.IsExpanding r

def contractingCount (M : IntResidueAffineMap) (n K : ℕ) : ℕ :=
  ((Finset.range K).filter fun j =>
      |M.multiplier (((M.step^[j]) n).emod M.base)| < (M.base : ℤ)).card

end IntResidueAffineMap

/-- All-start nonnegative superlogarithmic contraction (score 1.0). -/
def AllStartNonnegativeSuperlogarithmic : Prop :=
  ∃ M : NatResidueAffineMap,
    M.IsUnitMultiplier ∧ M.HasMixedSlopes ∧
    ∀ n : ℕ, Superlogarithmic (M.contractingCount n)

/-- All-start signed superlogarithmic contraction (score 0.7). -/
def AllStartSignedSuperlogarithmic : Prop :=
  ∃ M : IntResidueAffineMap,
    M.IsUnitMultiplier ∧ M.HasMixedSlopes ∧
    ∀ n : ℕ, Superlogarithmic (M.contractingCount n)

/-- The moving weakest conjecture: one coprime power ray (score 0.2). -/
def CoprimeRaySuperlogarithmic : Prop :=
  ∃ M : IntResidueAffineMap, ∃ u k₀ : ℕ,
    M.IsUnitMultiplier ∧ M.HasMixedSlopes ∧
    2 ≤ u ∧ Nat.Coprime u M.base ∧
    ∀ k ≥ k₀, Superlogarithmic (M.contractingCount (u ^ k))

/-- The pure-division expanding-branch family used by scores 2.0 and 4.5. -/
def IsPureDivisionExpanderMap (M : NatResidueAffineMap) : Prop :=
  M.IsUnitMultiplier ∧
  (∃ r, M.IsExpanding r) ∧
  ∀ r < M.base,
    M.IsExpanding r ∨ M.IsPureDivisionAt r

/-- Positive division density for every start (score 2.0). -/
def PositiveDivisionDensity : Prop :=
  ∃ M : NatResidueAffineMap,
    IsPureDivisionExpanderMap M ∧
    ∀ n : ℕ, PositiveLowerDensity (M.divisionCount n)

/-- Product-form negative drift for the pure-division family. -/
def HasNegativeGeometricDrift (M : NatResidueAffineMap) : Prop :=
  (Finset.range M.base).prod (fun r =>
    if M.IsExpanding r then M.multiplier r else 1) < M.base ^ M.base

/-- Existential negative-drift eventual periodicity (score 4.5). -/
def NegativeDriftPeriodicity : Prop :=
  ∃ M : NatResidueAffineMap,
    IsPureDivisionExpanderMap M ∧ HasNegativeGeometricDrift M ∧
    ∀ n : ℕ, EventuallyPeriodic M.step n

/-- The shortcut map `T(2q)=q`, `T(2q+1)=3q+2`. -/
def shortcut (n : ℕ) : ℕ :=
  if Even n then n / 2 else 3 * (n / 2) + 2

/-- Every positive start reaches `1`; this identifies the usual shortcut cycle. -/
def ClassicalCollatz : Prop :=
  ∀ n : ℕ, 0 < n → ∃ k : ℕ, (shortcut^[k]) n = 1

/-- Parameters of the universal positive one-expander family. -/
structure OneExpanderParameters where
  base : ℕ
  expandingResidue : ℕ
  multiplier : ℕ
  offset : ℕ
  base_ge_two : 2 ≤ base
  residue_pos : 0 < expandingResidue
  residue_lt : expandingResidue < base
  expanding : base < multiplier
  negativeDrift : multiplier < base ^ base
  coprime : Nat.Coprime multiplier base

namespace OneExpanderParameters

def step (P : OneExpanderParameters) (n : ℕ) : ℕ :=
  if n % P.base = P.expandingResidue then
    P.multiplier * (n / P.base) + P.offset
  else
    n / P.base

end OneExpanderParameters

/-- Universal eventual periodicity in the restricted one-expander family. -/
def UniversalOneExpanderPeriodicity : Prop :=
  ∀ P : OneExpanderParameters, ∀ n : ℕ, EventuallyPeriodic P.step n

end CollatzBench.Collatz
