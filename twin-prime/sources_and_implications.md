# Source and Implication Audit

This note separates sourced mathematical facts from the ladder's subjective
difficulty estimates.  It is part of the benchmark definition: an implication
must appear here before it is used to order two rungs.

## Bounded gaps and GEH

For $\vartheta\in(1/2,1)$, $\mathrm{EH}[\vartheta]$ and
$\mathrm{GEH}[\vartheta]$ mean the standard Elliott--Halberstam and
generalized Elliott--Halberstam conjectures at exponent $\vartheta$ in the
bounded-gap framework.  Both use the standard unrestricted modulus and
residue-class formulation; GEH additionally uses the full convolution class.
Neither denotes a special-modulus result, and GEH does not denote a theorem
for only restricted convolution types.  Full EH or full GEH means the
corresponding conjecture for every fixed $\vartheta\lt1$.

The named upper statements use these conventions:

- **de Polignac:** every positive even $d$ occurs infinitely often as a gap
  between consecutive primes;
- **Dickson:** every fixed admissible finite family of distinct affine-linear
  forms with positive leading coefficients is simultaneously prime infinitely
  often;
- **Hardy--Littlewood:** the singular-series asymptotic holds for every fixed
  admissible family of distinct affine-linear forms;
- **Schinzel H:** every fixed admissible finite family of distinct irreducible
  integer polynomials with positive leading coefficients takes simultaneous
  prime values infinitely often; and
- **Bateman--Horn:** the corresponding singular-series asymptotic holds for
  every such polynomial family.

Here admissibility includes the absence of a fixed prime divisor of the
product.  The later sections record the exact implication interfaces used by
the ladder.

