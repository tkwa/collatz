# The Weakest Unrestricted-Circuit Improvement

## Statement

There are a language $L\in NP$ and a constant $\varepsilon\gt0$ such that

```math
C_L(n)\ge(3.1+\varepsilon)n
```

for infinitely many $n$.  Equivalently,
$\limsup_{n\to\infty}C_L(n)/n\gt3.1$.

Here $C_L(n)$ is minimum size in the complete binary basis $B_2$, with the
model fixed in the [folder README](README.md).  The language, $\varepsilon$,
and infinite set of lengths are all existential.  No constructibility of the
hard lengths is required.

## Weakening record

This is the folder's single moving **Weakest** conjecture.  The weakening
process started from exponential circuit complexity for a fixed $NP$-complete
language, then relaxed the language to an existential $NP$ witness, the
length quantifier to infinitely often, and the growth rate down through
superpolynomial and superlinear bounds to a leading-coefficient gain.

Three formally weaker directions were rejected:

- Improving only the $O(\mathrm{polylog}\,n)$ score-`0` loss may improve
  affine-source construction rather than unrestricted-circuit analysis.
- A $3.1n+O(1)$ or $3.1n+h(n)$ additive gain leaves the leading-order barrier
  intact.  The audit assigns under 20% probability that such a result removes
  a core obstacle.
- Allowing arbitrary, nonuniform truth tables makes large lower bounds a
  counting theorem.  Requiring one $NP$ language retains uniform explicitness.

Weakening the length set below infinitely many unbounded lengths also becomes
vacuous: any finite collection of hard truth tables can be built into one
polynomial-time language.

## Status

**Open as of August 2026.**  The cited 2026 frontier account still identifies
$3.1n-o(n)$ as the best explicit-function lower bound and says that even a
superlinear lower bound for a function in $P$, or in $NP$, is unknown.  The
minimality judgment is subjective; it is not a literature theorem.
