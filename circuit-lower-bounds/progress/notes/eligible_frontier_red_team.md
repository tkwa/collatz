# Eligible frontier red-team: unrestricted circuit lower bounds

Date: 2026-08-05.  Audited commit:
`c73ac4514e63fce8f8459e5ddd38e26751093048`.

This note records the guide-mandated eligible-model audit.  It is deliberately
kept under `progress/`; the benchmark documents remain owned by the main
circuit-lower-bounds agent.

## Accounting protocol

An instrumented goal with a 1,000,000-token ceiling was created after reading
the complete live development guide, `AGENTS.md`, and all current files in
this folder.  Counts below are deltas of that instrument, not prose-length
estimates.  Each gated phase has a conservative exclusive baseline; earlier
source work and work that mixed audit categories are excluded.

- prerequisite/source/model work ended at total token count **86,555**;
- the exclusive Weakest phase begins at **86,555** and will not be called
  complete before an end count of at least **186,555**;
- the exclusive Weakest phase ended at **187,672**, a delta of **101,117**;
- the endpoint phase begins at **187,672** and will not be called complete
  before an end count of at least **237,672**;
- the endpoint phase ended at **493,782**, a delta of **306,110**;
- the scalar-ladder and calibration phase begins at **493,782** and ends at
  **560,064**, a delta of **66,282**.

Both hard phase thresholds are satisfied.  The endpoint count exceeds its
50,000-token minimum by 256,110 tokens; that large excess reflects hostile
quantifier, encoding, hypothesis, proof-barrier, and stronger-candidate
checks, not the length of this summary.

## Verified prerequisite facts

- Xin Li's ECCC TR15-121, Theorem 1.5 is genuinely a fixed **one-bit**
  polynomial-time affine extractor for entropy at least `log^C n`, with error
  `n^{-Omega(1)}`.  Thus the score-0 use does not make the invalid move of
  projecting a multi-bit extractor to one universally good coordinate.
- Li--Yang ECCC TR21-023, Theorem 4.1, Corollary 3.8, and Definition 3.6 give,
  at their optimized parameters, the finite inequality
  `3.1n - 26.1d - 25.6` for a dimension-`d` affine disperser in the stated
  single-output fan-in-two `B_2` gate-count model.
- Carmosino--Dang--Jackman, arXiv:2604.23958v1 (27 April 2026), still calls
  Li--Yang's `3.1n-o(n)` result state of the art for explicit functions
  against general Boolean circuits.
- Golovnev--Kulikov--Williams, ITCS 2021, Theorem 1, converts a size-`s`
  unrestricted circuit to an OR of about `2^{s/3.9}` 16-CNFs.  Consequently
  a sufficiently strong depth-three lower bound can imply a `B_2` coefficient
  improvement, but that premise is stronger than, not a weakening of, the
  desired general-circuit conclusion.

## Weakest phase

### Formal starting point

Put `b=31/10` and

```math
\Delta_L(n)=C_L(n)-bn.
```

The draft candidate has the exact quantifier order

```math
\exists L\in NP\;\exists\varepsilon\gt0\;\forall N\;\exists n\ge N:
\quad C_L(n)\ge(b+\varepsilon)n.
```

Equivalently, one fixed language has
`limsup C_L(n)/n>b`.  The machine for `L`, the positive gain, and the
unbounded sequence of hard lengths cannot change after `N` is chosen.

### Quantifier-order attacks

The fixed-language order is essential.

- `forall N exists L exists n>=N` is a theorem, even with `L in P` and a
  fixed large coefficient: choose a Shannon-hard truth table at the one
  selected length and put it in the finite control of a polynomial-time
  machine.  The machine can depend on `N`.
- `forall k exists L` with `k` hard lengths is equally vacuous.  One machine
  can hard-code any finite collection of truth tables.  Letting `L` depend
  on `k` does not yield one language hard infinitely often.
- Allowing any finite list of candidate languages at all lengths does not
  weaken the fixed witness: by infinite pigeonhole, one member witnesses
  infinitely many hard lengths.  Letting the list grow with `n` destroys
  this argument and becomes an advice/changing-witness formulation.
- `exists L forall N exists epsilon>0 exists n>=N` is not the coefficient
  conjecture.  The gain may shrink with the selected length; this is
  equivalent, up to the tenth-integer lattice, to crossing `3.1n`
  infinitely often.
- A recursive infinite set of hard lengths is not an extra requirement.
  For a fixed NP verifier, the length-`n` truth table and its exact minimum
  circuit size are computable by finite brute force.  Therefore the hard
  length set is recursive whenever the conjecture is true.  Polynomial-time
  recognizability or a density/gap condition would be genuinely stronger.

The last point also qualifies the phrase “no constructibility of the hard
lengths”: no **efficient** constructibility is required, but ordinary
computability is automatic.

### Uniformity and nonuniform-selection attacks

