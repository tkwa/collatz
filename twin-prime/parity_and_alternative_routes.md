# The Parity Obstruction and Routes beyond GEH

## Why this note exists

The benchmark uses prime distribution as one of only two formal coordinates,
but it does not assume that generalized Elliott--Halberstam is the decisive
missing theorem.  Many sieve experts regard the parity obstruction as the
more fundamental barrier between bounded gaps and a specified prime pair.

This note incorporates that concern without adding a third benchmark
coordinate.  It separates:

- proved mathematical implications;
- plausible indicators of parity-breaking progress; and
- speculative forecasts about which route will ultimately solve twin primes.

## The classical parity phenomenon

A combinatorial sieve consumes information about how often elements of a
sequence are divisible by moduli $d$.  Even extremely accurate information of
this form can fail to distinguish integers having an even number of prime
factors from those having an odd number.  Model examples built with the
Liouville function

```math
\lambda(n)=(-1)^{\Omega(n)}
```

can imitate the local divisibility data seen by the sieve while changing the
presence of primes.  This is the parity phenomenon.

It explains why classical sieve lower bounds naturally stop at conclusions
such as Chen's theorem: infinitely many primes $p$ have $p+2$ equal to a
prime or a product of two primes.  That theorem comes extraordinarily close
to twin primes arithmetically, but the remaining distinction is exactly one
that linear sieve information does not resolve.

The word “linear” here refers to the information available to the sieve, not
merely to whether a displayed sum has one or two summation signs.  Precise
parity theorems depend on the permitted class of weights and remainders, so
the heuristic Liouville demonstration should not be substituted for a formal
impossibility theorem about every conceivable sieve.

## What GEH does and does not do

EH and GEH improve the range and quality of distribution estimates supplied
to sieve arguments.  They do not automatically add the correlation
information that distinguishes one specified pair of primes from
parity-mimicking almost primes.

In the optimized Polymath bounded-gap framework, full GEH implies

```math
H_1\le6.
```

An admissible three-point pattern can then be shown to contain two primes
infinitely often, without specifying in advance which pair.  The same
pipeline does not yield $H_1=2$.  This is strong evidence that GEH alone is
not the final step.

It does **not** prove that GEH is irrelevant.  GEH could remove the
distribution bottleneck and leave a cleaner parity problem, or its proof
might introduce machinery useful on both sides.  The benchmark therefore
gives GEH substantial credit while refusing to make it a prerequisite.

## Candidate parity-breaking indicators

The following developments could be important route evidence.  None is
scored formally until it improves the unconditional gap $H$ or the
distribution coordinate $D$.

### Two-point Liouville or Möbius correlations

The Cesàro two-point Chowla assertion at shift $2$ is

```math
\frac1X\sum_{n\le X}\lambda(n)\lambda(n+2)\longrightarrow0.
```

Tao proved the corresponding logarithmically averaged two-point result.  The
change from logarithmic averaging to uniform Cesàro averaging is substantial.
Even the Cesàro correlation statement should not be described as, by itself,
equivalent to twin primes: a twin-prime deduction would require suitably
quantitative estimates compatible with the sieve weights and other technical
inputs.

Useful progress markers include the averaging regime, the uniformity in
shifts and auxiliary parameters, and the quantitative saving.  A qualitative
$o(1)$ estimate and a fixed power-of-logarithm saving may have very different
sieve consequences.

### Local Fourier uniformity and short intervals

Short-interval Fourier estimates for multiplicative functions are one route
toward stronger correlation theorems.  Their progress can be parameterized by
the shortest interval length, the exceptional-set size, and the uniformity in
frequency.

This is an active literature whose precise records can change quickly.  The
benchmark therefore does not hard-code a claimed 2026 interval exponent.
Any future scored milestone should cite the exact theorem and show the proved
reduction to $H$ or $D$.

### Bilinear information for shifted primes

Parity-breaking sieve successes in other problems exploit genuinely
structured bilinear estimates, often called Type II information.  For the
shifted-prime sequence $p+2$, obtaining useful bilinear control in a nonempty
balanced range would be a major development.

The width of the controlled bilinear range, the modulus range, and the saving
over trivial estimates provide natural continuous diagnostics.  At present
these are route diagnostics rather than a formal third coordinate.

### Direct prime-pair correlation

A proof may bypass the GEH hierarchy and directly establish a lower bound or
asymptotic for

```math
\sum_{n\le X}\Lambda(n)\Lambda(n+2).
```

Such a theorem would move the unconditional outcome coordinate immediately,
possibly all the way to twin primes.  The benchmark must permit this jump;
otherwise it would reward conformity to one anticipated proof architecture
rather than actual progress.

## Three plausible route shapes

1. **Distribution first.**  EH or GEH is proved, giving much smaller bounded
   gaps; a later new correlation argument breaks parity.
2. **Parity first.**  A bilinear or correlation theorem attacks the specified
   pair directly and solves twin primes without full GEH.
3. **Joint mechanism.**  One new dispersion or spectral framework improves
   distribution and parity-sensitive correlations together.

The third route creates the largest skip risk because one theorem can move
both formal coordinates and cross several score contours.

## Treatment of impressive but off-coordinate results

The Riemann hypothesis does not by itself imply EH or GEH and does not improve
the unconditional prime-gap bound to a new benchmark level.  Under the
two-coordinate rule, a proof of RH alone therefore receives no formal
twin-prime score.  A proved distribution or gap consequence of its methods
would receive credit normally.

The same rule applies to progress on Sarnak, Chowla, or broad multiplicative
randomness conjectures.  These results may be highly impressive and may
change a forecast of future success.  Target-specific benchmark credit waits
for a theorem connecting them to $H$ or $D$.

This separation prevents the benchmark from turning theorem prestige or
subjective method optimism into nominal progress toward twin primes.

## Claims deliberately not adopted

The supplied discussion motivating this note included several useful
directions but also claims too compressed or time-sensitive for a benchmark
definition.  This folder does not assume:

- that two-point Chowla plus “standard sieve inputs” is a formally stated
  equivalence to twin primes;
- that a particular power-of-logarithm saving is already known to be
  sufficient without additional compatibility hypotheses;
- that one short-interval Fourier exponent is the stable current record; or
- a numerical probability or deadline for the Chowla route.

Those may be valuable research forecasts.  They should be kept separate from
the proved-coordinate ladder until their precise reductions and sources are
recorded.

## Status

This note is explanatory, not a new parity theorem.  It records why a
two-coordinate benchmark can value GEH while remaining agnostic about whether
GEH lies on the eventual proof path.
