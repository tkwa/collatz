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
| **1** | **Unbounded linear coefficient.** Some $L\in NP$ satisfies $\limsup_{n\to\infty}C_L(n)/n=\infty$. |
| **2** | **Fixed polynomial gain, i.o.** For some $L\in NP$ and $\delta\gt0$, $C_L(n)\ge n^{1+\delta}$ for infinitely many $n$. |
| **3** | **Quadratic lower bound, i.o.** Some $L\in NP$ satisfies $C_L(n)\ge n^2$ for infinitely many $n$. |
| **4** | **Nonuniform separation.** $NP\nsubseteq P/poly$. |
| **5** | **Eventual mild superpolynomial bound.** Some $L\in NP$ satisfies $C_L(n)\ge n^{\log\log n}$ for all sufficiently large $n$. |
| **6** | **Eventual quasipolynomial-exponent bound.** Some $L\in NP$ satisfies $C_L(n)\ge2^{(\log n)^2}$ for all sufficiently large $n$. |
| **7** | **Eventual stretched-exponential bound.** Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{1/10}}$ for all sufficiently large $n$. |
| **8** | Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{1/4}}$ for all sufficiently large $n$. |
| **9** | Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{1/2}}$ for all sufficiently large $n$. |
| **10** | Some $L\in NP$ satisfies $C_L(n)\ge2^{n^{3/4}}$ for all sufficiently large $n$. |
| **11** | **Near-exponential bound.** Some $L\in NP$ satisfies $C_L(n)\ge2^{n/\log n}$ for all sufficiently large $n$. |
| **12\*** | **Strong exponential circuit hypothesis.** For some $L\in NP$ and $\varepsilon\gt0$, $C_L(n)\ge2^{\varepsilon n}$ for all sufficiently large $n$. |

## Effort and skip annotation

The elicitation area includes unrestricted Boolean-circuit lower bounds,
nonuniform complexity, lower-bound barriers, and transfers from restricted
models only when a route to $B_2$ is explicit.  All values below are
**[subjective]**.  The score-`10` placement is calibrated to the development
guide's BB(6)/Schanuel/general-Vojta anchor, not to the fame of $P$ versus
$NP$.  The star marks the terminal statement as borderline: roughly 80%
likely to be provable in ZFC or future widely accepted foundations.

| Score | Expected $\log_{10}$ cumulative human-expert-years from the current frontier | $P(n\text{-skip})$ | Main skip mechanism |
|---:|---:|---:|---|
| 0 | -- | n/a | Current theorem; future effort starts here. |
| 0.2 | 2.22 | -- | Unbounded additive progress above the optimized `3.1` line, with no prescribed rate. |
| 0.6 | 2.55 | -- | A fixed leading-coefficient improvement on an unbounded length set. |
| 1 | 3.02 | 40% | A new method may yield a polynomial rather than merely unbounded linear gain. |
| 2 | 3.39 | 40% | A polynomial lower-bound technique may not stop below exponent two. |
| 3 | 3.70 | 45% | A proof at one polynomial exponent may separate $NP$ from all polynomial-size circuits. |
| 4 | 4.05 | 40% | A noncontainment proof may carry an explicit eventual growth rate. |
| 5 | 4.38 | 40% | Mild eventual hardness may arrive quasipolynomially. |
| 6 | 4.68 | 45% | A hardness-amplification route may jump into a stretched exponential. |
| 7 | 4.97 | 45% | Exponent amplification may cross several fixed powers together. |
| 8 | 5.18 | 45% | The same amplification framework may yield square-root exponent directly. |
| 9 | 5.36 | 40% | A subexponential lower bound may come with a substantially larger exponent. |
| 10 | 5.55 | 40% | Near-exponential hardness may follow from the same structural theorem. |
| 11 | 5.82 | 45% | Removing the last sublinear exponent loss may yield a fixed linear exponent. |
| 12 | 6.12 | n/a | Terminal starred endpoint. |
