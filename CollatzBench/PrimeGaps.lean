import CollatzBench.Foundations
import Mathlib.Data.Nat.Prime.Basic

/-!
# Prime-gap and prime-pattern statements

Concrete outcome rungs use only primality and quantifiers.  Analytic
distribution hypotheses and asymptotic master conjectures are exposed through
typed schema parameters rather than silently omitting their technical data.
-/

namespace CollatzBench.PrimeGaps

/-- `p < q` are consecutive primes. -/
def ConsecutivePrimes (p q : ℕ) : Prop :=
  Nat.Prime p ∧ Nat.Prime q ∧ p < q ∧
  ∀ r : ℕ, p < r → r < q → ¬ Nat.Prime r

/-- The liminf prime gap is at most `H`, in an equivalent quantifier form. -/
def PrimeGapAtMost (H : ℕ) : Prop :=
  ∀ N : ℕ, ∃ p q : ℕ,
    N ≤ p ∧ ConsecutivePrimes p q ∧ q - p ≤ H

/-- Infinitely many prime pairs at the fixed distance `h`. -/
def InfinitelyManyPrimePairs (h : ℕ) : Prop :=
  ∀ N : ℕ, ∃ p : ℕ,
    N ≤ p ∧ Nat.Prime p ∧ Nat.Prime (p + h)

def TwinPrimeConjecture : Prop := InfinitelyManyPrimePairs 2

/-- Every positive even gap occurs infinitely often between consecutive primes. -/
def DePolignacConjecture : Prop :=
  ∀ h : ℕ, 0 < h → Even h → ∀ N : ℕ,
    ∃ p q : ℕ, N ≤ p ∧ ConsecutivePrimes p q ∧ q - p = h

/-- An affine form `a*n+b` used in the qualitative Dickson statement. -/
structure AffineForm where
  slope : ℕ
  intercept : ℕ
  slope_pos : 0 < slope

def AffineForm.eval (L : AffineForm) (n : ℕ) : ℕ := L.slope * n + L.intercept

/-- No prime divides every value of the product of the listed affine forms. -/
def LocallyAdmissible (forms : List AffineForm) : Prop :=
  ∀ p : ℕ, Nat.Prime p → ∃ n : ℕ,
    ∀ L ∈ forms, ¬ p ∣ L.eval n

/-- Qualitative prime-tuples / Dickson for every fixed admissible system. -/
def DicksonConjecture : Prop :=
  ∀ forms : List AffineForm, forms ≠ [] → LocallyAdmissible forms →
    ∀ N : ℕ, ∃ n : ℕ, N ≤ n ∧ ∀ L ∈ forms, Nat.Prime (L.eval n)

/-- A named analytic statement plus the implication it is intended to carry. -/
structure AnalyticSchema where
  statement : Prop

/-- Ordinary Elliott--Halberstam at a chosen level (exact estimates supplied by schema). -/
def ElliottHalberstamAt (S : AnalyticSchema) : Prop := S.statement

/-- Generalized Elliott--Halberstam at a chosen level and convolution class. -/
def GeneralizedElliottHalberstamAt (S : AnalyticSchema) : Prop := S.statement

/-- A Hardy--Littlewood tuple asymptotic with all analytic data made explicit upstream. -/
def HardyLittlewoodPrimeTuples (S : AnalyticSchema) : Prop := S.statement

/-- A Bateman--Horn asymptotic with polynomial hypotheses and constants upstream. -/
def BatemanHorn (S : AnalyticSchema) : Prop := S.statement

/-- A scalar ladder rung can be reached by any listed route. -/
def AnyRoute (routes : List Prop) : Prop := routes.Any id

end CollatzBench.PrimeGaps
