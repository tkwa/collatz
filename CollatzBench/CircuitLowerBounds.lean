import CollatzBench.Foundations
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Int.Basic
import Mathlib.Data.List.GetD

/-!
# The dedicated unrestricted-circuit conjecture

The definitions below give concrete machine semantics for `NP` and concrete
fan-in-two Boolean circuits over the complete binary basis `B₂`.
-/

namespace CollatzBench.CircuitLowerBounds

open Function

abbrev Language := List Bool → Bool

/-- Four tape symbols: blank, zero, one, and the input/witness separator. -/
abbrev TapeSymbol := Fin 4

def blank : TapeSymbol := 0
def bitSymbol (b : Bool) : TapeSymbol := if b then 2 else 1
def separator : TapeSymbol := 3

/-- A deterministic one-tape verifier machine. -/
structure VerifierMachine where
  stateCount : ℕ
  stateCount_pos : 0 < stateCount
  startState : Fin stateCount
  acceptState : Fin stateCount
  transition : Fin stateCount → TapeSymbol → Fin stateCount × TapeSymbol × Bool

namespace VerifierMachine

structure Config (M : VerifierMachine) where
  state : Fin M.stateCount
  tape : ℤ → TapeSymbol
  head : ℤ

def encodedData (input witness : List Bool) : List TapeSymbol :=
  input.map bitSymbol ++ [separator] ++ witness.map bitSymbol

def initialTape (input witness : List Bool) (i : ℤ) : TapeSymbol :=
  if 0 ≤ i then (encodedData input witness).getD i.toNat blank else blank

def initialConfig (M : VerifierMachine) (input witness : List Bool) : M.Config where
  state := M.startState
  tape := initialTape input witness
  head := 0

/-- One transition; `false` moves left and `true` moves right. -/
def step (M : VerifierMachine) (c : M.Config) : M.Config :=
  let action := M.transition c.state (c.tape c.head)
  { state := action.1
    tape := Function.update c.tape c.head action.2.1
    head := if action.2.2 then c.head + 1 else c.head - 1 }

def AcceptsWithin (M : VerifierMachine) (input witness : List Bool) (bound : ℕ) : Prop :=
  ∃ t : ℕ, t ≤ bound ∧ ((M.step^[t]) (M.initialConfig input witness)).state = M.acceptState

end VerifierMachine

/-- A direct verifier-machine definition of nondeterministic polynomial time. -/
def InNP (L : Language) : Prop :=
  ∃ M : VerifierMachine, ∃ C d : ℕ, 0 < C ∧
    ∀ input : List Bool,
      L input = true ↔
        ∃ witness : List Bool,
          witness.length ≤ C * (input.length + 1) ^ d ∧
          M.AcceptsWithin input witness (C * (input.length + witness.length + 1) ^ d)

/-- A directed acyclic fan-in-two circuit over all sixteen binary gates. -/
structure B2Circuit (inputCount : ℕ) where
  gateCount : ℕ
  leftInput : Fin gateCount → Fin (inputCount + gateCount)
  rightInput : Fin gateCount → Fin (inputCount + gateCount)
  gateFunction : Fin gateCount → Bool → Bool → Bool
  output : Fin (inputCount + gateCount)
  left_earlier : ∀ i, (leftInput i).val < inputCount + i.val
  right_earlier : ∀ i, (rightInput i).val < inputCount + i.val

namespace B2Circuit

def inputWire {n : ℕ} (C : B2Circuit n) (i : Fin n) : Fin (n + C.gateCount) :=
  ⟨i.val, Nat.lt_of_lt_of_le i.isLt (Nat.le_add_right n C.gateCount)⟩

def gateWire {n : ℕ} (C : B2Circuit n) (i : Fin C.gateCount) : Fin (n + C.gateCount) :=
  ⟨n + i.val, Nat.add_lt_add_left i.isLt n⟩

/-- Relational evaluation of the acyclic circuit's wire values. -/
def Evaluates {n : ℕ} (C : B2Circuit n) (input : Fin n → Bool) (output : Bool) : Prop :=
  ∃ value : Fin (n + C.gateCount) → Bool,
    (∀ i : Fin n, value (C.inputWire i) = input i) ∧
    (∀ i : Fin C.gateCount,
      value (C.gateWire i) =
        C.gateFunction i (value (C.leftInput i)) (value (C.rightInput i))) ∧
    value C.output = output

end B2Circuit

def ComputesAt (L : Language) {n : ℕ} (C : B2Circuit n) : Prop :=
  ∀ input : Fin n → Bool, C.Evaluates input (L (List.ofFn input))

/-- `s` is the minimum `B₂` gate count for `L` on inputs of length `n`. -/
def CircuitComplexity (L : Language) (n s : ℕ) : Prop :=
  (∃ C : B2Circuit n, C.gateCount = s ∧ ComputesAt L C) ∧
    ∀ C : B2Circuit n, ComputesAt L C → s ≤ C.gateCount

/-- `weakest_unrestricted_circuit_improvement.md`. -/
def WeakestUnrestrictedCircuitImprovement : Prop :=
  ∃ L : Language, InNP L ∧
    (∀ n : ℕ, ∃ s : ℕ, CircuitComplexity L n s) ∧
    ∀ A : ℝ, ∀ N : ℕ, ∃ n s : ℕ,
      N ≤ n ∧ CircuitComplexity L n s ∧
        (31 / 10 : ℝ) * n + A ≤ s

end CollatzBench.CircuitLowerBounds
