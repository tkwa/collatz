# An Impressiveness Ladder for Collatz-like Conjectures

This note gives a subjective scale for progress on the orbit problems in this
folder.  The ordering is primarily by mathematical reach.  The numerical
spacing is cross-checked against two different considerations: expected
logarithmic human-equivalent effort and the risk that a decisive lemma proves
several adjacent milestones at essentially the same time.  Those are three
different judgments, not claims that a difficult proof automatically proves
an impressive theorem.

Score `0` is the current rigorous frontier, score `6` is classical Collatz,
score `7` is a sharp asymptotic for the maximal classical stopping time, and
score `10` is universal periodicity for a restricted one-expander family.  A
one-point interval is intended to contain a real qualitative transition, but
the scale is not a ratio scale and the estimates are not literature
consensus.

Throughout, `K` is the number of iterates and `D_K(n)` counts the relevant
contracting-branch steps among the first `K` iterates of the starting value
`n`.  In the pure-division family used by the Positive Division-Density
Conjecture and the drift calculations below, these are precisely the
division-branch steps.

## The primary scale

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.**  For a useful fixed map, every orbit satisfies `D_K(n) = Omega_n(log K)`.  The logarithmic constant can be made arbitrarily large only by changing maps; this does not give a superlogarithmic bound for one fixed map. |
| **0.2** | **The Weakest Collatz-like Conjecture.**  One fixed signed unit residue-affine map satisfies `D_K(n) = omega(log K)` on every sufficiently large member of one existentially chosen power ray whose base is coprime to the map base. |
| **0.7** | **The All-Start Signed Superlogarithmic Contraction Conjecture.**  One fixed signed residue-affine map on the integers, with unit multipliers of both contracting and expanding absolute slope, satisfies `D_K(n) = omega(log K)` for every nonnegative starting value. |
| **1.0** | **The All-Start Nonnegative Superlogarithmic Contraction Conjecture.**  One fixed coprime self-map of the nonnegative integers, with both contracting and expanding branches, satisfies `D_K(n) = omega(log K)` for every starting value. |
| **1.2** | One fixed map has a universal polylogarithmic lower bound such as `D_K(n) >= (log K)^(1+epsilon)`. |
| **1.4** | One fixed map has a universal fixed-power lower bound `D_K(n) >= K^epsilon`. |
| **1.6** | One fixed map has `D_K(n) >= K^(1-epsilon)` for every fixed `epsilon > 0`. |
| **1.8** | One fixed map has a near-linear but zero-density bound such as `D_K(n) >= K/(log K)^A`. |
| **2.0** | **The Positive Division-Density Conjecture.**  Every orbit of one fixed admissible map has positive lower division density, with the positive constant allowed to depend on the starting value. |
| **2.5** | One fixed map has a positive division-density lower bound uniform over all starting values. |
| **3.0** | The uniform density is explicit and quantitatively substantial, but remains below the map's negative-drift threshold. |
| **3.5** | Universal density or branch-frequency bounds can be pushed arbitrarily close to the negative-drift threshold. |
| **3.8** | In a family where total division density determines drift, every orbit crosses the relevant threshold. |
| **4.0** | Full expanding-branch frequency control gives every orbit of one selected map negative multiplicative drift, including when total division density alone is insufficient. |
| **4.5** | **The Negative-Drift Periodicity Conjecture.**  Every orbit of one chosen admissible negative-drift map is eventually periodic. |
| **5.0** | Every shortcut-Collatz orbit has lower even-step frequency above its `0.36907...` negative-drift threshold.  This controls every start but does not by itself exclude rare arbitrarily long expansion bursts or nonstandard cycles. |
| **5.5** | One of the two classical universal obstructions is removed: either every shortcut-Collatz orbit is bounded and hence eventually periodic, possibly in an unknown cycle, or `1 <-> 2` is proved to be its only positive cycle. |
| **6.0** | **The classical Collatz conjecture.**  Every positive integer reaches the cycle `1 <-> 2` under the shortcut map. |
| **7.0** | **Sharp classical stopping-time asymptotic.**  If $\tau(n)$ is the first shortcut iterate at $1$ and $M(X)=\max_{1\le n\le X}\tau(n)$, then $M(X)\sim c_{\mathrm{Col}}\log X$ for an explicit constant $c_{\mathrm{Col}}\gt0$. |
| **8.0** | A common mechanism proves eventual periodicity for every start of a substantial explicit infinite family of positive, coprime, negative-drift maps having pure-division contracting branches and one expanding residue. |
| **9.0** | A nearly uniform theorem handles every map in that one-expander class except a sharply characterized exceptional subfamily. |
| **10** | **The Universal One-Expander Periodicity Conjecture.**  Every positive, coprime map with pure-division contracting branches, exactly one expanding residue, and $a\lt B^B$ has every nonnegative orbit eventually periodic. |

