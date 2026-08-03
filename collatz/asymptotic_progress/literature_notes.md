# Literature checks

This file records theorem statements checked against full text, with emphasis
on whether they can actually imply

```math
D_K(n)=\omega(\log K).
```

## Çalışkan's p-adic lacunary-series theorems

Fatma Çalışkan's 2010 paper
[“On Transcendence of Values of Some Generalized Lacunary Power Series with
Algebraic Coefficients for Some Algebraic Arguments in p-Adic Domain II”](https://dergipark.org.tr/en/pub/iusfjm/issue/9444/118439)
considers blocks supported on intervals `[s_n,r_{n+1}]`, with zero gaps
`(r_n,s_n)`. Its main theorem assumes, among other height conditions,

```math
\frac{s_n}{r_n}\longrightarrow\infty,
\qquad
\frac{r_n}{s_{n-1}}\longrightarrow\tau<\infty.
```

Thus every successive zero gap must be enormous relative to the support before
it, with controlled growth between supported blocks. Failure of the target
only gives

```math
\limsup_m\frac{\log\tau_m}{m}>0;
```

it permits dense bursts between occasional large gaps. The theorem therefore
does not apply.

The later paper
[“Some Lacunary Power Series and Mahler's Um-numbers in p-adic
Domain”](https://doi.org/10.7546/CRABS.2022.04.01)
assumes a uniform lower ratio

```math
\liminf_n\frac{u_{k_{n+1}}}{u_{k_n}}>1
```

and evaluates the series at a p-adic `U_m`-number. Our argument is the reverse
situation: the evaluation point `B/a` is rational and the putative value is an
ordinary integer. Its theorem does not specialize to the orbit series.

## Rational-base words

Andrieu, Eliahou, and Vivion,
[“A Normality Conjecture on Rational Base Number Systems”](https://arxiv.org/abs/2510.11723),
conjecture that every minimal word in base `p/q` is normal over its `q`-letter
alphabet. They prove that this is equivalent to equidistribution of every
integer orbit of

```math
x\longmapsto\left\lceil\frac pqx\right\rceil
```

modulo every power of `q`. They also note that even the much weaker statement
that every prescribed letter occurs is the open Dubickas-Mossinghoff stopping
question. The proved general factor-complexity bound quoted there is only
linear:

```math
\liminf_{\ell\to\infty}\frac{p_w(\ell)}{\ell}
\ge \frac{\log q}{\log(p/q)}.
```

Linear factor complexity does not force a superlogarithmic count of one letter
in every prefix. Hence the rational-base family is structurally relevant but
does not currently supply the desired theorem.

## Dubickas--Mossinghoff approximate multiplication

Dubickas and Mossinghoff,
[“Lower Bounds for Z-Numbers”](https://doi.org/10.1090/S0025-5718-09-02211-X),
study the stopped iteration

```math
x\longmapsto\left\lceil\frac pqx\right\rceil
```

while `x` remains in a prescribed proper set `S` of residues modulo `q`.
Their Proposition 3.2 proves termination for every starting integer when
`S` is a singleton. The proof makes the affine branch homogeneous after a
shift and observes that indefinite iteration would make an ordinary integer
divisible by arbitrarily high powers of `q`.

This exactly supports the elementary fact that one uninterrupted expansion
run in a one-expanding-residue admissible map is finite. It does not control
how often such runs can restart after division steps, and therefore gives no
improvement over the current `\Omega(\log K)` count. The same paper emphasizes
that already its stopped `4/3` problem with two permissible residues was open;
the issue is again global recurrence rather than one finite run.

## Few-digit and `S`-unit results

Bennett, Bugeaud, and Mignotte,
[“Perfect powers with few binary digits and related Diophantine
problems”](https://doi.org/10.2422/2036-2145.201110_006),
summarize the effective Senge-Straus theorem: if multiplicatively independent
bases `x,y` both give digit sum at most `c` for an integer `M>25`, then

```math
\frac{\log\log M}{\log\log\log M+c_1}<2c+1,
```

where `c_1` depends effectively on the two bases. This supplies only a
`\log\log M/\log\log\log M` lower bound for simultaneous digit sparsity. After
translating `M` to an orbit segment of temporal size `K`, this is below the
already proved `\Omega(\log K)` bound. Standard few-digit estimates therefore
do not bridge the required gap.

## Current literature conclusion

The checked theorems separate into two regimes:

1. Strong lacunarity hypotheses can force transcendence, but require large
   gaps eventually or at every successive stage.
2. Theorems allowing arbitrary sparse supports give quantitative digit or
   `S`-unit bounds that are weaker than the elementary logarithmic orbit bound.

No checked result controls the intermittent-gap regime strongly enough to show
`\log\tau_m=o(m)`. Any proof through the global series needs a new structured
valuation lemma, not a direct citation of the standard lacunary theorems.

## Furstenberg's topological multiplicative-independence theorem

Furstenberg's 1967 topological theorem says that if integers `A,B>1` are
multiplicatively independent, an infinite closed subset of the circle that is
invariant under both `x\mapsto Ax` and `x\mapsto Bx` modulo one is the whole
circle.  This is the established topological rigidity result, not the much
harder measure-classification conjecture for `\times2` and `\times3`.

The theorem closes the projected finite-state map-design route after passing
from a hypothetical affine symmetry of a `B`-adic deleted-digit set to its
real deleted-digit Cantor set.  The full reduction is in
[`finite_state_coding_obstruction.md`](finite_state_coding_obstruction.md).
This is a no-go theorem for one proof architecture; it does not itself give a
division-count estimate.

- H. Furstenberg, “Disjointness in ergodic theory, minimal sets, and a problem
  in Diophantine approximation,” *Math. Systems Theory* **1** (1967), 1--49.

## Parity-vector rationality for the `B=2` alternatives

Olivier Rozier's
[“Parity sequences of the `3x+1` map on the `2`-adic integers and Euclidean
embedding”](https://arxiv.org/abs/1805.00133) reviews the bijection between
`2`-adic starting values and parity sequences.  In particular, every finite
parity word is realized by one residue class modulo the corresponding power of
`2`, while deciding which infinite parity words come from rational starting
values remains tied to Lagarias' Periodicity Conjecture.

The generalized `an+1` family in
[`alternative_family_screen.md`](alternative_family_screen.md) has the same
inverse-transform architecture.  Consequently, replacing `a=3` by another odd
integer does not invoke a known theorem that excludes parity words with
exponentially sparse division symbols.  The desired statement is much weaker
than eventual periodicity, but it still lies on the unresolved rational-input
side of the parity transform.

## Multi-term valuation question remains unresolved in its basic form

The MathOverflow question
[“p-adic valuation of a sum”](https://mathoverflow.net/questions/159643/p-adic-valuation-of-a-sum)
asks, already for expressions such as

```math
1\pm3^{\alpha_1}\pm\cdots\pm3^{\alpha_k},
```

for bounds with useful dependence on the number of terms and the logarithms of
the exponents.  As checked on 2026-08-02, it still has no answers beyond the
two-term LTE observation in the question.  This does not prove that the needed
specialized ceiling-chain bound is unavailable, but it confirms that a
polynomial-in-`k` valuation estimate should not be treated as a standard lemma.

## Fixed-rank `S`-unit approximation does not control the macro cores

Nair, Kumar, and Rout's 2025 paper “Algebraic approximations to linear
combinations of S-units” proves a Subspace-Theorem finiteness result for
approximations by a fixed number `m` of elements from one finitely generated
multiplicative group, subject to nondegeneracy and pseudo-Pisot exclusions.
This is close in shape to the bounded correction in
[`prime_power_macro_chains.md`](prime_power_macro_chains.md), but it does not
apply to the required chain:

- the correction in each macro link has fixed rank, but the two endpoint cores
  are arbitrary prime-to-`pB` integers rather than elements of a fixed
  finitely generated multiplicative group;
- a hypothetical failure produces chains of unbounded length, while the
  theorem fixes the number of `S`-unit variables before applying the Subspace
  Theorem.

Thus the new macro reduction reaches the boundary of existing fixed-rank
`S`-unit approximation results but does not cross it.  Treating the moving
cores as additional `S`-units would silently assume exactly the missing
statement.

- P. S. Nair, V. Kumar, and S. S. Rout, [“Algebraic approximations to linear
  combinations of S-units”](https://arxiv.org/abs/2506.02898), arXiv:2506.02898
  (v3, 2025).

## Recent binomial-sum valuation answers are recurrence-specific

A 2026 MathOverflow question,
[“Lower bound on `p`-adic valuation of binomial sum”](https://mathoverflow.net/questions/510730/lower-bound-on-p-adic-valuation-of-binomial-sum),
now has an answer proving the proposed bound.  The proof uses a special Mahler
recurrence, finite differences, and factorial congruences tailored to that one
alternating sum.  The related exact evaluation in
[“3-adic valuation of a sum involving binomial coefficients”](https://mathoverflow.net/questions/269052/3-adic-valuation-of-a-sum-involving-binomial-coefficients)
similarly comes from the fixed three-term recurrence for Legendre polynomials.

Neither result supplies a valuation bound for the ceiling-family polynomial

```math
x_0(1+z)^{\lambda_m}
+\sum_{i=1}^m d_i z^{\tau_i}(1+z)^{\lambda_m-\lambda_i},
```

whose shifts and binomial exponents both move with the orbit.  In particular,
the proofs do not give constants uniform in the number `m` of moving summands.

## Carelli's 2026 reachability result is qualitative only

Mishel Carelli's
[“Loop Termination and Generalized Collatz Sequences”](https://arxiv.org/abs/2605.15094)
introduces a Reachability Conjecture for weak generalized Collatz maps and
proves its modulus-$2$ case.  The proved input is Proposition 17: an unbounded
trajectory of a relatively-prime generalized Collatz map visits at least two
residue classes modulo the base.

For a binary admissible map, applying the proposition to every unbounded tail
shows that the sole division residue is visited infinitely often.  This is
qualitative recurrence only.  It gives no bound on the distance to the next
visit and therefore does not improve

$$
D_K(n)=\Omega_n(\log K).
$$

The paper explicitly leaves all reachability cases with modulus greater than
$2$ open; its example $T(x)=\lfloor4x/3\rfloor$ already has an unresolved
residue-hitting question.  Thus its loop-termination machinery does not
provide a terminating admissible map or a superlogarithmic division count.

## Bouhamidi's convergent class is outside the expansion condition

Abderrahman Bouhamidi's 2024 preprint
[“Weak and strong admissible triplets associated to Collatz like map”](https://hal.science/hal-04552296)
recalls a Hasse--Allouche subfamily for which all orbits eventually enter
cycles when its nondivision multiplier $m$ satisfies $1\le m<d$, where $d$ is
the modulus.  Those branches are contracting, whereas the present project
requires every nondivision multiplier to satisfy

$$
a_r>B.
$$

The preprint's examples with multiplier larger than the modulus are not
proved universally convergent: they are labelled as conjectures, beliefs, or
experimental observations, and the paper itself states that proving a given
expanding triplet weak or strong remains difficult even in the classical
case.  Consequently the provably convergent Hasse class cannot be used as the
requested admissible example, and the expanding examples do not close the
goal.
