# Twin-Prime Benchmark

This folder defines a benchmark for progress toward the twin prime
conjecture.  Its target is

```math
\#\lbrace p:\ p\text{ and }p+2\text{ are both prime}\rbrace=\infty.
```

Equivalently, if $p_n$ is the $n$-th prime and

```math
H_1=\liminf_{n\to\infty}(p_{n+1}-p_n),
```

then the conjecture says $H_1=2$.  The current unconditional benchmark
baseline is $H_1\le246$, proved by the Maynard--Tao and Polymath bounded-gap
programme.

## Benchmark documents

- [`difficulty_ladder.md`](difficulty_ladder.md) defines the two-coordinate
  state, target-normalized score, calibration anchors, and an extended ladder
  above twin primes.
- [`distribution_subladder.md`](distribution_subladder.md) develops the
  prime-distribution coordinate from Bombieri--Vinogradov-type information to
  generalized Elliott--Halberstam.
- [`parity_and_alternative_routes.md`](parity_and_alternative_routes.md)
  explains why GEH is not assumed to be load-bearing and records
  parity-breaking and correlation routes that the two-coordinate score does
  not directly represent.

## Two-coordinate state

The formal state is

```math
x=(H,D),
```

where $H$ is the best proved unconditional upper bound for $H_1$ and $D$ is
the strongest proved prime-distribution milestone on the distribution
subladder.  The state is closed under known implications.  In particular, a
proof of full GEH would also establish the standard conditional consequence
$H_1\le6$, so it moves both coordinates.

The benchmark intentionally does not add a third parity coordinate.  A
Chowla-type estimate, local Fourier-uniformity theorem, or new bilinear method
may be excellent evidence about a future route without yet implying a better
$H$ or $D$.  Such a result is documented, but its formal score remains
unchanged until it has a proved consequence in one of the two coordinates.

This is conservative.  It is preferable to assigning speculative fractions
of progress to techniques whose connection to twin primes is not yet a
theorem.

## Status and sources

The ladder is provisional and its effort estimates are not mathematical
claims.  The main structural anchors are:

- D. H. J. Polymath,
  [“Variants of the Selberg sieve, and bounded intervals containing many primes”](https://doi.org/10.1186/s40687-014-0012-7),
  which records the unconditional bound $H_1\le246$ and the conditional
  $H_1\le6$ consequence of generalized Elliott--Halberstam; and
- Terence Tao,
  [“The logarithmically averaged Chowla and Elliott conjectures for two-point correlations”](https://doi.org/10.1017/fmp.2016.10),
  which proves a logarithmically averaged two-point correlation theorem but
  not the Cesàro statement or twin primes.

Claims about the exact current frontier of rapidly changing correlation or
short-interval estimates should be checked against the latest literature
before being used as benchmark coordinates.