“A family of NP functions” must mean one uniform verifier, hence one
language.  If a fresh polynomial-size description may be selected at each
length, a linear lower bound follows by counting and is not open.

For example, the algebraic normal forms

```math
q_A(x)=\bigoplus_{i\lt j}A_{ij}x_ix_j
```

give `2^{Theta(n^2)}` distinct functions, all evaluable from an `O(n^2)`-bit
description.  The number of topologically ordered `B_2` circuits with
`s=O(n)` gates is at most

```math
(16(n+s)^2)^s(n+s)=2^{O(n\log n)}.
```

Thus some polynomially described quadratic form needs more than `cn` gates
for every fixed `c`.  Choosing its coefficient matrix as length-dependent
advice gives a `P/poly` language with the desired lower bound at every large
length.  A sparse-ANF version uses `Theta(n)` selected quadratic monomials
and only `Theta(n log n)` advice, still enough—after choosing the constant in
the number of monomials—to outcount all `cn`-gate circuits.  Consequently:

- arbitrary truth tables, changing `P`/`NP` machines, `P/poly`, `NP/poly`,
  and polynomially described nonuniform slices are already on the proved
  side;
- one fixed `P` language would be a stronger conjecture than the draft;
- one fixed `NP` language is the conventional last uniform witness class
  before these counting shortcuts;
- constant advice does not change the infinitely-often existential claim:
  one advice value recurs infinitely often and can be frozen into the
  verifier.  Unbounded advice such as `O(log n)` is a genuine, artificial
  weakening and produces no canonical minimum.

Kannan's theorem supplies much stronger fixed-polynomial lower bounds at the
second level of the polynomial hierarchy, so simply enlarging the witness to
`Sigma_2^P` makes the coefficient problem proved.  Classes strictly between
`NP` and that level (for example, symmetric or randomized verification
classes) create a separate witness-class axis; they do not identify a unique
absolute “weakest” statement.  The draft should call its candidate weakest
only after fixing the `NP`-explicitness convention.

Complementation does not create a weaker class axis.  At this linear
threshold a minimal circuit has an output gate, and complementing that
gate's `B_2` label preserves size.  Hence an existential `coNP` witness is
equivalent to an existential `NP` witness, and `NP union coNP` adds nothing.

### Bound weakenings

The score-0 theorem already implies

```math
\exists F\in P:\quad \liminf_{n\to\infty}\frac{C_F(n)}n\ge b.
```

Strictness is therefore indispensable.  The possible second-order
thresholds, from weakest to strongest, include:

1. `limsup Delta_L(n)>-infinity`, i.e. `C_L(n)>=bn-O(1)` infinitely often;
2. `limsup Delta_L(n)>=0`, which, because `b=31/10` and circuit size is
   integral, amounts to crossing the exact line infinitely often;
3. `limsup Delta_L(n)>0`, a repeated positive additive gain;
4. `limsup Delta_L(n)=+infinity`, an unbounded positive additive gain with no
   prescribed rate; and
5. `limsup C_L(n)/n>b`, the draft's fixed leading-coefficient gain.

All are apparently open for one fixed `NP` language.  The 2026 state-of-the-
art citation supports the absence of a better leading coefficient, but the
usual slogan `3.1n-o(n)` by itself does not logically certify every additive
variant; the open-status judgment also uses the exact negative finite term
in Li--Yang and the absence of a superseding result in the recent literature
search.

Loss-only improvements below item 1 are poor benchmark frontiers.  They can
come solely from a lower-entropy affine disperser or extractor.  Moreover,
item 1 cannot follow merely by inserting a better affine disperser into the
current finite inequality: since `d` is nonnegative,
`3.1n-26.1d-25.6` is always at most `3.1n-25.6`.  The unchanged Li--Yang
inequality therefore cannot certify any positive unbounded additive gain,
regardless of how good the inserted affine disperser is.  This signed-term
argument uses the verified primary theorem and needs no separate affine
Ramsey citation.

Items 1--3 remain dominated by exact bookkeeping and convention risk.  A
free constant gate, a strict versus non-strict size cutoff, and the residue
of `31n/10` can change a bounded additive claim.  They receive less than a
20% chance of isolating a core unrestricted-circuit obstacle.

Item 4 is the serious replacement candidate:

```math
\exists L\in NP:\quad
\limsup_{n\to\infty}\bigl(C_L(n)-3.1n\bigr)=+\infty.
```

It is strictly weaker than the draft, convention-robust under `O(1)` changes,
uses one fixed witness, and cannot be obtained from the known
`3.1n-26.1d-25.6` inequality.  It prescribes no computable rate.  A typical
route would need either growing-scale improvements beyond the optimized
gate-elimination line, structural information stronger than affine
dispersion, or a genuine direct-sum/composition lower bound.  This audit's
central subjective estimate is **25%** (plausible range 20--35%) that proving
it removes a core obstacle, so the literal 20% replacement rule favors it.
This is a judgment, not a theorem.

### Direct-sum hostile check