The new one-coprime-ray conjecture belongs at `0.2`, rather than inheriting
the old `0.4` placement of a profinite-density proposal.  It is a genuine
infinite-orbit assertion and survived the recorded elementary attacks, but it
asks about only `O(log X)` starts below `X` and existentially chooses both the
map and the ray.  Its proof could still be very hard; the low score records
the theorem's narrow reach, not confidence that a proof is near.

The intermediate rates below positive density are representative landmarks,
not a claim that these are the only natural choices.  There are infinitely
many incomparable or more finely spaced rates between `omega(log K)` and
linear growth.  They receive only one score-point in total because a strong
rigidity or branch-frequency lemma is unusually likely to overshoot several
of them.

## Division density and negative drift

Division density alone determines drift only in special families.  Suppose a
base-`B` map has one expanding multiplier `a`, and an orbit uses the division
branches with asymptotic frequency `d`.  Ignoring bounded affine terms, its
mean logarithmic multiplier is

```math
d\log(1/B)+(1-d)\log(a/B)
= (1-d)\log a-\log B.
```

It is negative precisely when

```math
d \gt 1-\frac{\log B}{\log a}.
```

For the shortcut Collatz map, `B=2` and `a=3`, so the threshold is

```math
d \gt 1-\frac{\log 2}{\log 3}
= \frac{\log(3/2)}{\log 3}
\approx 0.36907.
```

For several expanding residue classes, the total division density is not
enough.  If `f_r` is the frequency of expanding residue `r`, the corresponding
branch-weighted condition is

```math
\sum_{r\in E} f_r\log a_r \lt \log B.
```

Under uniform residue frequencies, `f_r=1/B`, this becomes

```math
\prod_{r\in E}a_r \lt B^B.
```

This is why the ladder separates positive density, substantial density,
threshold crossing in a one-expander family, and full branch-weighted drift.
A small positive density can coexist with exponential growth, and even a
large total division density need not control which expanding branches occur.

## The sharp classical milestone

For the shortcut Collatz map $T$, set

```math
\tau(n)=\min\lbrace k\ge0:T^k(n)=1\rbrace,
\qquad
M(X)=\max_{1\le n\le X}\tau(n),
```

where $\tau(n)=\infty$ if the orbit never reaches $1$.  Score `7` asks for an
explicit constant $c_{\mathrm{Col}}\gt0$ such that

```math
M(X)\sim c_{\mathrm{Col}}\log X.
```

This is deliberately much stronger than merely proving Collatz.  It requires
the correct first-order growth of the most extreme stopping time below $X$,
not just a finite bound for every individual start.  The exact constant is
part of the theorem, rather than a placeholder that may be chosen after the
proof.

## Existential and universal meanings

The Negative-Drift Periodicity Conjecture is existential in the choice of map
and universal only in the starting value.  Classical Collatz would prove it
by supplying the shortcut Collatz map as a witness.  It is therefore placed
below the fixed-map classical statements at scores `5` through `6`, despite
having a stronger-sounding condition in its name.

The score-10 endpoint is uniform over the narrower class defined in
[`one_expander_universal_periodicity.md`](one_expander_universal_periodicity.md).
It varies $B$, the unique expanding residue, its positive coprime multiplier,
and its nonnegative offset, while forcing every other branch to be pure
division.  This is stronger than choosing one witness map but materially
narrower than quantifying over arbitrary residue-affine systems.

Broad generalized-Collatz systems can encode computation.  Kurtz and Simon,
building on Conway, proved that a natural generalized totality problem is
$\Pi^0_2$-complete.  No reduction is known here for the positive coprime
one-expander class, and no theorem rules such a reduction out.  The endpoint
is intentionally placed near that uncertain boundary, with a subjective
universality risk around `10--15%`, rather than beyond it.

