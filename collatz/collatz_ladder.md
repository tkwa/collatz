# An Impressiveness Ladder for Collatz-like Conjectures

This note gives a subjective scale for measuring progress on the universal
orbit problems in this folder.  It is not a probability scale and it is not
intended to make adjacent scores equally difficult.  The lower part separates
the many asymptotic growth rates between a logarithmic contraction count and
positive density; the middle separates positive density, negative drift, and
recurrence; and the upper part rewards uniformity across broad families of
maps.

Throughout, `K` is the number of iterates and `D_K(n)` counts the relevant
contracting-branch steps among the first `K` iterates of the starting value
`n`.  In the pure-division family used by the Very Weak conjecture and the
drift calculations below, these are precisely the division-branch steps.

## The scale

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.**  For a useful fixed map, every orbit satisfies `D_K(n) = Omega_n(log K)`.  The logarithmic constant can be made arbitrarily large only by changing maps; this does not give a superlogarithmic bound for one fixed map. |
| **1.0** | **The Extremely Weak Collatz-like Conjecture.**  One fixed coprime residue-affine map with both contracting and expanding branches satisfies `D_K(n) = omega(log K)` for every starting value. |
| **1.2** | One fixed map has a universal polylogarithmic lower bound such as `D_K(n) >= (log K)^(1+epsilon)`. |
| **1.4** | One fixed map has a universal fixed-power lower bound `D_K(n) >= K^epsilon`. |
| **1.6** | One fixed map has `D_K(n) >= K^(1-epsilon)` for every fixed `epsilon > 0`. |
| **1.8** | One fixed map has a near-linear but zero-density bound such as `D_K(n) >= K/(log K)^A`. |
| **2.0** | **The Very Weak Collatz-like Conjecture.**  Every orbit of one fixed admissible map has positive lower division density, with the positive constant allowed to depend on the starting value. |
| **2.4** | One fixed map has a positive division-density lower bound uniform over all starting values. |
| **2.8** | The uniform density is explicit and quantitatively substantial, but remains below the map's negative-drift threshold. |
| **3.2** | Universal density or branch-frequency bounds can be pushed arbitrarily close to the negative-drift threshold. |
| **3.7** | Every orbit crosses the relevant negative-drift threshold. |
| **4.2** | Full expanding-branch frequency control gives every orbit uniformly negative multiplicative drift, rather than merely many division steps. |
| **4.8** | **The Weak Collatz-like Conjecture.**  Every orbit of one chosen admissible negative-drift map is eventually periodic. |
| **6.0** | **The classical Collatz conjecture.**  Every positive integer reaches the cycle `1 <-> 2` under the shortcut map. |
| **7.0** | A common mechanism proves Collatz and a substantial nontrivial family of generalized Collatz maps. |
| **8.0** | A broad theorem controls all maps in major structural classes of negative-drift residue-affine systems. |
| **9.0** | A nearly universal theorem leaves only a sharply characterized exceptional family. |
| **10** | Every admissible residue-affine map satisfying the `B^B` negative-drift condition has the asserted universal recurrence or convergence behavior. |

The intermediate rates below positive density are representative landmarks,
not a claim that these are the only natural choices.  There are infinitely
many incomparable or more finely spaced rates between `omega(log K)` and
linear growth.

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
d > 1-\frac{\log B}{\log a}.
```

For the shortcut Collatz map, `B=2` and `a=3`, so the threshold is

```math
d > 1-\frac{\log 2}{\log 3}
= \frac{\log(3/2)}{\log 3}
\approx 0.36907.
```

For several expanding residue classes, the total division density is not
enough.  If `f_r` is the frequency of expanding residue `r`, the corresponding
branch-weighted condition is

```math
\sum_{r\in E} f_r\log a_r < \log B.
```

Under uniform residue frequencies, `f_r=1/B`, this becomes

```math
\prod_{r\in E}a_r < B^B.
```

This is why the ladder includes several separate steps between positive
division density and a negative-drift conclusion.  A small positive density
can coexist with exponential growth, and even a large total division density
need not control which expanding branches occur.

## Existential and universal meanings

The Weak Collatz-like Conjecture in this repository is existential in the
choice of map and universal only in the starting value.  Classical Collatz
would prove it by supplying the shortcut Collatz map as a witness.  It is
therefore placed below classical Collatz on this scale.

The score-10 endpoint means something genuinely stronger: a theorem uniform
across all admissible parameter choices satisfying the `B^B` condition.  If
"universal" meant only every starting value for one existentially chosen map,
then a proof of Collatz would already establish that statement and could not
coherently sit lower on a theorem-strength ladder.

## How to read the numbers

The scale measures the mathematical reach of a result, not expected proof
length, historical fame, or probability of truth.  In particular:

- scores `0` through `2` concern the frequency of contraction events;
- scores `2` through `4.2` concern quantitative frequencies strong enough to
  control multiplicative drift;
- scores `4.8` and `6` concern actual recurrence for a selected map; and
- scores above `6` increasingly reward a proof that survives variation of the
  parameters rather than exploiting one special map.

The numerical gaps should consequently be read as broad bands, not as a
metric in which a score of `6` is literally three times as impressive as a
score of `2`.
