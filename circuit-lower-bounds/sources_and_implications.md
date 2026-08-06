# Sources and Implication Audit

This file distinguishes published theorems, formal implications, heuristics,
and subjective benchmark design.  It is authoritative for the model and
quantifiers used by the [difficulty ladder](difficulty_ladder.md).

## Fixed model and notation

A $B_2$ circuit is a single-output directed acyclic graph.  It has $n$ free
Boolean inputs, arbitrary fan-out, and gates of fan-in two labelled by any of
the sixteen functions $\mathbb F_2^2\to\mathbb F_2$.  Its size is its number
of gates.  For a language $L$, $C_L(n)$ is the minimum size of a circuit that
computes the characteristic function of $L\cap\lbrace0,1\rbrace^n$.

This is Li--Yang's unrestricted model.  It is not the $U_2$ basis, a De Morgan
basis, a formula, a monotone circuit, a bounded-depth circuit, an
unbounded-fan-in circuit, or a uniform circuit family.  Repeated wires,
degenerate binary gates, and output complementation do not change the audit's
implications.  No statement silently changes the basis, gate count, fan-in,
number of outputs, or input-length encoding.

“Infinitely often” means on an unbounded set of integer lengths.  “Eventually”
means at every sufficiently large integer length.  The latter implies the
former; the converse is never used.

## Score 0

**[proved]** Li and Yang's Theorem 4.1, with their optimized parameters
$\alpha_\phi=0.2$, $\alpha_I=9.6$, $\alpha_Q=1.8$, and $\delta=12.8$, gives
for a circuit computing an affine disperser of dimension $d$

```math
\mu(C,P,\varnothing)\ge12.8(n-2d-2).
```

Their Corollary 3.8 and Definition 3.6 then give

```math
\begin{aligned}
|C|
&\ge \mu-9.6n-0.2\left(\frac n2+\frac{5d}{2}\right)\\
&\ge3.1n-26.1d-25.6.
\end{aligned}
```

