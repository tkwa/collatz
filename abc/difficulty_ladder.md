# A Difficulty Ladder for abc and Vojta

The notation $A(q)$ and $V_{d,r}$ is defined in the
[folder README](README.md).  Exact reductions and effectivity caveats are in
[`effectivity_and_routes.md`](effectivity_and_routes.md).

## Milestones

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.** $\log c\ll R^{1/3}(\log R)^3$ (Stewart--Yu, 2001). |
| 0.3 | **The Weakest abc-like Conjecture.** There is a fixed $\delta\gt0$ with $\log c\ll R^{1/3-\delta}$ for every coprime triple. |
| **1** | **Subpower radical bound.** For every $\varepsilon\gt0$, $\log c\ll_\varepsilon R^\varepsilon$. |
| **2** | **Polylogarithmic bound.** $\log c\ll(\log R)^M$ for some fixed finite $M$. |
| 2.5 | **Weak polynomial abc.** $A(q)$ holds for some fixed finite $q\gt1$. |
| **3** | **Quadratic abc bound.** $A(2)$ holds. |
| **4** | **The abc conjecture over $\mathbb Q$.** For every $\varepsilon\gt0$, $c\le K(\varepsilon)R^{1+\varepsilon}$. |
| **5** | $V_{2,1}$: truncated Vojta for rational points on all curves and surfaces. |
| **6** | $V_{2,2}$ **or** $V_{3,1}$. |
| **7** | $V_{2,4}$ **or** $V_{4,1}$. |
| **8** | $V_{2,\infty}$ **or** $V_{\infty,1}$. |
| **9** | $V_{3,\infty}$ **or** $V_{\infty,2}$. |
| **10** | **General Vojta:** $V_{\infty,\infty}$. |

## Effort and skip estimates

The elicitation area $A_{AV}$ includes radical and height inequalities,
Diophantine approximation, rational and integral points, and reusable parts of
the Nevanlinna--Vojta dictionary.  Calibration and skip semantics follow the
[development guide](https://docs.google.com/document/d/1zy2BjsC8qZkjdfG57MtEFuKxjmN6TaZq8CFxeidI_Xw/edit?tab=t.0).

| Score | Expected $\log_{10}$ cumulative human-expert-years from the current frontier | $P(n\text{-skip})$ | Main skip mechanism |
|---:|---:|---:|---|
| 0 | -- | -- | -- |
| 0.3 | 2.62 | -- | -- |
| 1 | 3.18 | 30% | A new height estimate may enter the polylogarithmic regime directly. |
| 2 | 3.52 | 35% | Breaking the exponential loss may yield a quadratic bound rather than stop at an arbitrary exponent. |
| 2.5 | 3.75 | -- | -- |
| 3 | 3.93 | 35% | A near-linear method may not stop at exponent two before proving abc. |
| 4 | 4.08 | 25% | A geometric proof of abc may extend to rational points on surfaces. |
| 5 | 4.41 | 20% | A Vojta framework may increase dimension or point degree in the same proof. |
| 6 | 4.70 | 40% | One framework may pass several finite dimension or degree cutoffs at once. |
| 7 | 4.83 | 35% | A uniform argument may remove the finite cutoff on one lattice axis. |
| 8 | 4.96 | 35% | Uniformity in dimension or degree may arrive in a package. |
| 9 | 5.22 | 30% | The last bounded dimension or degree restriction may not be load-bearing. |
| 10 | 5.47 | n/a | The ladder has no score-`11` contour. |
