import CollatzBench.Foundations
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Nat.Prime.Basic

/-!
# The abc frontier and anchors

The two abc propositions below are concrete. `GeneralVojtaSchema` is an
honest interface for the geometry and height theory that a full Vojta library
would provide; `GeneralVojta` formalizes the quantifier structure and
inequality over that interface.
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
Typed data needed to state general truncated Vojta for algebraic points of
bounded degree. The types intentionally remain abstract: developing smooth
projective varieties, normal-crossings divisors, Weil heights, discriminants,
and truncated counting functions is a separate foundational project.
-/
structure GeneralVojtaSchema where
  NumberField : Type
  Variety : NumberField → Type
  Divisor : {K : NumberField} → Variety K → Type
  AmpleDivisor : {K : NumberField} → Variety K → Type
  FinitePlaces : NumberField → Type
  AlgebraicPoint : {K : NumberField} → Variety K → Type
  ExceptionalSet : {K : NumberField} → (X : Variety K) → Type
  isSmoothProjective : {K : NumberField} → Variety K → Prop
  isNormalCrossings : {K : NumberField} → {X : Variety K} → Divisor X → Prop
  isAmple : {K : NumberField} → {X : Variety K} → AmpleDivisor X → Prop
  isFinitePlaceSet : {K : NumberField} → FinitePlaces K → Prop
  isProperClosed : {K : NumberField} → {X : Variety K} → ExceptionalSet X → Prop
  liesIn : {K : NumberField} → {X : Variety K} →
    AlgebraicPoint X → ExceptionalSet X → Prop
  degree : {K : NumberField} → {X : Variety K} → AlgebraicPoint X → ℕ
  canonicalPlusDivisorHeight : {K : NumberField} → {X : Variety K} →
    Divisor X → AlgebraicPoint X → ℝ
  ampleHeight : {K : NumberField} → {X : Variety K} →
    AmpleDivisor X → AlgebraicPoint X → ℝ
  truncatedCounting : {K : NumberField} → {X : Variety K} →
    FinitePlaces K → Divisor X → AlgebraicPoint X → ℝ
  discriminantTerm : {K : NumberField} → {X : Variety K} →
    AlgebraicPoint X → ℝ

/--
General Vojta with truncated counting functions and bounded-degree algebraic
points, stated over an explicit foundational schema.
-/
def GeneralVojta (S : GeneralVojtaSchema) : Prop :=
  ∀ K : S.NumberField, ∀ X : S.Variety K,
    S.isSmoothProjective X →
    ∀ D : S.Divisor X, S.isNormalCrossings D →
    ∀ A : S.AmpleDivisor X, S.isAmple A →
    ∀ places : S.FinitePlaces K, S.isFinitePlaceSet places →
    ∀ degreeBound : ℕ, ∀ ε : ℝ, 0 < ε →
    ∃ Z : S.ExceptionalSet X, S.isProperClosed Z ∧
    ∃ C : ℝ, ∀ P : S.AlgebraicPoint X,
      S.degree P ≤ degreeBound → ¬ S.liesIn P Z →
        S.canonicalPlusDivisorHeight D P ≤
          S.truncatedCounting places D P + S.discriminantTerm P +
            ε * S.ampleHeight A P + C

end CollatzBench.ABC
