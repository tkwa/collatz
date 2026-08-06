# A Difficulty Ladder for Kakeya Problems

Notation is defined in the [folder README](README.md).  Exact statements and
implication checks are in the [source audit](sources_and_implications.md).

## Milestones

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontiers.** $H_4(h_0)$ for $h_0=3+(\sqrt{17665}-97)/600\gt3.059$ (Katz--Zahl, 2021), and the four-dimensional maximal estimate at $m_0=(159+\sqrt{145})/56\gt3.054$ (Borges--Chan--Chen--Liu--Xi--Zhan, 2025); every Kakeya set in $\mathbb R^3$ has dimension $3$ (Wang--Zahl, 2025). |
| 0.2 | **[The Weakest Kakeya Improvement](weakest_kakeya_improvement.md).** For some $\eta\gt0$, either $H_4(h_0+\eta)$ or $M_4(m_0+\eta)$ holds; alternatively, $A_3(q)$ holds for some fixed finite $q$. |
| **1** | $H_4(3.1)$ **or** $M_4(3.075)$ **or** $A_3(100)$. |
| **2** | $H_4(3.25)$ **or** $M_4(3.15)$ **or** $A_3(20)$. |
| **3** | $H_4(3.5)$ **or** $M_4(3.3)$ **or** $A_3(6)$. |
| **4** | $H_4$ **or** $M_3$. |
| **5** | $H_5$ **or** $M_{\le4}$. |
| **6** | $H_8$ **or** $M_{\le5}$. |
| **7** | $H_\infty$ **or** $M_{\le8}$. |
| **8** | $M_\infty$. |
| **9*** | $M_\infty^{\mathrm{PWA}}$: the endpoint maximal estimate in every finite dimension for every tube family satisfying the polynomial Wolff axioms. |

The asterisk marks a terminal statement whose probability of being provable
in ZFC is provisionally assessed in the guide's borderline `75--85%` band.

## Effort and skip estimates

The elicitation area includes Euclidean incidence geometry, geometric measure
theory, Kakeya maximal operators, polynomial partitioning, and the relevant
parts of Fourier analysis.  All values are subjective.

| Score | Expected $\log_{10}$ cumulative human-expert-years from the current frontier | $P(n\text{-skip})$, if applicable | Main skip mechanism |
|---:|---:|---:|---|
| 0 | -- | n/a | Proved frontier. |
| 0.2 | 2.30 | -- | Minimal strict progress on either active lower coordinate. |
| 1 | 2.78 | 35% | A new planebrush or shading-stability argument may overshoot the first displayed contour. |
| 2 | 3.13 | 40% | Structural control may yield a substantial exponent rather than stop at an arbitrary cutoff. |
| 3 | 3.48 | 40% | A method approaching full dimension or sharp density may clear the penultimate contour. |
| 4 | 3.83 | 35% | A four-dimensional geometric proof may also control multiplicity in dimension three. |
| 5 | 4.18 | 35% | Dimension-lifting or maximal methods may solve both alternatives together. |
| 6 | 4.52 | 40% | A dimension-uniform argument may cross several finite cutoffs. |
| 7 | 4.86 | 40% | Removing ambient-dimension dependence may arrive with stronger maximal control. |
| 8 | 5.18 | 35% | An all-dimensional maximal proof may already tolerate polynomial-Wolff families. |
| 9* | 5.38 | n/a | Terminal stronger class, judged below the shared score-`10` anchor. |

The endpoint is placed below score `10`, whose shared reference is the median
difficulty of `BB(6)`, Schanuel's conjecture, and general Vojta.  This is a
comparison judgment, not a normalization fitted to make Kakeya end at `9`.