Choose once and for all a finite Boolean function `h` on `t` bits whose exact
`B_2` complexity is more than `3.1t`; such a finite truth table exists by
counting and may be hard-coded into a uniform `P` machine.  Consider

```math
H_k(x^{(1)},\ldots,x^{(k)})=
\bigoplus_{i=1}^k h(x^{(i)}).
```

Any sufficiently additive lower bound for `C(H_k)` would prove the draft
coefficient conjecture—or at least the unbounded-additive candidate.  There
is no unrestricted-circuit direct-sum theorem strong enough to justify this.
Restrictions give only a maximum of component complexities, while circuits
may mix gates across blocks.  Treating component costs as additive would
silently solve the benchmark and is invalid.

The same failure blocks XORing independent affine dispersers, appending
fixed hard gadgets, composing finite hard functions, and converting a
multi-output direct product to one output.  This is a theorem gap, not
evidence that the resulting functions are easy.

### Depth, basis, and output attacks

- A coefficient improvement for bounded-depth, bounded-fan-out, formula,
  monotone, or uniform circuits does not imply the unrestricted `B_2`
  statement.  Such a restricted-depth candidate can be open and easier but
  is outside this benchmark's implication target.
- A depth cap at least the forbidden size is merely equivalent: every
  `s`-gate acyclic circuit has depth at most `s`.  A smaller cap is a genuine
  restriction and loses the implication.
- The Golovnev--Kulikov--Williams depth-three premise can imply a general
  `B_2` coefficient improvement only at its exact strong exponential
  parameters.  It is a stronger sufficient condition, not a weakening.
- Replacing `B_2` by the smaller `U_2` or De Morgan basis makes the same
  coefficient claim already proved (the known `U_2` coefficient is `5`).
  To transfer in the other direction, one must pay the exact simulation cost
  for XOR/XNOR; the known `U_2` results then do not reach `3.1` in `B_2`.
- Multi-output claims are easily trivialized by output count—for example,
  outputting linearly many distinct simple quadratic functions already
  forces linearly many output gates.  A constant-output vector lower bound
  transfers to one coordinate only after a factor equal to the number of
  outputs, and a selector construction loses the same advantage.  Repeated
  identical outputs are just the original single-output problem.

### Refuter and constructivity attacks

At a hard length, the bare existence of a choice function mapping each small
circuit to an error is equivalent to the lower bound.  Because an `NP`
language is decidable, exhaustive search also makes such a refuter recursive
and exponential-time.  Requiring a polynomial-time refuter, a low-oracle
refuter, a canonical error, or feasible-arithmetic formalization is an extra
condition and therefore stronger.  Requiring a refuter only for random or
selected circuits no longer implies a worst-case circuit lower bound.

For a `P` target, an `FP^NP` search can locate an error once totality is
known.  For an `NP` target, false positives introduce a universal witness
condition, so the same automatic oracle bound cannot be silently asserted.
None of these formulations weakens the fixed numerical frontier while
retaining an implication to it.

### Padding, encoding, and finite-hardcoding attacks

Ordinary polynomial padding increases input length and decreases both a
coefficient and an exponent.  “Unpadding” would have to encode more than
`n` independent input bits into `n` bits or preserve hardness under a
restriction; neither follows.  A promise that discards invalid encodings, a
larger input alphabet counted by symbols, or semantic size such as the
number of SAT variables changes the benchmark metric and can manufacture a
gain.

Finite hardcoding explains why `sup_n C_L(n)/n>b`, one hard length, and every
formulation where `L` follows the requested length are trivial.  It does not
extend to one fixed machine at infinitely many lengths.  Attempts to combine
infinitely many hard-coded machines into one universal language must either
put their descriptions/truth tables in the input—destroying the coefficient
through encoding length—or uniformly construct them, which is precisely the
missing explicit-hard-function problem.

### Provisional Weakest recommendation

Within the fixed single-output unrestricted `B_2`, fixed-`NP`-witness scope,
replace the draft leading-coefficient statement by the no-rate unbounded
additive statement in item 4.  If the benchmark owner decides that only a
leading-order improvement counts as a “core difficulty,” retain the draft
but say **weakest leading-coefficient improvement under the fixed NP
explicitness convention**, rather than unqualified “Weakest.”

The exclusive Weakest audit used **101,117 instrumented tokens**.  Its final
recommendation is the no-rate unbounded additive statement above, with the
scope-qualified leading-coefficient statement as the fallback if the owner
rejects second-order progress by definition.

## Endpoint phase

Exclusive baseline: **187,672**.  End count: **493,782**.  Exclusive delta:
**306,110**.

### Exact statement and normalization

The draft endpoint is

```math
\exists L\in NP\;\exists\varepsilon\gt0\;\exists n_0\;\forall n\ge n_0:
\quad C_L(n)\ge2^{\varepsilon n}.
```

Writing `log_2 max{1,C_L(n)}` if the circuit convention permits a zero-gate
constant, this is equivalently the assertion that one fixed `NP` language has

