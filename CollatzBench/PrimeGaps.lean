import CollatzBench.Foundations
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.RingTheory.Polynomial.Basic
import Mathlib.RingTheory.PrincipalIdealDomain

/-!
# The prime-pattern frontier and anchors
-/

namespace CollatzBench.PrimeGaps

def ConsecutivePrimes (p q : ℕ) : Prop :=
  Nat.Prime p ∧ Nat.Prime q ∧ p < q ∧
    ∀ r : ℕ, p < r → r < q → ¬ Nat.Prime r

/-- Equivalent quantifier form of `H₁ ≤ H`. -/
def PrimeGapAtMost (H : ℕ) : Prop :=
  ∀ N : ℕ, ∃ p q : ℕ,
    N ≤ p ∧ ConsecutivePrimes p q ∧ q - p ≤ H

/--
Technical data suppressed by the Markdown's use of the standard abbreviation
`EH[θ]`. An instantiation must identify the standard prime discrepancy and
the `X^θ` modulus cutoff; the displayed bound is formalized below.
-/
structure ElliottHalberstamSchema where
  maxPrimeDiscrepancy : ℕ → ℕ → ℝ
  modulusCutoff : ℝ → ℕ → ℕ
  isStandardPrimeDiscrepancy : Prop
  cutoff_is_power : ∀ θ : ℝ, ∀ X : ℕ,
    (modulusCutoff θ X : ℝ) ≤ Real.rpow (X : ℝ) θ ∧
      Real.rpow (X : ℝ) θ < modulusCutoff θ X + 1

def ElliottHalberstamAt (S : ElliottHalberstamSchema) (θ : ℝ) : Prop :=
  S.isStandardPrimeDiscrepancy ∧
  ∀ A : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ᶠ X : ℕ in Filter.atTop,
    (∑ q ∈ Finset.Icc 1 (S.modulusCutoff θ X), S.maxPrimeDiscrepancy X q) ≤
      C * X / (Real.log X) ^ A

/-- Current Weakest twin-prime rung: `H₁ ≤ 244` or some EH exponent above `1/2`. -/
def WeakestPrimePattern (S : ElliottHalberstamSchema) : Prop :=
  PrimeGapAtMost 244 ∨
    ∃ δ : ℝ, 0 < δ ∧ (1 : ℝ) / 2 + δ < 1 ∧
      ElliottHalberstamAt S ((1 : ℝ) / 2 + δ)

/-- Infinitely many pairs `p,p+2` are prime. -/
def TwinPrimeConjecture : Prop :=
  ∀ N : ℕ, ∃ p : ℕ,
    N ≤ p ∧ Nat.Prime p ∧ Nat.Prime (p + 2)

/-- A finite polynomial family with the algebraic/local hypotheses of Bateman--Horn. -/
structure PolynomialFamily where
  arity : ℕ
  arity_pos : 0 < arity
  poly : Fin arity → Polynomial ℤ
  distinct : Function.Injective poly
  nonconstant : ∀ i, 0 < (poly i).natDegree
  irreducible : ∀ i, Irreducible (poly i)
  positiveLeading : ∀ i, 0 < (poly i).leadingCoeff
  noFixedPrimeDivisor : ∀ p : ℕ, Nat.Prime p → ∃ n : ℤ,
    ∀ i, ¬ (p : ℤ) ∣ (poly i).eval n

def PolynomialFamily.SimultaneouslyPrime (F : PolynomialFamily) (n : ℕ) : Prop :=
  ∀ i, 0 < (F.poly i).eval (n : ℤ) ∧
    Nat.Prime ((F.poly i).eval (n : ℤ)).natAbs

noncomputable def PolynomialFamily.primeValueCount (F : PolynomialFamily) (X : ℕ) : ℕ :=
  by
    classical
    exact ((Finset.Icc 1 X).filter F.SimultaneouslyPrime).card

/--
Analytic data for the canonical Bateman--Horn main term. A future foundational
library can replace the two canonical-definition obligations by the explicit
singular-series product and logarithmic integral without changing
`BatemanHorn`'s quantifiers.
-/
structure BatemanHornSchema where
  singularSeries : PolynomialFamily → ℝ
  logarithmicIntegral : PolynomialFamily → ℕ → ℝ
  isCanonicalSingularSeries : Prop
  isCanonicalLogarithmicIntegral : Prop
  eventuallyPositive : ∀ F : PolynomialFamily,
    ∀ᶠ X : ℕ in Filter.atTop,
      0 < singularSeries F * logarithmicIntegral F X

/-- Bateman--Horn for every admissible finite family in the exact endpoint class. -/
def BatemanHorn (S : BatemanHornSchema) : Prop :=
  S.isCanonicalSingularSeries ∧ S.isCanonicalLogarithmicIntegral ∧
  ∀ F : PolynomialFamily,
    Filter.Tendsto
      (fun X : ℕ => (F.primeValueCount X : ℝ) /
        (S.singularSeries F * S.logarithmicIntegral F X))
      Filter.atTop (nhds 1)

end CollatzBench.PrimeGaps
