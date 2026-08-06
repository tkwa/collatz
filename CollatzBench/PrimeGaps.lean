import CollatzBench.Foundations
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Totient
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
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
The standard von Mangoldt-weighted sum `ψ(X; q, a)`, written directly as a
sum over prime powers. The redundant finite bound `k ≤ X` contains every
exponent for which `p ^ k ≤ X`.
-/
noncomputable def chebyshevPsiInProgression (X q a : ℕ) : ℝ :=
  ∑ p ∈ Finset.Icc 2 X,
    if Nat.Prime p then
      ∑ k ∈ Finset.Icc 1 X,
        if p ^ k ≤ X ∧ p ^ k % q = a then Real.log p else 0
    else 0

/--
The Elliott--Halberstam conjecture at level `θ`, in its standard
von Mangoldt / `ψ` normalization. Thus the discrepancy is
`|ψ(X;q,a) - X / φ(q)|`, the cutoff is literally `q ≤ X^θ`, and the
bound holds for every logarithmic power `A`.

Instead of choosing a maximum residue class, `D q` is an existential
nonnegative majorant for every reduced residue class modulo `q`. Since those
classes are finite, summing such majorants is equivalent to the customary
sum of maximum discrepancies. Requiring `D q = 0` above the cutoff makes the
final finite sum exactly the `q ≤ X^θ` sum.
-/
def ElliottHalberstamAt (θ : ℝ) : Prop :=
  0 < θ ∧ θ < 1 ∧
  ∀ A : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ᶠ X : ℕ in Filter.atTop,
    ∃ D : ℕ → ℝ,
      (∀ q : ℕ, 1 ≤ q → 0 ≤ D q) ∧
      (∀ q : ℕ, 1 ≤ q →
        (q : ℝ) ≤ Real.rpow (X : ℝ) θ →
        ∀ a : ℕ, a < q → Nat.Coprime a q →
          abs (chebyshevPsiInProgression X q a -
            (X : ℝ) / (Nat.totient q : ℝ)) ≤ D q) ∧
      (∀ q : ℕ, Real.rpow (X : ℝ) θ < (q : ℝ) → D q = 0) ∧
      (∑ q ∈ Finset.Icc 1 X, D q) ≤ C * X / (Real.log X) ^ A

/-- Current Weakest twin-prime rung: `H₁ ≤ 244` or some EH exponent above `1/2`. -/
def WeakestPrimePattern : Prop :=
  PrimeGapAtMost 244 ∨
    ∃ δ : ℝ, 0 < δ ∧ (1 : ℝ) / 2 + δ < 1 ∧
      ElliottHalberstamAt ((1 : ℝ) / 2 + δ)

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

/-- The number of residue classes modulo `p` on which some polynomial vanishes. -/
noncomputable def PolynomialFamily.rootCountMod (F : PolynomialFamily) (p : ℕ) : ℕ :=
  by
    classical
    exact ((Finset.range p).filter (fun a : ℕ =>
      ∃ i : Fin F.arity, (p : ℤ) ∣ (F.poly i).eval (Int.ofNat a))).card

/-- The Bateman--Horn local factor at `p`. -/
noncomputable def PolynomialFamily.localFactor (F : PolynomialFamily) (p : ℕ) : ℝ :=
  (1 - (F.rootCountMod p : ℝ) / (p : ℝ)) /
    (1 - 1 / (p : ℝ)) ^ F.arity

/-- The canonically ordered singular-series product over primes at most `Y`. -/
noncomputable def PolynomialFamily.singularSeriesPartial
    (F : PolynomialFamily) (Y : ℕ) : ℝ :=
  by
    classical
    exact ((Finset.range (Y + 1)).filter Nat.Prime).prod F.localFactor

def PolynomialFamily.degreeProduct (F : PolynomialFamily) : ℕ :=
  Finset.univ.prod fun i : Fin F.arity => (F.poly i).natDegree

/-- The order-`k` logarithmic integral, clamped only at finite initial inputs. -/
noncomputable def generalizedLogarithmicIntegral (k X : ℕ) : ℝ :=
  ∫ t in (2 : ℝ)..max (2 : ℝ) (X : ℝ), 1 / (Real.log t) ^ k

noncomputable def PolynomialFamily.batemanHornMainTerm
    (F : PolynomialFamily) (C : ℝ) (X : ℕ) : ℝ :=
  C * generalizedLogarithmicIntegral F.arity X / (F.degreeProduct : ℝ)

/-- `C` is the naturally prime-ordered singular-series limit for `F`. -/
def PolynomialFamily.IsSingularSeries (F : PolynomialFamily) (C : ℝ) : Prop :=
  Filter.Tendsto F.singularSeriesPartial Filter.atTop (nhds C)

/-- Bateman--Horn for every admissible finite family in the exact score-9
one-variable class. -/
def BatemanHorn : Prop :=
  ∀ F : PolynomialFamily, ∃ C : ℝ,
    F.IsSingularSeries C ∧
      0 < C ∧
      Filter.Tendsto
        (fun X : ℕ =>
          (F.primeValueCount X : ℝ) / F.batemanHornMainTerm C X)
        Filter.atTop (nhds 1)

end CollatzBench.PrimeGaps
