# Frontier, model, and quantifier audit

Date: 2026-08-05.  This is a bounded source audit for the circuit-lower-bounds
worktree.  It is not the guide-mandated final 100,000-token weakest-statement
red-team or 50,000-token endpoint red-team.

## Exact score-0 model and theorem

Li--Yang work with a **single-output acyclic circuit**, with every gate of
fan-in two and labelled by an arbitrary member of
$B_2=\{g:\mathbb F_2^2\to\mathbb F_2\}$.  Thus all sixteen binary Boolean
functions, including XOR/XNOR and degenerate functions, are available;
fan-out is unrestricted; inputs are free; size is the number of gates.  This
is not the $U_2$ basis (which excludes XOR/XNOR), De Morgan circuits,
formulas, bounded-depth circuits, or unbounded-fan-in circuits.

Their Theorem 4.1 and the parameter choice at the end of Theorem 1.1 give more
than the slogan $3.1n-o(n)$.  For an affine disperser for dimension $d$:

```math
\mu(C,P,\varnothing)\ge 12.8(n-2d-2),
```

and Corollary 3.8/Definition 3.6 give

```math
|C|\ge \mu-9.6n-0.2\left(\frac n2+\frac{5d}{2}\right),
```

so, by direct substitution,

```math
|C|\ge 3.1n-26.1d-25.6.
```

Xin Li's affine-extractor Theorem 1.5 gives an efficiently computable one-bit
extractor for every affine source of dimension at least $\log^C n$, for some
constant $C\gt1$, with error below $1/2$.  It is therefore nonconstant on every
such affine subspace and is an affine disperser.  Combining the two papers
gives a uniform $P$ family with

```math
C_{B_2}(f_n)\ge 3.1n-O(\log^C n)
```

for all sufficiently large $n$, not merely an unspecified $o(n)$ loss.

Primary sources:

- Jiatu Li and Tianqi Yang, *3.1n - o(n) Circuit Lower Bounds for Explicit
  Functions*, ECCC TR21-023 and STOC 2022:
  <https://eccc.weizmann.ac.il/report/2021/023/> and
  <https://doi.org/10.1145/3519935.3519976>.
- Xin Li, *Extractors for Affine Sources with Polylogarithmic Entropy*, ECCC
  TR15-121, Theorem 1.5:
  <https://eccc.weizmann.ac.il/report/2015/121/>.
- Carmosino--Dang--Jackman explicitly call Li--Yang the 2026 state of the art:
  <https://arxiv.org/abs/2604.23958>.

The exact coefficient is basis-sensitive.  The $4.5n-o(n)$ and $5n-o(n)$
results in the literature are for $U_2$, not $B_2$, and cannot be put above
the $B_2$ score 0.  Sources:

- Lachish--Raz: <https://doi.org/10.1145/380752.380832>.
- Iwama--Morizumi: <https://doi.org/10.1007/3-540-45687-2_29>.