Reference: Stuart A. Kurtz and Janos Simon,
[“The Undecidability of the Generalized Collatz Problem”](https://doi.org/10.1007/978-3-540-72504-6_49).

Selected-map milestones need not logically imply the next selected-map
milestone, because their witness maps may differ.  The ordering says that the
later result would normally have greater reach and impressiveness, not that
the table is a chain of formal implications.

## Integer-boundary skip audit

For calibration, let `H_i` be the cumulative future human-equivalent research
effort until the first result scoring at least the integer `i`.  A boundary is
"skipped" when `H_(i+1) < 1.05 H_i`.  Conditional on the relevant statements
being true and reachable, the following are rough personal probabilities,
with uncertainty of about 15 percentage points each:

| Transition | Skip probability | Main reason it could be skipped |
|---:|---:|---|
| **0 -> 1** | **20%** | A universal rigidity lemma may solve an all-start statement before a ray-specific construction is isolated. |
| **1 -> 2** | **30%** | A lower-bound mechanism may naturally yield positive density rather than a chosen intermediate rate. |
| **2 -> 3** | **45%** | Quantitative branch control may arrive with a substantial explicit constant. |
| **3 -> 4** | **60%** | Equidistribution or a structural frequency theorem can cross the drift threshold in the same argument. |
| **4 -> 5** | **15%** | A tractable existentially chosen map can exploit structure unavailable for the fixed `3x+1` map. |
| **5 -> 6** | **35%** | A genuinely universal Collatz mechanism may prove recurrence and cycle identification together rather than stop at frequency control. |
| **6 -> 7** | **10%** | A sufficiently quantitative Collatz proof might also identify the sharp extreme stopping-time constant. |
| **7 -> 8** | **20%** | The mechanism behind a sharp classical asymptotic may immediately control a substantial one-expander family. |
| **8 -> 9** | **35%** | A structural theorem for one infinite family may cover almost the whole one-expander class at once. |
| **9 -> 10** | **15%** | The exceptional maps may contain either counterexamples or the remaining computational simulations. |

These probabilities are not used to define the scores mechanically.  In
particular, alternative lemmas raise skip risk because several approaches can
mature in parallel, but the largest jumps would come from one theorem
overshooting its nominal target.  The conspicuously low `4 -> 5` estimate is
why the ladder reserves a full point between a designed witness map and the
fixed classical map.

## A conventional Collatz companion

A more conventional ladder measures how much of the exceptional set for the
classical map has been eliminated.  Let `E(X)` denote the number of positive
integers at most `X` whose orbits do not reach `1`.  Bounds on `E(X)` below are
hypothetical theorem statements, not known estimates.

| Score | Conventional milestone |
|---:|---|
| **0** | Current knowledge: exhaustive finite verification, classical almost-all finite-stopping-time results, Tao's logarithmic-density almost-bounded-orbit theorem, and strong restrictions on possible cycles. |
| **0.75** | Tao's almost-bounded conclusion is upgraded to natural density, preferably with a quantitative exceptional-set estimate. |
| **1.25** | Actual convergence to `1` is proved for a logarithmic-density-one set of starts. |
| **1.75** | Actual convergence to `1` is proved for a natural-density-one set of starts. |
| **2.5** | A power-saving exceptional-set bound is proved: `E(X) = O(X^(1-delta))`. |
| **3.25** | The exceptional set is subpolynomial: `E(X) = X^o(1)`. |
| **4.0** | Only polylogarithmically many exceptions remain below `X`. |
| **4.75** | `E(X) = o(log X)`.  This rules out an unbounded orbit, since one such orbit would itself supply `Omega(log X)` distinct exceptional starts below `X`. |
| **5.5** | Either every orbit is bounded and eventually periodic, or the usual cycle is proved to be the only positive cycle. |
| **6.0** | Both universal halves are joined: every positive orbit reaches `1 <-> 2`. |
| **7.0** | The sharp maximal-stopping-time asymptotic $M(X)\sim c_{\mathrm{Col}}\log X$ with explicit $c_{\mathrm{Col}}$. |
| **8-10** | The same increasingly uniform one-expander periodicity theorems as on the primary scale. |

The conventional ladder is smoother for historical recognition and intuitive
impressiveness: Tao-type results, exceptional-set bounds, boundedness, cycle
exclusion, and full Collatz are familiar landmarks.  The primary ladder is
probably smoother for forecasting proof effort because it keeps the
all-start quantifier and the contraction-frequency observable fixed through
most of the scale.  Neither is literally one-dimensional.  In particular,
exceptional-set estimates can improve indefinitely without becoming
universal, while boundedness and cycle exclusion are orthogonal halves of
classical Collatz.

## How to read the numbers

The scale deliberately keeps three judgments visible:

- **theorem reach:** how many starts and maps are controlled, and how strong
  the orbit conclusion is;
- **expected log effort:** whether neighboring results plausibly require
  comparable multiplicative increases in cumulative research effort; and
- **skip risk:** whether a natural lemma is likely to establish several
  milestones at once.

Theorem reach governs the ordering.  Expected effort and skip risk govern the
spacing.  Historical fame is useful context in the conventional companion,
but it does not raise a weak theorem's primary score.  Thus `6` is not
literally three times as impressive as `2`, and a proof may be much harder or
easier than its theorem's placement suggests.
