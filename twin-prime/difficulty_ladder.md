# A Disjunctive Difficulty Ladder for Prime Patterns

The basic $H_1$ notation and construction rationale are in the
[folder README](README.md).  Definitions of $\pi_2(X)$ and the named
conjectures, together with every implication used below, are in the
[source and implication audit](sources_and_implications.md).

## Milestones

| Score | Milestone |
|---:|---|
| **0** | **Current theorem.** $H_1\le246$. |
| 0.3 | **The Weakest open rung.** $H_1\le244$ **or** $\mathrm{EH}[1/2+\delta]$ for some fixed $0\lt\delta\lt1/2$. |
| **1** | $H_1\le50$ **or** $\mathrm{EH}[2/3]$. |
| **2** | $H_1\le12$ **or** $\mathrm{EH}[3/4]$. |
| **3** | $H_1\le6$ **or** $\mathrm{GEH}[3/4]$ **or** full EH. |
| **4** | $H_1\le4$ **or** full GEH. |
| **5** | **Twin primes.** $H_1=2$. |
| **6** | $\pi_2(X)\gg X/(\log X)^2$ for all sufficiently large $X$ **or** de Polignac's conjecture. |
| **7** | The Hardy--Littlewood asymptotic for twin primes **or** Dickson's conjecture for every fixed admissible family of distinct affine-linear forms. |
| **8** | The Hardy--Littlewood asymptotic for every fixed admissible family of distinct affine-linear forms **or** Schinzel's hypothesis H. |
| **9** | **Bateman--Horn** for every fixed admissible finite family of distinct irreducible integer polynomials with positive leading coefficients. |

## Effort and skip estimates

The [folder overview](README.md#calibration) gives the calibration source and
scope.  The elicitation area $A_{PP}$ is the dependency closure of prime
patterns and prime values of integer polynomials.  All estimates and intervals
are subjective.

| Score | Expected $\log_{10}$ cumulative human-expert-years from the current frontier (subjective 80% interval) | $P(n\text{-skip})$, if applicable | Calibration note |
|---:|---:|---:|---|
| 0 | -- | n/a | Current $H_1\le246$ theorem; the future clock starts here. |
| 0.3 | 2.55 (`1.2--4.0`) | -- | Minimal strict gap improvement or any unrestricted EH gain beyond $1/2$. |
| 1 | 3.05 (`1.6--4.6`) | 35% | A factor-five gap gain or the $2/3$ distribution level. |
| 2 | 3.42 (`1.9--5.0`) | 35% | The EH-associated `12` landmark or a stronger fixed EH exponent. |
| 3 | 3.78 (`2.1--5.5`) | 40% | The GEH-associated `6` landmark, partial GEH, or full EH. |
| 4 | 4.12 (`2.3--5.9`) | 45% | The last even gap contour before twins, or full GEH. |
| **5** | **4.45 (`2.5--6.4`)** | 40% | Twin-prime infinitude; the famous target, not a separate scale anchor. |
| 6 | 4.78 (`2.7--6.9`) | 35% | Quantitative twin depth or consecutive-gap breadth. |
| 7 | 5.13 (`2.9--7.4`) | 35% | Exact twin asymptotics or qualitative affine-family breadth. |
| 8 | 5.47 (`3.1--7.9`) | 40% | Quantitative affine breadth or qualitative polynomial breadth. |
| **9** | **5.82 (`3.3--8.4`)** | n/a | Bateman--Horn closes both selected upper branches. |
