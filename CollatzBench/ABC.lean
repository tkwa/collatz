import CollatzBench.Foundations
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Nat.Prime.Basic

/-!
# abc and Vojta ladder statements

The elementary abc rungs are concrete.  The Vojta rungs use an explicit
schema interface because the Markdown deliberately suppresses the height,
divisor, exceptional-set, and bounded-degree machinery needed for a complete
arithmetic-geometry statement.  This is recorded in the coverage manifest.
-/

namespace CollatzBench.ABC

/-- Product of the distinct prime divisors, defined directly for auditing. -/
def radical (n : ℕ) : ℕ :=
  ((Finset.range (n + 1)).filter fun p => Nat.Prime p ∧ p ∣ n).prod id

/-- The positive coprime triples used throughout the abc folder. -/
def IsAbcTriple (a b c : ℕ) : Prop :=
  0 < a ∧ 0 < b ∧ 0 < c ∧ Nat.Coprime a b ∧ a + b = c

/-- A radical-power upper bound for `log c`. -/
def LogRadicalPowerBound (θ : ℝ) : Prop :=
  ∃ C : ℝ, 0 < C ∧ ∀ a b c : ℕ, IsAbcTriple a b c →
    Real.log c ≤ C * (radical (a * b * c) : ℝ) ^ θ

/-- Score 0.2: any fixed improvement of the Stewart--Yu exponent `1/3`. -/
def WeakestAbcLike : Prop :=
  ∃ δ : ℝ, 0 < δ ∧ LogRadicalPowerBound ((1 : ℝ) / 3 - δ)

/-- Subexponential in the radical: every fixed positive exponent works. -/
def SubexponentialAbc : Prop :=
  ∀ ε : ℝ, 0 < ε → LogRadicalPowerBound ε

/-- A fixed power of `log R` bounds `log c`. -/
def LogPowerAbc (A : ℝ) : Prop :=
  ∃ C : ℝ, 0 < C ∧ ∀ a b c : ℕ, IsAbcTriple a b c →
    Real.log c ≤ C * (Real.log (radical (a * b * c))) ^ A

/-- Polynomial (weak) abc, without encoding a computability claim for `C`. -/
def PolynomialAbc : Prop :=
  ∃ A C : ℝ, 0 < A ∧ 0 < C ∧ ∀ a b c : ℕ, IsAbcTriple a b c →
    (c : ℝ) ≤ C * (radical (a * b * c) : ℝ) ^ A

/-- The standard abc bound at one positive epsilon. -/
def AbcAt (ε : ℝ) : Prop :=
  ∃ K : ℝ, 0 < K ∧ ∀ a b c : ℕ, IsAbcTriple a b c →
    (c : ℝ) ≤ K * (radical (a * b * c) : ℝ) ^ (1 + ε)

/-- The abc conjecture over the rationals (effectivity is a separate coordinate). -/
def AbcConjecture : Prop :=
  ∀ ε : ℝ, 0 < ε → AbcAt ε

/-- A machine-checkable interface for constants claimed to be computable. -/
structure EffectiveAbcWitness where
  /-- Rational epsilon is represented by positive numerator and denominator. -/
  constant : ℕ → ℕ → ℕ
  bound : ∀ e d : ℕ, 0 < e → 0 < d → ∀ a b c : ℕ,
    IsAbcTriple a b c →
    (c : ℝ) ≤ constant e d *
      (radical (a * b * c) : ℝ) ^ (1 + (e : ℝ) / d)

/-- Effective abc: one explicit natural-valued procedure supplies all constants. -/
def EffectiveAbc : Prop := Nonempty EffectiveAbcWitness

/-- Logical skeleton for a benchmark statement whose geometry is supplied separately. -/
structure GeometricStatement (Data : Type*) where
  holds : Data → Prop

def AllGeometric {Data : Type*} (S : GeometricStatement Data) : Prop :=
  ∀ d : Data, S.holds d

/-- The complete curve-level truncated Vojta rung, parameterized by exact data. -/
def VojtaTruncatedForCurves {CurveData : Type*}
    (S : GeometricStatement CurveData) : Prop := AllGeometric S

/-- The all-varieties untruncated Vojta rung, parameterized by exact data. -/
def VojtaUntruncated {VarietyData : Type*}
    (S : GeometricStatement VarietyData) : Prop := AllGeometric S

/-- General truncated Vojta, including bounded-degree algebraic-point data. -/
def GeneralVojta {BoundedDegreeData : Type*}
    (S : GeometricStatement BoundedDegreeData) : Prop := AllGeometric S

/-- A finite-sum schema for the `n`-term generalization rung. -/
def NTermConjecture (statementForArity : ℕ → Prop) : Prop :=
  ∀ n : ℕ, 3 ≤ n → statementForArity n

end CollatzBench.ABC