```math
\liminf_{n\to\infty}\frac{\log_2 C_L(n)}n\gt0.
```

The `liminf`, rather than `limsup`, is the important feature.  The endpoint
requires exponential hardness on **every sufficiently large exact bit
length**.  It is not merely a conventional way to write an infinitely-often
lower bound.

The endpoint is internally feasible.  If a displayed witness has an
unhelpfully large `epsilon`, it can be replaced by any smaller positive
rational.  The upper ceiling is about `2^n/n`, so every `epsilon` strictly
below one leaves exponential headroom.

### Infinitely often, almost everywhere, and class notation

Define the two numerical properties

```math
\begin{aligned}
E_{\mathrm{io}}(L)
&:\Longleftrightarrow
\limsup_{n\to\infty}\frac{\log_2 C_L(n)}n\gt0,\\
E_{\mathrm{ae}}(L)
&:\Longleftrightarrow
\liminf_{n\to\infty}\frac{\log_2 C_L(n)}n\gt0.
\end{aligned}
```

The draft is `exists L in NP: E_ae(L)`.  The usual class exclusion
`NP not subset SIZE(2^{o(n)})`, when interpreted through minimum circuit
size, supplies only `exists L in NP: E_io(L)`.  Negating a subexponential
upper bound says that a fixed exponential rate is exceeded on an unbounded
set of lengths; it does not rule out an infinite complementary set of easy
lengths.  Equivalently, the endpoint asks for exclusion even from an
infinitely-often exponential-size class at a smaller exponent.

Thus

```math
E_{\mathrm{ae}}(L)\Longrightarrow E_{\mathrm{io}}(L)
\Longrightarrow L\notin P/poly,
```

and neither converse is available.  Abstract size sequences make the gap
plain: exponential spikes on rapidly growing lengths satisfy the first
`limsup` condition while having zero `liminf`; the rate
$2^{n/\log n}$ at every length is eventually superpolynomial but has zero
linear-exponent `limsup` and `liminf`.

This distinction prevents three misleading labels:

- ordinary ETH is a uniform running-time hypothesis, not a nonuniform
  circuit lower bound;
- a hypothesis called nonuniform ETH or circuit ETH normally excludes
  subexponential circuits for a named satisfiability problem and therefore
  has at most an infinitely-often consequence unless its quantifiers say
  otherwise;
- SETH concerns the limiting time exponent of bounded-width SAT and does not
  imply this existential almost-everywhere circuit statement.

The named hypotheses and the draft are generally incomparable: the named
problem is a stronger witness requirement, while the draft has the stronger
length regularity.  The benchmark should not call the endpoint “nonuniform
ETH” without defining a nonstandard almost-everywhere version.

### The all-length obstacle is substantive

An `NP` language can be modified to be trivial on every even length, or on
an arbitrarily sparse infinite set, while retaining hard slices elsewhere.
NP-completeness also permits such padding pathologies.  A circuit lower bound
on infinitely many lengths has no mechanism that locates a hard source
length within a constant factor of each target length.

Polynomial padding changes an input of length `m` to length `N=Theta(m^k)`
and turns `2^{Omega(m)}` into only `2^{Omega(N^{1/k})}`.  Linear padding or
`o(m)` overhead preserves the qualitative exponential rate, but standard
completeness reductions are not guaranteed to have that overhead.  Choosing
the last known hard length is not a uniform construction: minimum circuit
sizes are computable by finite brute force, but the resulting length map need
not be polynomial-time computable and hence need not define an `NP` language.

A finite menu of candidate languages is not a genuine relaxation at the
exponential scale.  If at each length at least one of `L_1,...,L_k` is hard,
the selector language

```math
L'=\{(i,x):x\in L_i\}
```

is in `NP`, and restricting its first `O(1)` bits to `i` recovers every
component.  Hence its complexity is at least the maximum component
complexity, up to a constant length shift.  A selector of `O(log n)` or even
linear length likewise preserves some fixed exponential rate.  Exponential
truth-table advice does not: putting that advice in the input destroys the
rate.  This is why constant-advice alternation is not a counterexample, but
arbitrary nonuniform slice selection remains trivial by counting.

### Existential `NP` versus SAT and complete languages

A fixed canonical SAT endpoint implies the existential endpoint, but the
reverse direction is not known.  A Cook reduction with output length
`N=Theta(n^k)` can transfer an exponential lower bound only to a stretched
exponent in `N`.  It cannot preserve a linear exponent without a verified
near-linear reduction for the particular witness and encodings.

There is a stronger hostile encoding issue.  For common binary encodings of
3-CNF, a length-`N` formula has at most `O(N/log N)` relevant variables:
each variable occurrence carries a logarithmic index.  Exhaustive search can
therefore decide that syntax in time, and hence by circuit unrolling in size,

```math
2^{O(N/\log N)}.
```

