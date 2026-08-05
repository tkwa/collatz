import CollatzBench.Foundations

/-!
# Open supporting statements in progress and blocker notes

These declarations formalize the quantifier shape of the two explicitly open
supporting targets.  Their arithmetic inputs are parameters, so the interface
can be reused by the exact orbit/polynomial development without postulating a
proof.
-/

namespace CollatzBench.ProgressTargets

/-- A chain `j₀ < ... < j_(q-1)` with gaps at most `R`. -/
def IsBoundedSpacingChain {q : ℕ} (R : ℕ) (j : Fin q → ℕ) : Prop :=
  StrictMono j ∧ ∀ i : Fin (q - 1), j i.succ - j i.castSucc ≤ R

/-- Candidate fixed-start macro-chain theorem, for fixed division/run sequences. -/
def FixedStartMacroChainBound (τ L : ℕ → ℕ) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∀ R : ℕ, 1 ≤ R → ∃ Q : ℕ,
    ∀ q : ℕ, Q < q → ∀ j : Fin q → ℕ,
      IsBoundedSpacingChain R j →
      ∃ i : Fin q, (L (j i) : ℝ) < δ * τ (j i) - 1

/-- Subexponential growth of the rank-dependent loss. -/
def SubexponentialRankLoss (C : ℕ → ℝ) : Prop :=
  Filter.Tendsto (fun m : ℕ => Real.log (C m) / m) Filter.atTop (nhds 0)

/-- Candidate A's excess-valuation inequality, abstracting its orbit polynomial. -/
def ExcessValuationBound
    (valuationAtPrefix τ : ℕ → ℕ) (scale : ℕ → ℝ) : Prop :=
  ∃ A : ℝ, ∃ C : ℕ → ℝ,
    SubexponentialRankLoss C ∧
    ∀ m : ℕ,
      (valuationAtPrefix m : ℝ) - τ m ≤
        C m * (1 + Real.log (2 + τ m)) ^ A

end CollatzBench.ProgressTargets