The primary source is D. H. J. Polymath,
[“Variants of the Selberg sieve, and bounded intervals containing many
primes”](https://arxiv.org/abs/1407.4897), *Research in the Mathematical
Sciences* **1** (2014), article 12.

The paper proves $H_1\le246$ unconditionally.  Its abstract states the
conditional consequences used by the ladder:

```math
\text{full EH}\Longrightarrow H_1\le12,
\qquad
\text{full GEH}\Longrightarrow H_1\le6.
```

It also proves, under GEH, that every admissible triple contains at least two
primes infinitely often.  Its parity section gives a partly informal,
heuristic obstruction showing why the same purely sieve-theoretic information
should not beat the gap `6`.  This is a route warning, not an impossibility
theorem covering every future method.  The ladder therefore does not assert
$\text{full GEH}\Longrightarrow H_1\le4$ or twin primes.

The paper's discussion following the GPY theorem says that the only standard
$\mathrm{EH}[\vartheta]$ results then known were for
$\vartheta\lt1/2$.  Its generalized Bombieri--Vinogradov theorem similarly
proves $\mathrm{GEH}[\vartheta]$ for every fixed
$\vartheta\lt1/2$.  Results beyond one half with special moduli or fixed
residue classes do not establish either unrestricted alternative in this
ladder; results for restricted convolution types do not establish its GEH
alternatives.

For the intermediate rows, monotonicity is definitional: a standard
$\mathrm{EH}[\vartheta_2]$ estimate with
$\vartheta_2\gt\vartheta_1$ contains the same estimate after restricting the
modulus range to $x^{\vartheta_1}$.  Proposition 1.7 of the paper proves

```math
\mathrm{GEH}[\vartheta]\Longrightarrow\mathrm{EH}[\vartheta].
```

“Full GEH” means every fixed exponent below one, not the literal endpoint
modulus $x$.

The unconditional gap alternatives use only the elementary nesting

```math
H_1\le2\Longrightarrow H_1\le4\Longrightarrow H_1\le6
\Longrightarrow H_1\le12\Longrightarrow H_1\le50
\Longrightarrow H_1\le244\Longrightarrow H_1\le246.
```

Together with exponent restriction, GEH-to-EH, and the two source-backed
conditional bounds above, this verifies every lower OR join in the displayed
ladder.  In particular, the score-`1` pair $H_1\le50$ or
$\mathrm{EH}[2/3]$ is one coarse bridge; no implication between its two
alternatives is asserted.

Restricted-modulus results beyond one half do not establish these rungs.  All
EH and GEH rows require the unrestricted source formulation, and GEH rows
additionally require its full convolution class.

## Polynomial prime conjectures

The endpoint formulation follows Paul T. Bateman and Roger A. Horn,
[“A heuristic asymptotic formula concerning the distribution of prime
numbers”](https://doi.org/10.1090/S0025-5718-1962-0148632-7), and the modern
overview by Stephan Ramon Garcia,
[“What is the Bateman--Horn Conjecture?”](https://www.ams.org/journals/notices/202410/noti3046/noti3046.html),
*Notices of the AMS* **71** (2024), 1382--1385, and the survey by Aletheia-Zomlefer,
Fukshansky, and Garcia,
[“The Bateman--Horn conjecture: heuristic, history, and
applications”](https://www1.cmc.edu/pages/faculty/lenny/papers/bateman-horn.pdf).

For distinct nonconstant irreducible $f_1,\ldots,f_k\in\mathbb Z[t]$ with
positive leading coefficients, assume the product has no fixed prime divisor.
Bateman--Horn predicts the singular-series asymptotic for

```math
\#\lbrace n\le X:\ f_1(n),\ldots,f_k(n)\text{ are all prime}\rbrace.
```

The singular series is positive under the stated local condition.  Hence the
asymptotic implies infinitely many simultaneous prime values: Schinzel H.
When all $f_i$ are distinct affine-linear forms, the same formula is the
prime-tuples Hardy--Littlewood asymptotic.  Thus both alternatives at score
`8` are genuine consequences of Bateman--Horn.

Schinzel H is the conjecture of Schinzel and Sierpiński,
[“Sur certaines hypothèses concernant les nombres
premiers”](https://eudml.org/doc/207321).  It is qualitative.  It implies
Dickson by specialization to affine
linear polynomials, but it does not supply the Hardy--Littlewood asymptotic.
Conversely, the affine Hardy--Littlewood conjecture says nothing by itself
about an irreducible nonlinear polynomial such as $t^2+1$.

## Multivariate Bateman--Horn over $\mathbb Z$

The final rung is the locally admissible case of Conjecture A.3 in Kevin
Destagnol and Efthymios Sofos,
[“Rational points and prime values of polynomials in moderately many
variables”](https://arxiv.org/abs/1801.03082).

Fix $n,r\ge1$ and pairwise nonassociate polynomials
$f_1,\ldots,f_r\in\mathbb Z[x_1,\ldots,x_n]$ that are irreducible over
$\mathbb Q$.  Let $f_{i,0}$ be the top-degree homogeneous part of $f_i$.
For each prime $p$, put

```math
\nu_p(\mathbf f)=
\#\lbrace\mathbf a\in\mathbb F_p^n:
\prod_{i=1}^r f_i(\mathbf a)=0\rbrace.
```

The family is locally admissible when $\nu_p(\mathbf f)\lt p^n$ for every
prime $p$.  For every fixed compact axis-parallel box
$\mathcal B\subset\mathbb R^n$ of positive volume such that
$f_{i,0}(\mathcal B)\subset(1,\infty)$ for every $i$, the conjecture is

```math
\#\lbrace\mathbf x\in\mathbb Z^n\cap P\mathcal B:
f_1(\mathbf x),\ldots,f_r(\mathbf x)
\text{ are positive primes}\rbrace
\sim
\mathfrak S(\mathbf f)
\int_{P\mathcal B}
\frac{d\mathbf x}{\prod_{i=1}^r\log f_{i,0}(\mathbf x)},
```

where

```math
\mathfrak S(\mathbf f)=
\prod_p
\frac{1-\nu_p(\mathbf f)/p^n}{(1-1/p)^r}.
```

Remark A.4 establishes convergence of this product.  Conjecture A.3 itself
does not separately impose local admissibility; this benchmark selects its
admissible case so that the main constant is positive and the asymptotic
equivalent is nonzero.

Taking $n=1$ gives the interval form of one-variable Bateman--Horn.  On a
positive interval bounded away from zero, $f_{i,0}(x)=a_i x^{d_i}$ and

```math
\prod_{i=1}^r\log f_{i,0}(x)
\sim
\left(\prod_{i=1}^r d_i\right)(\log x)^r.
```

The local factors are the ordinary Bateman--Horn factors.  Applying the box
asymptotic on scaled dyadic intervals and summing gives the cumulative
one-variable asymptotic used at score `9`.  Thus score `9.5` implies score
`9`; the reverse implication is not asserted.

## Dickson implies consecutive de Polignac gaps

The consecutiveness condition needs an argument; merely applying Dickson to
$t$ and $t+d$ would not exclude primes between them.

Fix a positive even $d$.  For every $j\in\lbrace1,\ldots,d-1\rbrace$, choose
distinct primes $q_j\gt d$.  By the Chinese remainder theorem choose $a$ and
$M$ so that

```math
M=2\prod_{j=1}^{d-1}q_j,
\qquad
a\equiv1\pmod2,
\qquad
a\equiv-j\pmod{q_j}.
```

The two forms $Mt+a$ and $Mt+a+d$ are admissible.  A prime dividing $M$
divides neither value, and any prime not dividing $M$ sees at most two roots;
the prime `2` already divides $M$.  Dickson therefore makes both endpoints
prime for infinitely many $t$.  Every interior value $Mt+a+j$ is divisible
by $q_j$ and is larger than $q_j$ for large $t$, hence is composite.  The
endpoints are consecutive primes separated by $d$.

Therefore Dickson implies de Polignac, and de Polignac at $d=2$ implies the
twin prime conjecture.

## Quantitative pair implications

Let

```math
\pi_2(X)=\#\lbrace p\le X:\ p\text{ and }p+2\text{ are prime}\rbrace.
```

The Hardy--Littlewood twin-pair formula is

```math
\pi_2(X)\sim2C_2\int_2^X\frac{dt}{(\log t)^2},
```

where $C_2$ is the positive twin-prime constant.  It implies
$\pi_2(X)\gg X/(\log X)^2$, which in turn implies infinitely many twin
primes.  Neither converse is known, and neither is treated as an equivalence
in this benchmark.

## Open-status and non-implication checklist

The benchmark's current cited unconditional frontier is $H_1\le246$: the
Polymath paper above proves this bound, and a
[2024 expository chapter](http://www.lolathompson.com/uploads/1/1/0/6/110629329/chapter_12_2024.pdf)
continues to state it.  None of the sources cited in this audit establishes a
positive rung, so the milestone table records `246` as score `0`.  This is a
source-bounded literature-status judgment, not a theorem that no later,
unpublished, or independently unvalidated argument exists.

The ladder deliberately does **not** use any of these invalid or unsupported
arrows:

- finite computation $\Longrightarrow$ any asymptotic rung;
- ordinary Elliott--Halberstam $\Longrightarrow$ generalized
  Elliott--Halberstam;
- generalized Elliott--Halberstam $\Longrightarrow$ twin primes;
- two-point Chowla $\Longrightarrow$ twin primes without additional,
  quantitatively compatible sieve input;
- twin primes $\Longrightarrow$ a positive-order lower bound;
- Dickson $\Longrightarrow$ a Hardy--Littlewood asymptotic;
- Schinzel H $\Longrightarrow$ Bateman--Horn; or
- one-variable Bateman--Horn $\Longrightarrow$ multivariate Bateman--Horn.

These distinctions explain both the separate qualitative and quantitative
branches and the final multivariate step.
