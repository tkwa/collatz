# Sources and Implication Audit

This file separates literature results, logical reductions, heuristics, and
subjective benchmark judgments.  The audit is current through August 5, 2026.

## Primary frontier sources

- **[proved]** Wang and Zahl prove that every Kakeya set in $\mathbb R^3$
  has Minkowski and Hausdorff dimension $3$.  Their stronger tube theorem has
  a shading exponent $K$ that may depend on $\varepsilon$; they explicitly
  state that it does not resolve the three-dimensional maximal-function
  conjecture.  See [Wang--Zahl, Theorems 1.1 and
  1.2](https://arxiv.org/abs/2502.17655).
- **[proved]** Katz and Zahl prove in $\mathbb R^4$ a maximal estimate at
  dimension
  $m_0=3+(2195737-13925\sqrt{17665})/6959096\gt3.049$ and the Hausdorff bound
  $h_0=3+(\sqrt{17665}-97)/600\gt3.059$.  See [Katz--Zahl, Theorem
  2](https://arxiv.org/abs/1902.00989).
- **[proved/definition]** Zahl's 2025 survey states the set, discretized
  tube-union, shaded tube-union, and maximal conjectures separately.  It
  records that the maximal forms are equivalent, imply the shaded form, and
  hence imply the Minkowski form.  See [Zahl, Conjectures
  1.1--1.3](https://arxiv.org/abs/2512.09397).
- **[proved/definition]** The same survey defines the polynomial Wolff axioms,
  records that every direction-separated tube family satisfies them, and
  formulates the stronger polynomial-Wolff set, shaded, and maximal
  conjectures.  See [Zahl, Definition 4.1 and Conjecture
  4.2](https://arxiv.org/abs/2512.09397).
- **[proved]** Katz and Rogers prove the polynomial Wolff axioms for
  direction-separated tubes in every dimension.  See [Katz--Rogers,
  Theorem 1.1](https://arxiv.org/abs/1802.09094).
- **[current-status survey]** Guth's April 2026 survey records that the set
  conjecture is proved in dimensions two and three and remains open in every
  dimension $n\ge4$.  It also records only the implication from Stein
  restriction to full Kakeya-set dimension, not to the maximal estimate used
  above.  See [Guth, introduction](https://arxiv.org/abs/2604.03416).

## Adjacent implications

1. **[implication]** $A_3(q_1)\Rightarrow A_3(q_2)$ when
   $3\le q_1\le q_2$, because $0\lt\lambda\le1$.
2. **[implication]** $A_3(3)$ is the shaded endpoint maximal conjecture in
   $\mathbb R^3$; the survey proves equivalence with its operator and
   multiplicity formulations.
3. **[implication]** $M_n\Rightarrow H_n$.  More precisely, maximal implies
   the shaded tube-union conjecture, which implies full Hausdorff dimension.
4. **[implication]** $H_{n+1}\Rightarrow H_n$.  If $K\subset\mathbb R^n$ is
   Kakeya, then $K\times[0,1]\subset\mathbb R^{n+1}$ contains a unit segment
   in every direction after taking suitable subsegments, and
   $\dim_H(K\times[0,1])=\dim_H(K)+1$.
5. **[implication]** Consequently $H_b\Rightarrow H_a$ for $b\ge a$, and the
   finite-dimensional geometric alternatives form a chain.
6. **[implication by definition]** $M_{\le b}\Rightarrow M_{\le a}$ for
   $b\ge a$, because $M_{\le d}$ is the conjunction of the endpoint maximal
   conjectures in dimensions $2,\ldots,d$.  The ladder does not rely on an
   uncited dimension-lifting assertion for maximal operators.
7. **[implication]** $M_n^{\mathrm{PWA}}\Rightarrow M_n$, because every
   direction-separated family satisfies the polynomial Wolff axioms.

The displayed disjunctions therefore form a scalar chain: each alternative
on a higher row implies at least one alternative immediately below it.

## Weakening audit

**[subjective, work in progress]** The geometric alternative was weakened
from $H_4$ to a fixed numerical improvement, then to an existential strict
improvement over $h_0$.  Reducing the set of directions, imposing stickiness,
or replacing Hausdorff dimension by an upper box statistic was rejected
pending a clean openness theorem: nearby restricted cases are known, and an
uncertified subclass could make the statement accidentally true.

**[subjective, work in progress]** The analytic alternative was weakened from
$A_3(3)$ through arbitrary fixed exponents to the existence of some finite
exponent independent of $\varepsilon$.  Allowing the exponent to depend on
$\varepsilon$ is exactly the Wang--Zahl theorem and is therefore proved.
Section 3.3 of Zahl's survey identifies preventing repeated shading-density
losses as an open direction, but the precise formulation with fixed $q$ is not
quoted there as a named conjecture.  Its open status is therefore provisional
rather than literature-certified.

The disjunction is weaker than either alternative alone and credits the two
currently distinct obstructions.  The guide-required frontier-agent
red-team is still in progress; no token-threshold completion claim is made in
this scaffold.

## Strengthening audit

**[proved]** The all-dimensional maximal conjecture implies every lower
geometric and analytic rung.  The polynomial-Wolff maximal conjecture is a
strictly broader standard literature formulation and implies the ordinary
maximal conjecture.

**[counterexample warning]** Merely replacing polynomial Wolff axioms by
convex Wolff axioms is not an acceptable higher endpoint.  Zahl's survey gives
a ruled-quadric construction in $\mathbb R^4$ showing that the analogue of
the three-dimensional convex-Wolff theorem fails in higher dimensions.

**[counterexample warning]** Removing every $\delta^{-\varepsilon}$ allowance
is not a safe strengthening.  The two-dimensional endpoint maximal operator
has an unavoidable logarithmic loss.  A conjecture for exact optimal
polylogarithmic losses in all dimensions would be stronger, but no standard
all-dimensional formulation with adequately audited truth confidence was
located.

**[subjective]** The polynomial-Wolff endpoint is provisionally assigned
`75--85%` confidence of being provable in ZFC and is therefore starred.  Its
main risk is mathematical falsity from an unrecognized higher-dimensional
near-miss, not known algorithmic undecidability.  The guide-required
falsity/independence red-team remains in progress.

## Deliberate non-implications

- Fourier restriction and local smoothing are not used as rungs.  The cited
  surveys state that restriction implies the full set-dimension conclusion,
  but do not state that it implies the multiplicity-sensitive maximal
  estimate needed above.  Restriction would therefore add no stronger
  alternative above $H_\infty$ on the audited implications.
- Full Hausdorff dimension does not by itself supply a maximal-function
  estimate.  Wang--Zahl's three-dimensional result is the concrete warning.
- A tube-union estimate without shadings does not automatically control high
  multiplicity or imply the endpoint maximal inequality.