Primary source: Jiatu Li and Tianqi Yang, “$3.1n-o(n)$ Circuit Lower Bounds
for Explicit Functions,” *STOC 2022*,
[doi:10.1145/3519935.3519976](https://doi.org/10.1145/3519935.3519976), with
the open [ECCC report](https://eccc.weizmann.ac.il/report/2021/023/).

**[proved]** Xin Li's Theorem 1.5 gives a polynomial-time computable one-bit
affine extractor for every affine source of dimension at least $\log^C n$
for some constant $C\gt1$, with error below $1/2$.  It is therefore
nonconstant on every such affine subspace and is an affine disperser.  The
preceding inequality supplies one uniform $P$ family with
$C_{B_2}(f_n)\ge3.1n-O(\log^C n)$ for all sufficiently large $n$.  Primary
source: Xin Li, “Extractors for Affine Sources with Polylogarithmic Entropy,”
[ECCC TR15-121](https://eccc.weizmann.ac.il/report/2015/121/).

**[current-status evidence]** Carmosino, Dang, and Jackman call Li--Yang's
$3.1n-o(n)$ result the state of the art in 2026, describe gate elimination as
the primary technique for explicit lower bounds against general Boolean
circuits, and state that no explicit function in $P$, or even $NP$, is known
to require superlinear size.  Source: “Constructive Separations from Gate
Elimination,” [arXiv:2604.23958](https://arxiv.org/abs/2604.23958).

The $4.5n-o(n)$ result of Lachish--Raz and $5n-o(n)$ result of Iwama--Morizumi
are for $U_2$, which excludes XOR and XNOR.  They are not score-`0` theorems
in $B_2$.  Sources:
[doi:10.1145/380752.380832](https://doi.org/10.1145/380752.380832) and
[doi:10.1007/3-540-45687-2_29](https://doi.org/10.1007/3-540-45687-2_29).

## Positive-rung implication chain

Every item below is **[implication]**.  One witness for a higher numerical
bound also witnesses the lower bound; existential witnesses in different rows
need not otherwise agree.

1. A fixed coefficient above `3.1` gives an additive gain
   $\varepsilon n\to\infty$.  An i.o. `10n` bound supplies such a coefficient,
   and an infinite coefficient limsup supplies i.o. `10n`.
2. An i.o. $n\log n$ bound makes $C_L(n)/n$ unbounded.  An i.o.
   $n^{1+\delta}$ bound eventually dominates $n\log n$ on the same unbounded
   set of lengths.
3. An i.o. quadratic bound is the preceding row with $\delta=1$, and i.o.
   $n^{10}$ dominates the quadratic checkpoint.
4. $NP\nsubseteq P/poly$ means that some fixed $L\in NP$ is outside every
   $SIZE(n^k)$.  In particular, $C_L(n)\gt n^{10}$ for infinitely many $n$;
   otherwise an eventual $n^{10}$ upper bound, enlarged for finitely many
   small lengths, would put $L$ in $P/poly$.
5. If one $L\in NP$ eventually exceeds $n^k$ for every fixed $k$, then it is
   outside $P/poly$.  An eventual $n^{\log\log n}$ bound has this no-rate
   eventual property.
6. The eventual upper branch follows by direct asymptotic domination:

```math
n^{\log\log n}
\ \,\ll\ \,
2^{(\log n)^2}
\ \,\ll\ \,
2^{n^{1/10}}
\ \,\ll\ \,
2^{n^{1/2}}
\ \,\ll\ \,
2^{n^{3/4}}
\ \,\ll\ \,
2^{n^{9/10}}
\ \,\ll\ \,
2^{n/\log n}
\ \,\ll\ \,
2^{n/\log\log n}
\ \,\ll\ \,
2^{\varepsilon n}
```

The existential $\delta$ row sits between the second and third displayed
terms as a
statement: any fixed $\delta\gt0$ eventually makes $n^\delta$ exceed
$(\log n)^2$, while the `1/10` row witnesses the existential statement by
choosing $\delta=1/10$.  This does not assert one asymptotic comparison for
every possible $\delta$.  Every comparison involving $\varepsilon$ holds
after a threshold depending on that positive constant.

The infinitely-often exponential branch separately implies
$NP\nsubseteq P/poly$.  It is incomparable with every displayed eventual
subexponential rate: exponential spikes can leave infinitely many easy
lengths, while an eventual $2^{n/\log\log n}$ bound has zero linear exponent.
Score `12` explicitly conjoins the two branches, possibly with different
witness languages.  The eventual exponential endpoint implies that
conjunction with one witness; the conjunction does not imply the endpoint.

Score `0` is an unconditional theorem, so it is logically implied by every
statement.  The score-`0` $P$ witness is not claimed to be the $NP$ witness
used by a positive row.

## Claims deliberately not made

- $P\ne NP$ does not imply $NP\nsubseteq P/poly$.  The reverse implication
  holds because every $P$ language has polynomial-size circuits.
- $NP\nsubseteq P/poly$ does not give an eventual
  $n^{\omega(1)}$ bound.  Its hard language can have small circuits on an
  infinite complementary set of lengths.
- An i.o. bound does not imply the corresponding eventual bound.
- A time lower bound does not imply the same nonuniform circuit lower bound.
  Circuits need not be efficiently constructible.
- An existential exponential lower bound for some $NP$ language is not
  equivalent to the same bound for SAT.  Standard polynomial-time
  completeness reductions can expand length polynomially and destroy a
  linear exponent.
- Exponentially secure one-way functions or pseudorandom functions concern
  inversion or distinguishing.  They do not immediately provide a fixed
  $NP$ language with exponential forward circuit complexity.
- Padding can change all length-based exponents.  The ladder uses ordinary
  bit length and does not assert invariance under polynomial padding.

Karp and Lipton prove the relevant collapse consequence of an $NP\subseteq
P/poly$ assumption in “Some Connections between Nonuniform and Uniform
Complexity Classes,” *STOC 1980*,
[doi:10.1145/800141.804678](https://doi.org/10.1145/800141.804678).  This is
context for the strength of score `6`, not an equivalence with $P\ne NP$.

Kannan proves fixed-polynomial lower bounds higher in the polynomial
hierarchy, not for $NP$: “Circuit-Size Lower Bounds and Non-Reducibility to
Sparse Sets,” *Information and Control* 55 (1982),
[doi:10.1016/S0019-9958(82)90382-5](https://doi.org/10.1016/S0019-9958(82)90382-5).
This prevents enlarging the Weakest witness class to $\Sigma_2^P$ and still
calling the result open.

## Weakest-statement audit

The final candidate is

```math
\exists L\in NP:\quad
\limsup_{n\to\infty}\bigl(C_L(n)-3.1n\bigr)=+\infty.
```

It asks for one fixed language and no rate for the additive gain.  It is
weaker than requiring a $P$ witness, a fixed named $NP$-complete language, an
eventual gain, or any fixed leading-coefficient improvement.  It is not
supplied by counting: a different hard truth table or polynomial-size
description at every length does not define one uniform $NP$ language.

Hostile checks considered direct-sum composition, padding, finite hardcoding,
complementation, promise problems, multiple outputs, restricted bases,
refuter formulations, and nonuniform slice selection.  None yields the
statement in the fixed model.  In particular, no unrestricted-circuit
direct-sum theorem lets one turn finite hard functions or independent affine
dispersers into an unbounded additive gain.

Pure loss improvements, exact-line crossings, and bounded additive gains are
formally weaker.  **[subjective]** They were rejected under the development
guide's replacement rule: each has under 20% probability of removing a core
unrestricted-circuit
difficulty and is unusually sensitive to rounding or bounded changes in
gate-count convention.  The retained no-rate unbounded gain is
convention-robust and received a central 25% estimate, with a 20--35%
plausible range.  This minimality judgment is not a theorem.

Changing the $NP$ language after the requested length makes the problem a
finite-hardcoding theorem.  Allowing $P/poly$, $NP/poly$, or polynomially
described slices also makes a linear lower bound follow by counting.  By
contrast, constant-size advice adds nothing to the infinitely-often existential
claim: one advice value recurs infinitely often and can be frozen into the
machine.  An existential $coNP$ witness is equivalent here because the output
gate can be complemented without changing size.  Enlarging the class to
$\Sigma_2^P$ crosses into Kannan's proved fixed-polynomial lower bounds.

The known finite inequality does not supply the new statement: its correction
$-26.1d-25.6$ is negative for every admissible $d$.  Thus replacing only the
affine disperser inside that unchanged inequality cannot produce an
unbounded positive additive gain.  The full eligible audit, including the
quantifier, direct-sum, advice,
encoding, basis, output, and refuter attacks, is recorded in the
[development note](dev_notes/notes/eligible_frontier_red_team.md).

## Strongest-statement audit

The terminal statement is

```math
\exists L\in NP\;\exists\varepsilon\gt0\;\exists n_0\;\forall n\ge n_0:
\quad C_L(n)\ge2^{\varepsilon n}.
```

It is marked `*`.  **[subjective]** The eligible audit's central joint
truth-and-eventual-proof judgment is a knife-edge 80%, with a 65--89%
plausible range.  This places it inside the guide's `75--85%` borderline band,
not safely above the endpoint threshold.  It is much stronger than
$NP\nsubseteq P/poly$ and could be false even if that separation holds.

The eventual quantifier is a separate obstacle.  The endpoint says
$\liminf_n \log_2 C_L(n)/n\gt0$.  By contrast,
$NP\nsubseteq SIZE(2^{o(n)})$ supplies only an infinitely-often condition,
equivalently a positive linear-exponent limsup.  Exponential spikes can leave
infinitely many easy lengths, while every-length $2^{n/\log\log n}$ hardness
has zero linear exponent.  Neither branch implies the other; score `12`
conjoins them and the endpoint fills the remaining easy lengths.  The
endpoint is not ordinary ETH, SETH, or a standard nonuniform-ETH notation.

The following stronger candidates were rejected:

- A fixed encoding of Circuit-SAT or 3-SAT with the same eventual exponential
  lower bound is not known to follow from an existential $NP$ bound.  In
  common raw bit encodings, a formula of length $N$ has only
  $O(N/\log N)$ indexed variables, giving a $2^{O(N/\log N)}$ exhaustive-search
  circuit upper bound.  Thus the raw-length exponential claim can be false
  even though variable-count ETH remains plausible.
- Eventual $2^{(1-o(1))n}$ hardness for some $NP$ language received only a
  62% central judgment; polynomial distance from the Shannon ceiling and a
  fixed fraction of that ceiling received still lower judgments.
- A Shannon-order bound $\Omega(2^n/n)$ for an $NP$ language is close to the
  maximum complexity of arbitrary truth tables.  The audit assigns it below
  75% truth-and-provability confidence and found no standard literature
  conjecture supporting an 80% endpoint judgment.
- Requiring one fixed positive fraction of the Shannon maximum at every
  length adds both maximum-complexity and eventual-density assumptions without
  a separate proof program.

A clean conditional truth route exists.  Suppose a uniform polynomial-time
generator maps $\lfloor\alpha n\rfloor$ bits to $n$ bits, for fixed
$0\lt\alpha\lt1$, and is pseudorandom against $2^{\gamma n}$-size circuits
at every sufficiently large $n$.  Its range language is in $NP$, and an exact
small range-membership circuit would distinguish generator output from
uniform with overwhelming advantage.  The range therefore witnesses the
endpoint.  This requires length-regular exponential security; ordinary
one-way-function or polynomial-security PRG assumptions do not suffice, and
the argument is conditional evidence for truth rather than a proof route.

The endpoint is a concrete arithmetic assertion once a verifier machine is
chosen existentially.  Circuit minimization's algorithmic hardness does not
make it undecidable.  No independence theorem is known for this assertion,
but independence cannot be excluded.

Four general barriers widen the uncertainty:

- Baker, Gill, and Solovay show that relativizing techniques cannot settle
  $P$ versus $NP$: [doi:10.1137/0204037](https://doi.org/10.1137/0204037).
- Razborov and Rudich show, conditional on strong pseudorandomness, that
  natural proofs cannot prove strong general-circuit lower bounds:
  [doi:10.1006/jcss.1997.1494](https://doi.org/10.1006/jcss.1997.1494).
- Aaronson and Wigderson show that major techniques algebrize and that
  non-algebrizing ideas are needed:
  [arXiv:0805.1385](https://arxiv.org/abs/0805.1385).
- Atserias and Mueller's bounded-arithmetic consistency and magnification
  results isolate an almost-everywhere proof obstacle in weak theories.  They
  do not prove ZFC independence and concern `EXP` versus polynomial circuits,
  not this endpoint: [arXiv:2604.25251](https://arxiv.org/abs/2604.25251).

These are barriers to known proof styles, not evidence that the endpoint is
false or independent.

## Upper ceiling and encoding sensitivity

Shannon counting shows that almost every $n$-input Boolean function requires
order $2^n/n$ gates, while Lupanov's synthesis theorem gives every function a
circuit of size $(1+o(1))2^n/n$ in a standard complete basis.  These results
calibrate the rejected near-maximum endpoint; they do not supply an $NP$
language.  Lupanov's original theorem and modern expositions use slightly
different complete bases, so only the order of growth is used here.

Primary sources are Claude Shannon, “The Synthesis of Two-Terminal Switching
Circuits,” *Bell System Technical Journal* 28 (1949), and Oleg Lupanov, “On a
Method of Circuit Synthesis,” *Izvestiya VUZ, Radiofizika* 1 (1958), pages
120--140.  A modern source confirming the exact hardest-function asymptotic
is Masaki Yamamoto, “A Tighter Lower Bound on the Circuit Size of the Hardest
Boolean Functions,”
[ECCC TR11-086](https://eccc.weizmann.ac.il/report/2011/086/).

For scores `2` and above, switching between fixed finite complete fan-in-two
bases changes size by at most a constant factor and preserves the displayed
growth regime.  It does not preserve the score-`0` coefficient or the `3.1`
baseline in either low positive contour.  That is why the whole primary
ladder remains in $B_2$ even when upper rows are qualitatively basis-robust.

## Calibration status

Every score, expert-year estimate, probability interval, and skip estimate is
**[subjective]**.  The score-`10` placement is a provisional direct comparison
with the guide's common anchor, not a source-backed measurement.  Missing
coefficient, polynomial, quantifier, stretched-exponent, and near-exponential
contours were inserted after the eligible audit put the old central skip
risks at 55--65%.  The refitted log efforts are approximately linear below
score `10`; wide uncertainty remains.  The dedicated development note records
the construction and full audit.