The same issue occurs for common explicit gate-list encodings of Circuit-SAT.
Thus an eventual `2^{epsilon N}` claim in **raw encoding length** is not just
unproved for every natural SAT encoding; it is false for standard encodings
with this elementary subexponential upper bound.  ETH conventionally counts
semantic variables, not raw description bits.  Switching to that metric
would leave the benchmark's ordinary-bit `B_2` model.

Invalid encodings add another failure mode.  A syntax with no valid objects
at infinitely many lengths has constant slices there.  Padding can repair a
chosen syntax, but it must be specified and its length overhead checked.  The
existential `NP` endpoint wisely avoids claiming encoding-invariant hardness
for SAT.

Shrinking the witness to `P` is impossible: a polynomial-time machine unrolls
to polynomial-size circuits.  Replacing `NP` by `coNP` does not change the
qualitative endpoint in `B_2`, because an output complement costs at most a
constant.  Enlarging the witness class can make much stronger statements
known and changes the problem rather than harmlessly weakening it.

### A clean conditional route through a PRG range

Cryptographic inversion hardness by itself does not directly give forward
decision hardness.  A length-regular exponentially secure pseudorandom
generator does give a precise sufficient condition, however.

Suppose a uniform polynomial-time family

```math
G_n:\{0,1\}^{\lfloor\alpha n\rfloor}\longrightarrow\{0,1\}^n,
\qquad 0\lt\alpha\lt1,
```

is pseudorandom against circuits of size `2^{gamma n}` for all sufficiently
large `n`.  Its range language is in `NP`: a seed is a witness.  Any exact
circuit `D` for range membership satisfies

```math
\Pr[D(G_n(U))=1]=1,
\qquad
\Pr[D(U_n)=1]\le2^{-(1-\alpha)n}.
```

It therefore distinguishes with overwhelming advantage and must have size
greater than `2^{gamma n}`.  This proves the draft endpoint under the stated
PRG hypothesis.  Polynomial-security PRGs are insufficient; security must
remain exponential and must hold at every sufficiently large security
parameter.  A one-bit-stretch generator with near-brute-force security would
support much stronger exponent candidates.

This route cuts both ways in the calibration.  It is concrete evidence that
the all-length condition is compatible with a natural `NP` language, not a
pathological wish.  But exponentially secure length-regular PRGs are strong
unproved assumptions, and their existence is also the hypothesis behind the
natural-proofs barrier.  The route supports truth, not an unconditional ZFC
proof.

A language in `NP` whose prefixes satisfy a sufficiently strong time-bounded
Kolmogorov-incompressibility condition would be still stronger evidence.  A
slice with a `2^{epsilon n}`-gate circuit has a description of length
`2^{epsilon n} poly(n)` and can be decompressed into its `2^n`-bit truth table
in time polynomial in that table length, so the corresponding
incompressibility condition rules out such slices eventually.  It is
tempting to summarize this as “`NP` contains a p-random language,” but the
equivalence depends on the precise martingale and decompression resource
bounds.  That hypothesis is itself very strong.  No resource-bounded-measure
slogan should be used here without fixing those bounds and the ambient class;
known measure results in exponential hierarchies do not place the hard
language in `NP`.

### Known all-length results above `NP`

All-length circuit hardness is not inherently contradictory.  Zeyong Li's
Theorem 1.2 proves

```math
S_2E\not\subseteq\text{i.o.-SIZE}[2^n/n],
```