Older $B_2$ checkpoints and routes include Blum's $3n-o(n)$ result
(<https://doi.org/10.1016/0304-3975(83)90029-4>), Find--Golovnev--Hirsch--
Kulikov's $(3+1/86)n-o(n)$ result
(<https://doi.org/10.1109/FOCS.2016.19>), and Li--Yang's $3.1n$ result.  An
appropriate quadratic disperser has a $3.11n$ lower bound, but no explicit
construction with the required parameters was known in Li--Yang; do not call
this an explicit-function frontier.  Source:
<https://doi.org/10.1145/2840728.2840755>.

## Weakest open candidate

Purely formal strict strengthenings of score 0 include improving only the
$O(\log^C n)$ loss, proving $3.1n+1$ on infinitely many lengths, or proving
$3.1n+h(n)$ for some unbounded sublinear $h$.  They are not good Weakest
candidates without further evidence: a smaller loss could come from a better
affine disperser rather than remove the core unrestricted-circuit obstacle,
and a constant/additive exact-size sharpening may have under 20% probability
of removing a core difficulty.  The affine-disperser method itself cannot
have dimension one for $n\gt1$: nonconstancy on every two-point affine line
would require a Boolean function to separate every pair of inputs.

The weakest candidate from this audit that plausibly clears the guide's 20%
core-difficulty test is:

> There exist a language $L\in NP$ and a constant $\epsilon\gt0$ such that
> $C_{B_2}(L\cap\{0,1\}^n)\ge(3.1+\epsilon)n$ for infinitely many $n$.

Equivalently, $\limsup_n C_L(n)/n\gt3.1$.  Allowing an $NP$ witness rather than
requiring the known $P$ affine-disperser family is a deliberate weakening and
keeps the chain compatible with later $NP$ rungs.  If the folder insists on
an all-sufficiently-large-length statement or a $P$ witness, that is a
strictly stronger candidate and should not be labelled the weakest without a
reason.  A final audit must still decide whether the even weaker additive
variants have at least a 20% chance of removing a core obstacle.

The 2026 Carmosino--Dang--Jackman abstract and the Li--Yang abstract support
the open-status frontier: gate elimination remains the primary/only known
general-circuit method and $3.1n-o(n)$ is state of the art.  This bounded
audit did not independently certify every additive variant as open.

## A model-safe implication spine

Use one existential $NP$ witness throughout.  One possible logically valid
spine, with all inequalities referring to minimal $B_2$ circuit size of the
ordinary characteristic function on inputs of length $n$, is:

1. $\exists L\in NP:\limsup C_L(n)/n\gt3.1$.
2. $\exists L\in NP:\limsup C_L(n)/n=\infty$.
3. $NP\not\subseteq P/poly$.
4. $\exists L\in NP:C_L(n)\ge n^{\log\log n}$ for all sufficiently large
   $n$ (one possible explicit eventual-superpolynomial rung).
5. $\exists L\in NP,\delta\gt0:C_L(n)\ge2^{n^\delta}$ for all sufficiently
   large $n$.
6. $\exists L\in NP,\epsilon\gt0:C_L(n)\ge2^{\epsilon n}$ for all sufficiently
   large $n$.

Each higher-numbered statement implies the previous one.  Rung 3 means that
some fixed $L\in NP$ is outside every $SIZE(n^k)$.  In minimal-size notation
this yields arbitrarily large polynomial exponents on infinitely many
lengths and hence rung 2.  It does **not** yield an eventual
$n^{\omega(1)}$ bound.  Thus the draft row “requires $\omega(n)$” is
ambiguous and, under the usual eventual interpretation, does not follow from
$NP\not\subseteq P/poly$.

Also:

- $NP\not\subseteq P/poly$ implies $P\ne NP$, but $P\ne NP$ does not imply
  $NP\not\subseteq P/poly$.
- An infinitely-often bound never becomes eventual without a proved
  length-preserving argument.
- A higher rung may use a different existential witness from the lower rung;
  existential implication is still valid.  But changing the class from $NP$
  to $P$ breaks the arrow: an $NP$ lower bound does not supply a $P$ witness.
- “$2^{n^{\Omega(1)}}$” must be expanded to $\exists\delta\gt0$ plus an
  eventual or infinitely-often quantifier.

## Endpoint red-team

The strongest endpoint this bounded audit would retain provisionally is rung
6: **some $NP$ language has eventual $2^{\Omega(n)}$ circuit complexity**.
It has huge headroom and implies every lower row.  It should be starred or
left unscored until the full endpoint audit assigns at least 80% probability
of ZFC-provability.  It is much stronger than $NP\not\subseteq P/poly$ and
could be false even if the latter is true; all $NP$ languages could in
principle have subexponential, nonpolynomial circuits.

A still stronger named-problem version is an eventual $2^{\Omega(n)}$ bound
for a fixed canonical encoding of Circuit-SAT or 3-SAT.  It implies the
existential endpoint, but it is encoding-sensitive and this audit found no
basis for claiming the guide's 80% threshold.  Polynomial-time completeness
reductions do not preserve a linear exponent: a polynomial blowup can turn
$2^{\Omega(n)}$ into $2^{\Omega(N^\alpha)}$.  Padding and the treatment of
invalid encodings can also change length-based claims.  Never state that an
existential exponential $NP$ lower bound is equivalent to an exponential
bound for SAT without a proved linear-size reduction in the fixed encoding.

Likewise, do not casually use cryptographic assumptions as stronger rungs.
An exponentially secure one-way function is easy to evaluate; its inversion
hardness does not immediately furnish a fixed $P$ or $NP$ Boolean language
with exponential forward circuit complexity.  A PRF key that varies
nonuniformly with $n$ need not define a uniform $P$ language.

There is no known ZFC-independence result for these specific statements, but
relativization/natural-proofs/bounded-arithmetic barriers make an unqualified
“at least 80% provable” judgment nontrivial.  A fixed arithmetic statement is
not made algorithmically undecidable merely because circuit minimization is
hard.

## Skip and calibration risk

There are plainly more than two doublings of headroom between $3.1n$ and an
exponential $NP$ lower bound.  Smoothness is the serious problem.  A new
global method might jump directly from linear to superlinear or
superpolynomial, so several coefficient rungs probably have over-50% skip
risk if placed at integer scores.  Conversely, $NP\not\subseteq P/poly$ may
be proved without an eventual superpolynomial lower bound, so those two rows
must not be collapsed.  Scores, expert-year estimates, and integer skip
probabilities should remain withheld until the full red-team is complete.

The gate-elimination limitation paper is relevant to skip analysis:
<https://doi.org/10.1016/j.jcss.2018.04.005>.  The depth-reduction route says
that sufficiently strong depth-three lower bounds would improve general
$B_2$ linear lower bounds, but its exact hypotheses must be copied before it
is used as a rung:
<https://doi.org/10.4230/LIPIcs.ITCS.2021.24>.

## Work actually performed

Approximate reasoning/output budget spent in this bounded sub-audit:

- weakest-statement/source/model red-team: about 9,000 tokens;
- strongest-endpoint/implication red-team: about 5,000 tokens.

These are rough honest estimates, not instrumented counts.  They are far
below the guide's respective 100,000- and 50,000-token minima, so this note
must not be cited as satisfying those process gates.
