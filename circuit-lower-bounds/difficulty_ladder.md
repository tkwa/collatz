# A Difficulty Ladder for Unrestricted Circuit Lower Bounds

The [folder overview](README.md) fixes the circuit model.  Exact sources,
implications, and quantifier caveats are in the [source and implication
audit](sources_and_implications.md).  Here $C_L(n)$ is the minimum $B_2$ size
of the characteristic function of $L$ on inputs of length $n$.

## Milestones

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.** One uniform family in $P$ has $B_2$ circuit size at least $3.1n-O(\mathrm{polylog}\,n)$ for all sufficiently large $n$. |
| 0.2 | **[The Weakest unrestricted-circuit improvement](weakest_unrestricted_circuit_improvement.md).** Some $L\in NP$ satisfies $\limsup_{n\to\infty}(C_L(n)-3.1n)=+\infty$. |
| 0.6 | **Fixed leading-coefficient gain.** Some $L\in NP$ satisfies $\limsup_{n\to\infty}C_L(n)/n\gt3.1$. |
| **1** | **Fixed large linear coefficient.** Some $L\in NP$ satisfies $C_L(n)\ge10n$ for infinitely many $n$. |
| **2** | **Unbounded linear coefficient.** Some $L\in NP$ satisfies $\limsup_{n\to\infty}C_L(n)/n=\infty$. |
| **3** | **Mild superlinear bound, i.o.** Some $L\in NP$ satisfies $C_L(n)\ge n\log n$ for infinitely many $n$. |
| **4** | **Fixed polynomial gain, i.o.** For some $L\in NP$ and $\delta\gt0$, $C_L(n)\ge n^{1+\delta}$ for infinitely many $n$. |
| 4.5 | **Quadratic lower bound, i.o.** Some $L\in NP$ satisfies $C_L(n)\ge n^2$ for infinitely many $n$. |
| **5** | **Larger polynomial lower bound, i.o.** Some $L\in NP$ satisfies $C_L(n)\ge n^{10}$ for infinitely many $n$. |
| **6** | **Nonuniform separation.** $NP\nsubseteq P/poly$. |
| **7** | **No-rate eventual superpolynomial bound.** Some $L\in NP$ satisfies $\forall k\in\mathbb N\;\exists n_0\;\forall n\ge n_0:\ C_L(n)\ge n^k$. |
| 7.5 | Some $L\in NP$ satisfies $C_L(n)\ge n^{\log\log n}$ for all sufficiently large $n$. |
| **8** | Some $L\in NP$ satisfies $C_L(n)\ge2^{(\log n)^2}$ for all sufficiently large $n$. |
| 8.5 | **Some eventual stretched exponential.** For some $L\in NP$ and $\delta\gt0$, $C_L(n)\ge2^{n^\delta}$ for all sufficiently large $n$. |
| **9** | Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{1/10}}$ for all sufficiently large $n$. |
| 9.5 | Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{1/2}}$ for all sufficiently large $n$. |
| **10** | Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{3/4}}$ for all sufficiently large $n$. |
| 10.5 | Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{9/10}}$ for all sufficiently large $n$. |
| **11** | Some $L\in NP$ satisfies $C_L(n)\ge2^{n/\log n}$ for all sufficiently large $n$. |
| 11.5 | Some $L\in NP$ satisfies $C_L(n)\ge2^{n/\log\log n}$ for all sufficiently large $n$. |
| **12** | **Both hardness axes.** Score 11.5 holds, and some (possibly different) $L\in NP$ has $C_L(n)\ge2^{\varepsilon n}$ for infinitely many $n$ and some $\varepsilon\gt0$. |
| **13\*** | **Strong eventual exponential circuit hypothesis.** For some $L\in NP$ and $\varepsilon\gt0$, $C_L(n)\ge2^{\varepsilon n}$ for all sufficiently large $n$. |

The infinitely-often exponential clause in score 12 is a separate branch:

| Branch milestone | Implied by | It implies | Incomparable with |
|---|---|---|---|
| Some $L\in NP$ has $C_L(n)\ge2^{\varepsilon n}$ infinitely often for some $\varepsilon\gt0$. | Scores 12 and 13 | Score 6 | Scores 7 through 11.5 |

## Effort and skip annotation

The elicitation area includes unrestricted Boolean-circuit lower bounds,
nonuniform complexity, lower-bound barriers, and transfers from restricted
models only when a route to $B_2$ is explicit.  All values below are
**[subjective]**.  The provisional score-`10` placement is a direct
comparison to the development guide's BB(6)/Schanuel/general-Vojta anchor,
not to the fame of $P$ versus $NP$.  The star marks the terminal statement as
borderline: roughly 80%
likely to be provable in ZFC or future widely accepted foundations.  The
central log-effort values have uncertainty of roughly `0.25--0.40`; skip
probabilities have uncertainty of at least `15--20` percentage points.

| Score | Expected $\log_{10}$ cumulative human-expert-years from the current frontier | $P(n\text{-skip})$ | Main skip mechanism |
|---:|---:|---:|---|
| 0 | -- | n/a | Current theorem; future effort starts here. |
| 0.2 | 2.22 | -- | Unbounded additive progress above the optimized `3.1` line, with no prescribed rate. |
| 0.6 | 2.36 | -- | A fixed leading-coefficient improvement on an unbounded length set. |
| 1 | 2.49 | 35% | A fixed-coefficient method may already make the coefficient unbounded. |
| 2 | 2.83 | 40% | Coefficient growth may arrive with an explicit mildly superlinear rate. |
| 3 | 3.17 | 40% | A mild rate may extend to a fixed polynomial exponent. |
| 4 | 3.51 | 35% | A polynomial method may cross the quadratic and larger fixed-power contours together. |
| 4.5 | 3.68 | -- | Quadratic checkpoint between an existential exponent and `n^{10}`. |
| 5 | 3.85 | 40% | One large fixed exponent may already exclude all polynomial-size circuits. |
| 6 | 4.19 | 45% | Noncontainment may be proved with almost-everywhere hardness. |
| 7 | 4.53 | 40% | A no-rate eventual theorem may yield an explicit quasipolynomial rate. |
| 7.5 | 4.70 | -- | Explicit mild eventual rate. |
| 8 | 4.87 | 40% | A quasipolynomial exponent may extend to some fixed stretched exponent. |
| 8.5 | 5.04 | -- | Existential stretched-exponent boundary. |
| 9 | 5.21 | 40% | Exponent amplification may cross several fixed powers together. |
| 9.5 | 5.38 | -- | Square-root exponent checkpoint. |
| 10 | 5.55 | 40% | A near-one power may follow from the same amplification framework. |
| 10.5 | 5.72 | -- | Fixed near-one exponent checkpoint. |
| 11 | 5.90 | 45% | Progress may add both a smaller sublinear loss and i.o. exponential hardness. |
| 11.5 | 6.08 | -- | Last displayed eventual subexponential contour. |
| 12 | 6.26 | 45% | Filling the remaining easy lengths may yield eventual exponential hardness. |
| 13 | 6.58 | n/a | Terminal starred endpoint. |
