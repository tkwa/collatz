# abc and Vojta

This folder tracks proved progress on the size of a coprime triple relative to
its radical, from the current unconditional exponent through the abc
conjecture and bounded parts of the Vojta lattice to general Vojta.

Throughout, $a+b=c$ is a triple of coprime positive integers and

```math
R=\mathrm{rad}(abc)=\prod_{p\mid abc}p.
```

The abc conjecture asserts that for every $\varepsilon\gt0$ there is a
constant $K(\varepsilon)$ such that
$c\le K(\varepsilon)R^{1+\varepsilon}$.

## Why the ladder extends past abc

Abc is a specialization of Vojta's conjecture with truncated counting
functions.  On $\mathbb P^1$ with the divisor
$\lbrace0,1,\infty\rbrace$ and truncation level one, the Vojta statement gives
abc.  A proof of abc therefore clears the famous headline problem without
exhausting this folder.

## How the rungs are chosen

The lower ladder distinguishes three growth regimes for bounds on $\log c$:

- the **radical-power regime** $\log c\le R^\theta$;
- the **polylogarithmic regime**
  $\log c\le(\log R)^M$ for fixed $M$; and
- the **polynomial regime** $\log c\le A\log R$, equivalently
  $c\le R^A$.

The proved frontier recorded in this folder is in the radical-power regime.
The transition to a polynomial bound is the main qualitative lower-ladder
event.  Reaching it through the known linear-forms-in-logarithms route would
require breaking that route's exponential loss; another method could bypass
the route.

For $q\gt1$, $A(q)$ denotes the assertion that a constant $K_q$ exists with
$c\le K_qR^q$ for every coprime triple.  For the upper ladder, $V_{d,r}$
denotes truncated-counting Vojta for all smooth projective varieties of
dimension at most $d$, all simple-normal-crossings divisors, and algebraic
points of degree at most $r$, with the usual exceptional-set, height, and
discriminant terms.  An $\infty$ coordinate means that the statement holds
for every fixed finite bound on that axis, with the usual dependence on the
finite bound; it does not assert one estimate uniform over unbounded degree.

The upper rungs use two routes through this lattice: increase the allowed
point degree first, or increase the dimension first.  Each disjunct on a
higher row implies the corresponding disjunct below it.  The finite cutoff
`4` is only a useful calibration contour; degree or dimension four is not
claimed to be intrinsically special.  The curve case is omitted as a separate
rung because Belyi-type reductions make it too close to abc for reliable
integer spacing.

Effectivity is tracked separately.  Standard abc and Vojta statements need
not provide computable constants, so a stronger scalar rung need not improve
the effectivity state.  The exact reductions and this orthogonal coordinate
are recorded in
[`effectivity_and_routes.md`](effectivity_and_routes.md).

## Files

- [`difficulty_ladder.md`](difficulty_ladder.md) contains the milestone and
  effort tables.
- [`effectivity_and_routes.md`](effectivity_and_routes.md) contains the
  implication audit, effectivity coordinate, analogue evidence, and
  adjudication rule.

## Historical exponent record

The lower coordinate has a short but informative theorem history:

| Year | Best proved bound for $\log c$ | Attribution |
|---:|---|---|
| 1986 | $\ll R^{15}$ | Stewart--Tijdeman |
| 1991 | $\ll R^{2/3+\varepsilon}$ | Stewart--Yu |
| 2001 | $\ll R^{1/3}(\log R)^3$ | Stewart--Yu |

Within the theorem record used by this benchmark, these three improvements
over fifteen years are followed by no later exponent rung.  The record is
evidence for wide uncertainty in the difficulty estimates, not a prediction
that the next advance must follow the same route.

## Status labels

Statements in this folder use these labels where the distinction is not
otherwise explicit:

- **[proved]** an unconditional theorem;
- **[implication]** a proved reduction between open statements;
- **[heuristic]** a probabilistic or analogy-based expectation; and
- **[subjective]** a benchmark-design or difficulty judgment rather than
  literature consensus.

Every numerical score and effort estimate is **[subjective]**.
