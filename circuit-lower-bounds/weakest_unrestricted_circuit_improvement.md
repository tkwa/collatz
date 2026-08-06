# The Weakest Unrestricted-Circuit Improvement

## Statement

There is a language $L\in NP$ such that

```math
\limsup_{n\to\infty}\bigl(C_L(n)-3.1n\bigr)=+\infty.
```

Equivalently, for every real $A$ there are arbitrarily large $n$ for which
$C_L(n)\ge3.1n+A$.  No growth rate for the additive gain is prescribed.

Here $C_L(n)$ is minimum size in the complete binary basis $B_2$, with the
model fixed in the [folder README](README.md).  One fixed language must work
on an unbounded sequence of lengths.  No efficient constructibility or
density condition on those hard lengths is required; ordinary computability
of the set is automatic from the fixed decidable language.

## Weakening record

This is the folder's single moving **Weakest** conjecture.  The weakening
process started from exponential circuit complexity for a fixed $NP$-complete
language, then relaxed the language to an existential $NP$ witness, the
length quantifier to infinitely often, and the growth rate down through
superpolynomial, superlinear, leading-coefficient, and finally no-rate
unbounded-additive gains.

Three formally weaker directions were rejected:

- Improving only the $O(\mathrm{polylog}\,n)$ score-`0` loss may improve
  affine-source construction rather than unrestricted-circuit analysis.
- Merely crossing $3.1n$ infinitely often, or obtaining only a bounded
  additive gain, is sensitive to rounding and bounded gate-count conventions.
  The audit assigns these variants under 20% probability of removing a core
  obstacle.
- Allowing arbitrary, nonuniform truth tables makes large lower bounds a
  counting theorem.  Requiring one $NP$ language retains uniform explicitness.

Weakening the length set below infinitely many unbounded lengths also becomes
vacuous: any finite collection of hard truth tables can be built into one
polynomial-time language.

## Status

**Open as of August 2026.**  The cited 2026 frontier account still identifies
$3.1n-o(n)$ as the best explicit-function lower bound.  The exact known
inequality is $3.1n-26.1d-25.6$.  Its additive term is always negative, so
replacing only the affine disperser inside that unchanged inequality cannot
supply an unbounded positive gain.  The eligible red-team assigns a
**[subjective]** 25% chance that the statement removes a core obstacle.  Its
minimality is not a literature theorem.
