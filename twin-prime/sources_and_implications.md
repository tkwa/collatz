# Source and Implication Audit

This note separates sourced mathematical facts from the ladder's subjective
difficulty estimates.  It is part of the benchmark definition: an implication
must appear here before it is used to order two rungs.

## Bounded gaps and GEH

The primary source is D. H. J. Polymath,
[“Variants of the Selberg sieve, and bounded intervals containing many
primes”](https://arxiv.org/abs/1407.4897), *Research in the Mathematical
Sciences* **1** (2014), article 12.

The paper proves $H_1\le246$ unconditionally.  Its abstract states the
conditional consequences used by the ladder:

```math
\mathrm{EH}[1]\Longrightarrow H_1\le12,
\qquad
\mathrm{GEH}[1]\Longrightarrow H_1\le6.
```

It also proves, under GEH, that every admissible triple contains at least two
primes infinitely often, and describes this as the limit of the purely
sieve-theoretic setup.  The ladder therefore does not assert
$\mathrm{GEH}[1]\Longrightarrow H_1\le4$ or twin primes.

For the intermediate rows, monotonicity is definitional: a standard
$\mathrm{GEH}[\vartheta_2]$ estimate with $\vartheta_2\gt\vartheta_1$
contains the same estimate after restricting the modulus range to
$x^{\vartheta_1}$.  “Full GEH” means every fixed exponent below one, not the
literal endpoint modulus $x$.

Restricted-modulus results beyond one half do not establish these rungs.  The
row requires the full coefficient/convolution class and unrestricted moduli
in the source formulation.

## Polynomial prime conjectures

The endpoint formulation follows Stephan Ramon Garcia,
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
When all $f_i$ are affine linear, the same formula is the prime-tuples
Hardy--Littlewood asymptotic.  Thus both alternatives at score `9.5` are
genuine consequences of Bateman--Horn.

Schinzel H is qualitative.  It implies Dickson by specialization to affine
linear polynomials, but it does not supply the Hardy--Littlewood asymptotic.
Conversely, the affine Hardy--Littlewood conjecture says nothing by itself
about an irreducible nonlinear polynomial such as $t^2+1$.

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

The Hardy--Littlewood twin-pair formula is

```math
\pi_2(X)\sim2C_2\int_2^X\frac{dt}{(\log t)^2},
```

where $C_2$ is the positive twin-prime constant.  It implies
$\pi_2(X)\gg X/(\log X)^2$, which in turn implies infinitely many twin
primes.  Neither converse is known, and neither is treated as an equivalence
in this benchmark.

## Open-status and non-implication checklist

As of the August 2026 audit, the source search found no improvement of the
published unconditional $H_1\le246$ record and no proof of any positive rung.
This is a literature-status statement, not a theorem that no unpublished
argument exists.

The ladder deliberately does **not** use any of these invalid or unsupported
arrows:

- finite computation $\Longrightarrow$ any asymptotic rung;
- ordinary Elliott--Halberstam $\Longrightarrow$ generalized
  Elliott--Halberstam;
- generalized Elliott--Halberstam $\Longrightarrow$ twin primes;
- two-point Chowla $\Longrightarrow$ twin primes without additional,
  quantitatively compatible sieve input;
- twin primes $\Longrightarrow$ a positive-order lower bound;
- Dickson $\Longrightarrow$ a Hardy--Littlewood asymptotic; or
- Schinzel H $\Longrightarrow$ Bateman--Horn.

The last three distinctions are why the upper ladder has separate qualitative
and quantitative branches.
