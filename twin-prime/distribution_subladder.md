# Prime-Distribution Subladder toward GEH

## Two ingredients inside one coordinate

The distribution coordinate $D$ compresses an internal state

```math
(\vartheta,\mathcal C),
```

where:

- $\vartheta$ is the level of distribution; and
- $\mathcal C$ is the breadth of prime-like coefficient and convolution
  classes controlled with the required uniformity.

Both matter.  Increasing $\vartheta$ for the von Mangoldt function alone is
ordinary Elliott--Halberstam progress.  GEH requires comparable distribution
for broad convolutions arising in sieve decompositions.  A theorem with a
slightly smaller exponent but a much broader class need not be weaker for
twin-prime purposes.

The lower ladder through twin primes uses $H$ and the scalar $D$.  The pair
$(\vartheta,\mathcal C)$ is used only to calibrate $D$ without pretending that
EH and GEH form one elementary linear chain; stronger rungs are recorded
directly above twin primes.

## Informal definitions

For a sequence $f$ supported near $x$, write its discrepancy in a reduced
residue class $a\pmod q$ schematically as

```math
\Delta(f;a\bmod q)
=
\sum_{n\equiv a\bmod q}f(n)
-
\frac{1}{\varphi(q)}
\sum_{\gcd(n,q)=1}f(n).
```

An Elliott--Halberstam statement at level $\vartheta$ gives strong average
control of this discrepancy for prime weights and moduli up to approximately
$x^\vartheta$.  A generalized Elliott--Halberstam statement gives analogous
control for the admissible convolutions $\alpha*\beta$ needed by generalized
sieve arguments.

“Full GEH,” often written $\mathrm{GEH}[1]$, conventionally means
$\mathrm{GEH}[\vartheta]$ for every fixed $\vartheta\lt1$.  It does not
mean a uniform estimate including all moduli at the literal endpoint
$\vartheta=1$.

## Milestone backbone

| Level | Distribution milestone |
|---:|---|
| $D_0$ | Current Bombieri--Vinogradov-type control at level $1/2$ for the standard relevant classes, together with known results beyond $1/2$ under restrictions such as special modulus factorization. |
| $D_1$ | Arbitrary-modulus $1/2+\delta$ control for one genuine balanced convolution regime, for some fixed $\delta\gt0$. |
| $D_2$ | One common exponent $1/2+\delta$ across the Type I and Type II regimes used in modern decompositions of prime weights. |
| $D_3$ | The remaining Type III, highly unbalanced, endpoint, and uniformity regimes are controlled, giving the first full $\mathrm{GEH}[1/2+\delta]$. |
| $D_4$ | Full $\mathrm{GEH}[2/3]$. |
| $D_5$ | Full $\mathrm{GEH}[3/4]$. |
| $D_6$ | Full $\mathrm{GEH}[1-\delta_0]$ for a small fixed $\delta_0$, provisionally represented by $\delta_0=0.1$. |
| $D_7$ | $\mathrm{GEH}[\vartheta]$ for every fixed $\vartheta\lt1$ on a broad core class, with only clearly identified coefficient, endpoint, or uniformity restrictions remaining. |
| $D_8$ | Full standard GEH for all admissible convolution classes and every fixed $\vartheta\lt1$. |

The values $2/3$, $3/4$, and $0.9$ are calibration landmarks, not claims that
the true conceptual difficulty is linear in $\vartheta$.  The first full
improvement beyond $1/2$ may contain more of the essential work than several
later numerical increments combined.

## Ordinary EH is a side branch

Ordinary $\mathrm{EH}[\vartheta]$ and
$\mathrm{GEH}[\vartheta']$ with different exponents need not be
linearly comparable.  The clean way to score an EH theorem is to locate it at
high $\vartheta$ but narrower $\mathcal C$, then use estimated replacement
work and its proved gap consequence to determine the scalar $D$ credit.

Full EH is a major target-relevant theorem.  It is nevertheless not a rung
above every partial GEH result, because it does not supply the same convolution
information.  The Polymath optimized sieve gives the useful calibration
contrast:

```math
\text{full EH}\Longrightarrow H_1\le12,
\qquad
\text{full GEH}\Longrightarrow H_1\le6.
```

Neither implication reaches $H_1=2$.

## Scoring the subladder

Do not assign equal score increments to equal changes in $\vartheta$.  For
each transition, estimate cumulative effort on the shared
$C_{PP}=B_{PP}+F_{PP}$ clock and count shared lemmas once.  The public ladder
does not give this subladder an independent score: it pairs selected EH and
GEH statements with gap milestones in logical disjunctions.  No fixed
score-to-effort exchange rate is assumed.

A future calibration should separately elicit at least:

1. the cost of removing special-modulus restrictions;
2. the cost of making one $\delta\gt0$ uniform across convolution regimes;
3. the cost of increasing $\vartheta$ after the full one-half barrier is
   crossed; and
4. the probability that one dispersion, spectral, or bilinear theorem
   overshoots several levels.

The last probability controls skip risk.  A single structural estimate may
move from $D_1$ to $D_4$ without producing separately publishable theorems at
every intermediate landmark.

## Why the endpoint may not be load-bearing

GEH strengthens the distribution information used by modern sieves, but it
does not by itself distinguish a specified prime pair from parity-mimicking
almost-prime configurations.  The known GEH pipeline reaches $H_1\le6$, not
$H_1=2$.

Accordingly, this subladder measures one major route, not a prerequisite
chain.  A proof that breaks parity directly may solve twin primes while
leaving $D$ almost unchanged.  The route distinction is developed in
[`parity_and_alternative_routes.md`](parity_and_alternative_routes.md).

## Status

The schematic discrepancy definition suppresses technical hypotheses on
support, coefficient bounds, Siegel--Walfisz behavior, coprimality, and
uniformity.  Those conditions matter in an actual theorem.  The subladder is
for benchmark calibration and must not be cited as a formal definition of
GEH without consulting the source formulation.
