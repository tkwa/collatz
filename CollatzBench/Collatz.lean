import CollatzBench.Foundations
import Mathlib.Data.Int.GCD

/-!
# The Collatz frontier and classical anchor
-/

namespace CollatzBench.Collatz

open CollatzBench Function

/-- Signed residue-affine map with the Euclidean remainder convention. -/
structure IntResidueAffineMap where
  base : ℕ
  base_ge_two : 2 ≤ base
  multiplier : ℕ → ℤ
  offset : ℕ → ℤ
  step : ℤ → ℤ
  residue : ℤ → ℕ
  residue_lt : ∀ x : ℤ, residue x < base
  euclidean_decomposition : ∀ x : ℤ, ∃ q : ℤ,
    x = (base : ℤ) * q + residue x
  step_spec : ∀ q : ℤ, ∀ r : ℕ, r < base →
    step ((base : ℤ) * q + r) = multiplier r * q + offset r

namespace IntResidueAffineMap

/-- Every branch multiplier is a nonzero unit modulo the base. -/
def HasUnitMultipliers (M : IntResidueAffineMap) : Prop :=
  ∀ r < M.base,
    M.multiplier r ≠ 0 ∧ Nat.Coprime (M.multiplier r).natAbs M.base

def IsContracting (M : IntResidueAffineMap) (r : ℕ) : Prop :=
  r < M.base ∧ |M.multiplier r| < (M.base : ℤ)

def IsExpanding (M : IntResidueAffineMap) (r : ℕ) : Prop :=
  r < M.base ∧ (M.base : ℤ) < |M.multiplier r|

def HasMixedSlopes (M : IntResidueAffineMap) : Prop :=
  (∃ r, M.IsContracting r) ∧ ∃ r, M.IsExpanding r

/-- Contracting-branch steps among the first `K` iterates. -/
def contractingCount (M : IntResidueAffineMap) (n K : ℕ) : ℕ :=
  ((Finset.range K).filter fun j =>
    |M.multiplier (M.residue ((M.step^[j]) (n : ℤ)))| < (M.base : ℤ)).card

end IntResidueAffineMap

/-- `u` and `B` have no equal positive powers. -/
def MultiplicativelyIndependent (u B : ℕ) : Prop :=
  ∀ s t : ℕ, 1 ≤ s → 1 ≤ t → u ^ s ≠ B ^ t

/--
The current Weakest Collatz-like conjecture: one fixed signed unit map works
pointwise on infinitely many members of one exact scaled, multiplicatively
independent ray `d * u^k`.
-/
def WeakestScaledRay : Prop :=
  ∃ M : IntResidueAffineMap, ∃ d u : ℕ,
    M.HasUnitMultipliers ∧ M.HasMixedSlopes ∧
    1 ≤ d ∧ 2 ≤ u ∧ MultiplicativelyIndependent u M.base ∧
    Set.Infinite {k : ℕ | Superlogarithmic (M.contractingCount (d * u ^ k))}

/-- Shortcut Collatz: `C(2q)=q`, `C(2q+1)=3q+2`. -/
def shortcut (n : ℕ) : ℕ :=
  if Even n then n / 2 else 3 * (n / 2) + 2

/-- Classical Collatz: every positive integer reaches `1`. -/
def ClassicalCollatz : Prop :=
  ∀ n : ℕ, 0 < n → ∃ k : ℕ, (shortcut^[k]) n = 1

end CollatzBench.Collatz
