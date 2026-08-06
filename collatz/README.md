# Collatz-like Conjectures

This repository records deliberately modest Collatz-like conjectures with
explicitly distinguished starting-set quantifiers, map families, and orbit
conclusions.

- [The Negative-Drift Periodicity Conjecture](negative_drift_periodicity.md) asks whether some admissible negative-drift pure-division map has every orbit eventually enter a cycle containing a division step.
- [The Positive Division-Density Conjecture](positive_division_density.md) asks whether some relatively-prime residue-affine map gives every orbit a positive lower density of division-branch steps.
- [Pure-Division Polylogarithmic Contraction](pure_division_polylogarithmic_contraction.md) is the first all-start scalar rung above the moving sparse-ray statement.
- [Power-or-Density Contraction](power_or_density_contraction.md) and [Periodicity-or-Classical-Density](periodicity_or_classical_density.md) are the two deliberate joins between the designed-map and shortcut-Collatz routes.
- [The All-Start Nonnegative Superlogarithmic Contraction Conjecture](nonnegative_superlogarithmic_contraction.md) asks whether some fixed coprime self-map of $\mathbb N_0$ gives every orbit a contraction count satisfying $D_K(n)=\omega(\log K)$.
- [The All-Start Signed Superlogarithmic Contraction Conjecture](signed_superlogarithmic_contraction.md) provisionally allows signed unit multipliers, integer offsets, and integer-valued orbits while retaining the same target for every nonnegative start.
- [The Weakest Collatz-like Conjecture](weakest_collatzlike_conjecture.md) asks only that one signed unit map satisfy the superlogarithmic target on every sufficiently large member of one existentially chosen exact scaled ray $d u^k$, where $u$ is multiplicatively independent of the map base.

In these names, **all-start** means every starting value in $\mathbb N_0$.
The descriptive names expose the starting-set quantifier, map family, and
required orbit property.  “Weakest” is retained only for the deliberately
moving lowest candidate; its document states the convention under which it
is being minimized.

## How to read the ladder

The [difficulty ladder](difficulty_ladder.md) extracts one scalar chain from
two natural directions of progress.  The **designed-map axis** permits a
favorable admissible residue-affine map and asks for increasingly strong orbit
control.  The **fixed-map axis** keeps the shortcut Collatz map and strengthens
what is known about its even-step frequency, boundedness, attractors, and
stopping times.  Intermediate statements that differ only by a likely-coupled
quantifier or growth rate remain descriptive side points instead of receiving
separate scores.

Scores `1.6` and `2` are deliberate joins of the two axes.  Each awards the
same rung when either a designed-map theorem or a suitably strong theorem for
the classical map is proved.  They are useful because a single-axis chain
would fail to credit substantial progress on the other route.  The
division-cycle clause at score `2` is essential: bare eventual periodicity
does not imply positive division density when a cycle can consist entirely of
an expanding branch.

From stronger to weaker, the lower part of the selected chain is

```math
\begin{aligned}
\text{classical boundedness}
&\Longrightarrow \text{classical drift-threshold frequency}\\
&\Longrightarrow \text{score-2 join}
\Longrightarrow \text{score-1.6 join}\\
&\Longrightarrow \text{pure-division polylogarithmic contraction}
\Longrightarrow \text{scaled-ray Weakest conjecture}.
\end{aligned}
```

The linked score-`1`, `1.6`, and `2` statements record their adjacent
implication interfaces.  The remaining lower step uses a special property of
the classical map.  A bounded integer orbit is eventually periodic; on a
positive cycle with $o$ odd and $e$ even steps, the affine composition has a
positive additive term and slope $3^o/2^{o+e}$.  A positive fixed point
therefore requires

```math
\frac{3^o}{2^{o+e}}\lt1,
```

which gives $e/(o+e)\gt\theta_{\rm Col}$.  Thus classical boundedness implies
the score-`2.3` frequency statement.  A finite attractor implies boundedness,
classical Collatz supplies a one-cycle finite attractor, and each uniform
stopping-time bound implies classical Collatz.

### Division frequency and drift

A positive density of division steps need not make an orbit shrink.  For the
shortcut Collatz map, the balance changes at

```math
\theta_{\rm Col}=1-\frac{\log 2}{\log 3}\approx0.36907.
```

This is why positive density and the exact classical drift threshold occupy
different rungs.  With several expanding residue classes, total division
density alone is even less informative because the different expanding
multipliers must be weighted separately.  The score-`2.3` inequality is
non-strict; requiring a strict margin above the threshold would already force
boundedness and collapse the next distinction.

### Stopping-time hierarchy and endpoint

For the shortcut Collatz map, let $\tau(n)$ be the time for $n$ to reach $1$
and let

```math
M(X)=\max_{1\le n\le X}\tau(n),
```

with $\tau(n)=\infty$ when $n$ never reaches $1$.  The upper rungs successively
ask for polynomial, polylogarithmic, and logarithmic bounds on the worst
stopping time, followed by convergence of $M(X)/\log X$ to a finite positive
constant.  Each finite uniform bound implies classical Collatz.

The terminal score is a conjunction: it retains that classical stopping-time
limit and adds the [Universal One-Expander Periodicity
Conjecture](one_expander_universal_periodicity.md).  The latter concerns only
the restricted positive, coprime, pure-division family with one expanding
residue and $a\lt B^B$.  It neither identifies the classical attractor nor
supplies a stopping-time estimate, and no universality claim is made for
arbitrary residue-affine maps.

### Effort and skip annotations

The [development guide](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0)
defines the shared effort and integer-skip fields.  For this ladder, score `9`
is `n/a` because there is no selected score-`10` contour.  The estimates cover
classical stopping, cycle, and exceptional-set work, generalized
residue-affine and one-expander dynamics, and adjacent arithmetic-dynamics
methods only when a plausible transfer is explicit.  Generic number theory
and brute-force orbit verification are not counted.

The central effort estimates are uncertain by at least roughly half a decade
through the middle of the ladder and more near the endpoint.  Individual
placements are uncertain by roughly one score point, and skip estimates by at
least `15--20` percentage points.  Near-linearity in the effort column is a
diagnostic, not a fitting constraint.  The separate sparse-ray diagnostic
assigns about `20%` probability that the first score-`1` theorem also
overshoots score `0.2`.  The shared construction rules are in the
[development guide](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0).

## Research record

Research toward superlogarithmic contraction counts is indexed in
[`progress/`](progress/).  Precise obstacles encountered by the current
approaches are indexed in [`blockers/`](blockers/).

## Status

Provisional open problems. This repository contains problem statements and
context; it does not claim a proof or a specific construction, or that every
formulation has been certified as open in the literature.