and its corollaries give almost-everywhere near-maximum lower bounds in
`Sigma_2 E intersect Pi_2 E` and `ZPE^NP`.  Source: “Symmetric Exponential
Time Requires Near-Maximum Circuit Size: Simplified, Truly Uniform,”
[arXiv:2310.17762v2](https://arxiv.org/abs/2310.17762).  This is an
exponential-time symmetric/alternating class, **not** `S_2^P` and not `NP`.
It shows that the exact-length construction problem can be solved with much
more uniform power, while emphasizing the enormous class descent requested
by the endpoint.

Recent resource-bounded-measure work likewise locates almost-everywhere
near-maximum functions in higher levels of the exponential-time hierarchy,
not in `NP`: Hitchcock, Sekoni, and Shafei, “Counting Martingales for Measure
and Dimension in Complexity Classes,”
[arXiv:2508.07619](https://arxiv.org/abs/2508.07619).

### Basis, outputs, and robustness

Unlike the `3.1` coefficient, a fixed exponential rate is robust under any
two fixed finite complete fan-in-two bases.  If a gate in one basis has a
constant-size simulation in the other, the minimum sizes differ by a
constant factor, which can be absorbed by decreasing `epsilon`.  A
polynomial simulation loss, such as expanding ordinary unbounded-fan-in
AND/OR gates, is also absorbed by the exponential.  None of this licenses
arbitrary high-arity truth-table gates or a change of input-length metric.

Constantly or polynomially many uniform outputs can also be folded into a
selector language with logarithmic input overhead; an exponential vector
lower bound then leaves some exponential single-output hardness.  Trivial
output-count lower bounds are only polynomial and do not help.  These
transfers are valid for the endpoint even though their constant or
polynomial losses are fatal to an exact linear coefficient claim.

Restricted-depth, formula, monotone, bounded-fan-out, and uniform-circuit
lower bounds still do not imply an unrestricted nonuniform `B_2` lower
bound.  Exponential scale does not erase a one-way model containment.

### Stronger endpoint candidates

The natural strengthening chain is

```math
\Omega(2^n/n)
\Longrightarrow
2^n/\mathrm{poly}(n)
\Longrightarrow
2^{(1-o(1))n}
\Longrightarrow
2^{\varepsilon n}.
```

All quantifiers here are eventual and use one fixed `NP` language.
`2^{(1-o(1))n}` means that the `liminf` of the base-two log complexity divided
by `n` is one; it is much weaker than being within a polynomial factor of the
Shannon maximum.  `Omega(2^n/n)` asks for a fixed positive fraction of the
hardest arbitrary-function order at every length.

The source currently cited for the hardest-function asymptotic has the wrong
author.  ECCC TR11-086, “A Tighter Lower Bound on the Circuit Size of the
Hardest Boolean Functions,” is by **Masaki Yamamoto**, not Magnus Find and
Alexander Golovnev.  It states in the unrestricted binary-gate model that
the hardest complexity is `(1+o(1))2^n/n` and refines its lower-order term:
[ECCC TR11-086](https://eccc.weizmann.ac.il/report/2011/086/).

Subjective joint truth-and-eventual-ZFC-proof judgments from this audit are:

| Candidate | Central judgment | Plausible range | Verdict |
|---|---:|---:|---|
| Some `NP` language has i.o. `2^{epsilon n}` complexity | 85% | 72--92% | More defensible, but not above the current eventual branch. |
| Draft: some `NP` language has eventual `2^{epsilon n}` complexity | 80% | 65--89% | Knife-edge; retain only with a star. |
| Eventual `2^{(1-o(1))n}` for some `NP` language | 62% | 42--77% | Below the endpoint rule. |
| Eventual `2^n/poly(n)` for some `NP` language | 48% | 28--68% | Reject. |
| Eventual `Omega(2^n/n)` for some `NP` language | 38% | 18--58% | Reject. |

These are elicitation judgments, not frequencies or literature consensus.
The wide ranges are part of the result.  The exact 80% for the draft should
not be presented as a robust empirical estimate.

### Proof barriers, arithmetic, and independence

The endpoint implies `NP not subset P/poly` and therefore `P != NP`, so a
proof must escape the familiar limitations of present general-circuit
techniques.  Relativization, natural proofs conditional on strong
pseudorandomness, and algebrization are barriers to broad proof styles, not
evidence that the arithmetic statement is false.

Atserias and Mueller's 2026 paper gives a more precise warning about the
all-length axis.  It proves consistency of the weak bounded-arithmetic theory
`S^1_2` with `EXP not subset P/poly`, strengthens this to an
almost-everywhere `EXP not subset io-P/poly` consistency, and gives a
magnification result for proving the almost-everywhere version in weak
theories.  Source: “From Goedel incompleteness to the consistency of circuit
lower bounds,” [arXiv:2604.25251](https://arxiv.org/abs/2604.25251),
especially Corollary 6.2 and Theorem 1.4.  This is **not** a ZFC-independence
theorem and concerns `EXP` versus polynomial circuits, not the draft `NP`
exponential bound.  It does substantiate the claim that almost-everywhere
quantifiers can create a separate formal-proof obstacle.

For any fixed decidable language and length, its truth table and exact
circuit complexity are computable by finite exhaustive search.  MCSP's
computational difficulty therefore does not make the endpoint
algorithmically undecidable.  The endpoint is a concrete arithmetical
sentence once the existential verifier and constants are expanded.  No
specific ZFC-independence result is known.  Conversely, finiteness at each
length does not give a uniform proof of the eventual assertion, so it is
also wrong to dismiss independence risk entirely.

### Endpoint recommendation

Do **not** strengthen the draft to a named complete language, a near-unit
exponent, a polynomial factor from the maximum, or Shannon order.  None
clears the guide's 80% rule, and common SAT encodings can make the named
linear-exponent claim false.

The current existential eventual-exponential statement is the strongest
clean candidate this audit can place at the threshold, but only at a
knife-edge central **80%**, with a broad 65--89% range.  Keep the star.  The
published explanation should explicitly say that:

1. the estimate is for truth **and** eventual proof in ZFC or accepted
   foundations, not truth alone;
2. the almost-everywhere quantifier is an independent source of doubt;
3. the claim is stronger than `NP not subset SIZE(2^{o(n)})` and is not a
   standard ETH formulation; and
4. the PRG-range argument is a conditional truth route, not a proof route.

If the benchmark owner interprets “at least 80%” conservatively rather than
allowing a boundary point with large uncertainty, this endpoint does not
robustly pass.  The principled fallback is an i.o. exponential endpoint with
an 85% central judgment and a rebuilt or branched upper ladder; it is not
valid simply to put that weaker endpoint above the current eventual rows.

## Scalar ladder and calibration phase

Exclusive baseline: **493,782**.  End count: **560,064**.  Exclusive delta:
**66,282**.

### Every published arrow

All arrows in the currently published scalar chain are mathematically valid
with their stated quantifiers:

| Higher row | Lower row | Check |
|---|---|---|
| Unbounded linear coefficient | Weakest coefficient gain | An infinite `limsup` exceeds `3.1`.  It also implies the recommended unbounded-additive Weakest candidate. |
| `n^{1+delta}` i.o. | Unbounded coefficient | Divide by `n`; `n^delta` diverges on the same unbounded lengths. |
| `n^2` i.o. | Some fixed polynomial gain i.o. | Take `delta=1`. |
| `NP not subset P/poly` | `n^2` i.o. | One fixed language outside every polynomial-size class must exceed `n^2` on infinitely many lengths; finitely many exceptions can be absorbed. |
| Eventual `n^{log log n}` | `NP not subset P/poly` | It eventually exceeds every fixed polynomial. |
| Each displayed eventual rate | Its predecessor | Direct asymptotic domination; the witness and all-length quantifier are preserved. |
| Eventual `2^{epsilon n}` | Eventual `2^{n/log n}` | `epsilon n` eventually exceeds `n/log n`. |

`NP not subset P/poly` correctly expands to one fixed `NP` language outside
all polynomial-size circuit classes, not a language that changes with the
polynomial exponent.  Positive rational `delta` and `epsilon` can replace
arbitrary positive reals, so formalizability is not an issue.  The score-0
witness need not equal any positive-rung witness because score 0 is already a
theorem.

Every positive row is open in unrestricted single-output `B_2`.  Restricted
models and higher witness classes do not close a row.  The score-0 theorem is
correctly stated as one fixed uniform `P` family, at all sufficiently large
lengths, with `3.1n-O(log^C n)` complexity.  The only source-level correction
found in this part is the Yamamoto authorship above.

The arrows are therefore not the problem.  The problem is that a valid chain
can still skip natural, likely stopping points and can suppress an
incomparable axis.

### Corrected implication graph

Let `W` denote the recommended no-rate unbounded-additive Weakest statement.
The following is a denser implication spine; arrows point from stronger to
weaker statements:

```text
eventual exponential
  |-- eventual 2^(n/log n) -- eventual stretched/quasipolynomial rates
  |                             |
  |-- i.o. exponential ---------|
                                v
                    NP not subset P/poly
                                |
                      i.o. n^10, n^2
                                |
                some i.o. n^(1+delta)
                                |
                         i.o. n log n
                                |
                    unbounded coefficient
                                |
                 i.o. 10n; some c>3.1
                                |
                                W
```

The horizontal join in this text diagram means only that both branches imply
`NP not subset P/poly`; neither branch implies the other.  In particular:

- i.o. exponential hardness does not imply even eventual mild
  superpolynomial hardness;
- eventual `2^{n/log n}` hardness does not imply an i.o. fixed linear
  exponent;
- possessing both properties, even for the same language, still does not
  imply an eventual fixed linear exponent.

A faithful presentation should show this as a branched implication graph or
say explicitly that the scalar ladder deliberately follows only the
almost-everywhere branch.  A conjunction of the two branch milestones could
be a valid intermediate rung, but it represents two achievements and needs
its own effort elicitation.  A disjunction linearizes the graph only
syntactically and lets one result clear many rows at once; it does not solve
the skip problem.

### Missing contours and skip-risk failures

The published `40%` and `45%` skip values are all just below the guide's 50%
cap, but several central estimates should exceed that cap once omitted
contours are made explicit:

| Published gap | Missing natural contour | Revised central skip risk |
|---|---|---:|
| Weakest to unbounded coefficient | The original `3.1+epsilon` coefficient gain, then a fixed checkpoint such as `10n` | 60% |
| Unbounded coefficient to fixed polynomial gain | `n log n` or another explicit mildly superlinear i.o. rate | 60% |
| `n^2` to `NP not subset P/poly` | Fixed larger polynomial checkpoints such as `n^10` | 65% |
| Nonuniform separation to eventual `n^{log log n}` | No-rate almost-everywhere superpolynomial hardness; separately, the i.o. exponential branch | 65% |
| Quasipolynomial exponent to `2^{n^{1/10}}` | `exists delta>0: 2^{n^delta}` eventually | 60% |
| `2^{n^{3/4}}` to `2^{n/log n}` | Fixed exponents such as `n^{0.9}` and near-one sublinear exponents | 55% |
| `2^{n/log n}` to eventual exponential | `2^{n/log log n}`-type losses and i.o. exponential hardness | 60% |

Each number remains subjective, with at least a 15--20 point uncertainty.
The important conclusion is categorical: these central values are above the
allowed cap, so the table cannot be defended merely by retaining the printed
40--45% values.

The most important missing quantifier-boundary rung is

```math
\exists L\in NP\;\exists\delta\gt0\;\exists n_0\;\forall n\ge n_0:
\quad C_L(n)\ge2^{n^\delta}.
```

It is strictly weaker than the fixed `delta=1/10` row.  A theorem with
`delta=10^{-6}` would solve it without reaching that fixed-exponent contour.
The
most important missing length-boundary rung is a no-rate almost-everywhere
superpolynomial statement,

```math
\exists L\in NP\;\forall k\;\exists n_0\;\forall n\ge n_0:
\quad C_L(n)\ge n^k.
```

This is stronger than `NP not subset P/poly` and weaker than every displayed
eventual superpolynomial rate.  It isolates the all-length difficulty before
attaching an arbitrary rate.

### Geometric effort audit

The published cumulative log-effort values below score 10 have successive
gaps

```text
0.47, 0.37, 0.31, 0.35, 0.33, 0.30, 0.29, 0.21, 0.18, 0.19.
```

They correspond to multiplicative factors

```text
2.95, 2.34, 2.04, 2.24, 2.14, 2.00, 1.95, 1.62, 1.51, 1.55.
```

This is visibly concave, not geometric in score: early rows consume much
more log effort per score point, while scores 7--10 are compressed.  If the
published Weakest anchor `2.55` at score `0.3` and the score-10 anchor `5.55`
are both held fixed, exact linear interpolation in log effort gives roughly

| Score | Geometric log-effort target |
|---:|---:|
| 1 | 2.77 |
| 2 | 3.08 |
| 3 | 3.38 |
| 4 | 3.69 |
| 5 | 4.00 |
| 6 | 4.31 |
| 7 | 4.62 |
| 8 | 4.93 |
| 9 | 5.24 |
| 10 | 5.55 |

This is a spacing diagnostic, not a recommendation to overwrite substantive
effort judgments with a formula.  The better repair is to elicit efforts for
the missing contours, then assign fractional scores so cumulative log effort
is approximately linear.  If the existing effort estimates are retained,
their implied scores are not the printed integers.

The scale easily has the required two doublings of headroom.  From
`10^2.55` at the Weakest candidate to `10^5.55` at score 10 is a factor of
one thousand, almost ten doublings.  To the `10^6.12` endpoint it is about
3,700, nearly twelve doublings.  Headroom is not the failure.

### Score-10 and probability calibration

Assigning `2^{n^{3/4}}` eventual hardness the same numeric effort as the
guide's median BB(6), Schanuel, and general-Vojta anchor is a permissible
subjective contour, but the current record does not independently justify
the comparison.  It sets that row to `10^5.55` and then calls it calibrated.
That is placement, not elicitation.  A defensible version should record at
least a direct comparative judgment: whether an unrestricted `NP` circuit
lower bound with an all-length `n^{3/4}` exponent is believed easier than,
similar to, or harder than each anchor, with uncertainty.

This audit does not have evidence strong enough to move the score-10 row.
It recommends retaining it **provisionally**, widening the uncertainty, and
removing any suggestion that the comparison is source-backed.  The exact
expert-year point estimates and skip percentages should be reported as
central elicitation values with ranges, not measurements.

### Scalar repair recommendation

Before publication, at minimum:

1. insert the recommended unbounded-additive Weakest candidate and retain the
   old coefficient candidate as a separate higher contour;
2. add fixed-coefficient, mild-superlinear, larger-polynomial, no-rate
   almost-everywhere, and existential-stretched-exponent contours;
3. display the i.o.-exponential branch separately rather than pretending it
   is implied by the eventual subexponential branch;
4. recompute integer skip judgments; do not cap them at 45% by assertion;
5. refit score positions after eliciting the new contours so log cumulative
   effort is approximately linear below score 10; and
6. keep the current endpoint starred, with the knife-edge 80% explanation
   from the endpoint phase.

If compactness is essential, remove some arbitrary fixed exponents
(`1/4`, `1/2`, or `3/4`) rather than omitting quantifier boundaries.  A
quantifier boundary is more likely to represent a genuine stopping point
than a particular decimal exponent.

## Integration outcome

The published ladder now implements the audit's repair: it adds the
unbounded-additive Weakest candidate, fixed `10n`, i.o. `n log n`, i.o.
`n^{10}`, no-rate eventual superpolynomial, existential stretched-exponent,
and near-exponential contours.  It displays i.o. exponential hardness as an
incomparable branch, joins the two axes by a conjunction whose two witnesses
may differ, and retains eventual exponential hardness only as a
starred knife-edge endpoint.  Fractional scores preserve the score-`10`
anchor while the refitted log efforts are approximately linear below it.
Every revised central integer skip estimate is at most 45%, with the stated
wide uncertainty.
