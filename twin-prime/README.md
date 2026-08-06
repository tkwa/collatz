# Prime Patterns

This folder tracks theorem strength from the current bounded-gap frontier,
through twin primes and one-variable Bateman--Horn, to multivariate
Bateman--Horn over $\mathbb Z$.  Let $p_n$ be the $n$-th prime and

```math
H_1=\liminf_{n\to\infty}(p_{n+1}-p_n).
```

The present unconditional theorem is $H_1\le246$.  The
[source audit](dev_notes/sources_and_implications.md) records the literature basis for
this frontier and every conditional implication used by the ladder.

## Documents

- [`difficulty_ladder.md`](difficulty_ladder.md) contains the milestone and
  effort tables.
- [`dev_notes/sources_and_implications.md`](dev_notes/sources_and_implications.md) defines the
  named conjectures precisely and records implication directions,
  non-implications, and openness caveats.

## How to read the disjunctive rows

If a row is $A\lor B$, either theorem clears it.  Each alternative on the next
row implies at least one alternative below, so the displayed scores still form
one scalar implication chain even though research can follow different
routes.

The first positive row is the folder's unique **Weakest** conjecture.  Since
all sufficiently large consecutive-prime gaps are even, the smallest possible
strict improvement over `246` is $H_1\le244$.  The other disjunct records any
unrestricted Elliott--Halberstam gain beyond exponent $1/2$.

## Why these contours are displayed

Below twin primes, the outcome bounds and the EH/GEH distribution statements
form independently nested routes.  Score `1` is the only coarse bridge before
the source-backed `12` and `6` contours.  The $H_1\le4$ row is the last
nontrivial even gap bound before twins, while full GEH is the last standard
distribution conjecture before the parity barrier.  Additional round-number
gap cutoffs and nearby EH exponents are omitted because a single proof would
be likely to cross several of them.

Above twin primes, one branch adds quantitative depth for prime pairs and then
all affine families.  The other adds qualitative breadth from every even
consecutive gap, to every admissible affine family, and then to polynomial
families.  The selected joins are:

- a positive-order twin count **or** de Polignac;
- the twin-pair Hardy--Littlewood asymptotic **or** Dickson; and
- affine Hardy--Littlewood asymptotics **or** Schinzel H.

One-variable Bateman--Horn joins the quantitative affine branch and the
qualitative polynomial branch.  The final half-step is the
Destagnol--Sofos multivariate extension: the same local-to-global prime-value
asymptotic for admissible polynomial families in any number of variables over
$\mathbb Z$.  Named patterns such as Sophie Germain primes or primes of the
form $n^2+1$ are not rungs because they do not imply either branch immediately
below them.

## Calibration

The score and skip columns use the
[development guide](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0).
On that shared scale, twin primes is score `5`, one-variable Bateman--Horn is
score `9`, and multivariate Bateman--Horn is score `9.5`; none is an
independently imposed anchor.  The numerical effort estimates and the pairing
of alternatives are subjective, while the implication audit is mathematical.
