# Kakeya Sets and Maximal Estimates

A **Kakeya set** (or Besicovitch set) in $\mathbb R^n$ is a compact set that
contains a unit line segment in every direction.  The geometric Kakeya
conjecture says that every such set has Hausdorff and Minkowski dimension
$n$.  The Kakeya maximal-function conjecture is a stronger, quantitative
statement controlling the overlap multiplicity of thin tubes.

This folder begins after Wang and Zahl's 2025 theorem that every Kakeya set in
$\mathbb R^3$ has Hausdorff and Minkowski dimension $3$.  That theorem does
not prove the three-dimensional maximal-function conjecture: its shaded-tube
estimate loses a density exponent that may depend on the requested
$\delta^{-\varepsilon}$ loss.

## Coordinates used by the ladder

For $s\le n$, $H_n(s)$ means that every Kakeya set in $\mathbb R^n$ has
Hausdorff dimension at least $s$.  Write $H_n=H_n(n)$.

For a direction-separated family $\mathbb T$ of $\delta$-tubes in
$\mathbb R^3$, with measurable shadings $Y(T)\subseteq T$ satisfying
$|Y(T)|\ge\lambda|T|$, let $A_3(q)$ denote

```math
\left|\bigcup_{T\in\mathbb T}Y(T)\right|
\ge c_\varepsilon\,\delta^\varepsilon\lambda^q
\sum_{T\in\mathbb T}|T|
```

for every $\varepsilon\gt0$, with one fixed finite $q$ independent of
$\varepsilon$.  Smaller $q$ is stronger.  The endpoint $A_3(3)$ is an
equivalent shaded form of the three-dimensional Kakeya maximal-function
conjecture.

Write $M_n$ for the endpoint Kakeya maximal-function conjecture in
$\mathbb R^n$, and $M_{\le d}$ for $M_n$ in every $2\le n\le d$.  An
$\infty$ subscript means every finite ambient dimension.  Finally,
$M_n^{\mathrm{PWA}}$ is the same estimate for every tube family satisfying
the polynomial Wolff axioms, a broader class that contains every
direction-separated family.

## Why the ladder has joins

Below the four-dimensional set conjecture there are two independent routes:
an improvement to the best four-dimensional Hausdorff-dimension bound, or a
uniform density exponent in the three-dimensional shaded-tube theorem.  A
disjunction is used so that either kind of genuine progress earns credit.

Above that join, the geometric route increases ambient-dimension breadth and
the analytic route proves maximal estimates.  Each higher alternative
implies an alternative on the row below.  The maximal conjecture is not
treated as interchangeable with the set conjecture: maximal estimates imply
the shaded tube-union statement, then the Hausdorff statement, then the
Minkowski statement.

The terminal polynomial-Wolff-axiom statement is stronger than the ordinary
all-dimensional maximal conjecture.  Replacing polynomial Wolff axioms by
the weaker convex Wolff axioms is not a safe strengthening: ruled algebraic
hypersurfaces give counterexamples in dimension at least four.

## Documents

- [`difficulty_ladder.md`](difficulty_ladder.md) contains the milestone and
  effort tables.
- [`sources_and_implications.md`](sources_and_implications.md) gives exact
  definitions, primary sources, implication proofs, openness qualifications,
  and the weakening and strengthening audits.
- [`weakest_kakeya_improvement.md`](weakest_kakeya_improvement.md) states the
  folder's unique moving **Weakest** conjecture.

## Status labels

- **[proved]** is an unconditional theorem.
- **[implication]** is a proved or elementary reduction.
- **[heuristic]** is an analogy or mechanism, not a theorem.
- **[subjective]** is a benchmark-design or difficulty judgment.

All scores, effort estimates, skip probabilities, and ZFC-confidence
judgments are **[subjective]**.
