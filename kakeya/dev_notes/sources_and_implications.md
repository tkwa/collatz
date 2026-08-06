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
- **[proved]** The corrected 2025 revision of Katz and Zahl proves in
  $\mathbb R^4$ a maximal estimate at

  ```math
  3+\frac{2195737-13925\sqrt{17665}}{6959096}\gt3.049
  ```

  and the still-best located Hausdorff bound
  $h_0=3+(\sqrt{17665}-97)/600\gt3.059$.  The arXiv abstract and Theorem 2
  explicitly separate these exponents; earlier rendered versions are stale.
  See [Katz--Zahl, Theorem
  2](https://arxiv.org/html/1902.00989v3#Thmthm2).
- **[proved]** Borges, Chan, Chen, Liu, Xi, and Zhan subsequently improve the
  four-dimensional maximal exponent to
  $m_0=(159+\sqrt{145})/56\gt3.054$.  Their introduction retains the
  Katz--Zahl `3.059` Hausdorff result as the geometric record.  See [Theorem
  1.2](https://arxiv.org/abs/2511.22824).
- **[proved/current status]** Choudhuri proves that every sticky Kakeya set in
  $\mathbb R^4$ has Hausdorff dimension at least $13/4$, and states that the
  sticky Kakeya conjecture remains open in higher dimensions.  See
  [Choudhuri, Theorem 1.2](https://arxiv.org/abs/2410.23579v1).
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
- **[proved]** Fernández-Delgado and de la Salle construct, for every finite
  $d$, a Kakeya set $E\subset\mathbb R^d$ with

  ```math
  |N_\delta(E)|\le C|\log\delta|^{-(d-1)}
  ```

  for every $0\lt\delta\lt1$.  This is Theorem 1.3 of their July 2026
  preprint, [*A construction of Kakeya Sets in Arbitrary
  Dimension*](https://arxiv.org/abs/2607.14824v2).  It is an obstruction to
  lossless positive-volume endpoints, not to estimates allowing the standard
  $\delta^{-\varepsilon}$ loss.

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
5. **[implication]** Consequently $H_b\Rightarrow H_a$ for $b\ge a$.
   Also $H_n(s_2)\Rightarrow H_n(s_1)$ when $s_2\ge s_1$.  These are the
   nestings used by the finite-dimensional geometric alternatives.
6. **[implication by definition]** $M_{\le b}\Rightarrow M_{\le a}$ for
   $b\ge a$, because $M_{\le d}$ is the conjunction of the endpoint maximal
   conjectures in dimensions $2,\ldots,d$.  The ladder does not rely on an
   uncited dimension-lifting assertion for maximal operators.
7. **[implication]** $M_n^{\mathrm{PWA}}\Rightarrow M_n$, because every
   direction-separated family satisfies the polynomial Wolff axioms.
8. **[implication]** For fixed $n$, a maximal estimate at a larger dimension
   implies the selected lower maximal contours by interpolation with the
   trivial $L^\infty$ multiplicity bound.  This is also the nesting used in
   the standard formulation of the maximal conjecture for every $s\le n$.
9. **[implication]** $U_4(s_2)\Rightarrow U_4(s_1)$ when $s_2\ge s_1$.
   Also $H_4(s)$ implies $U_4(s)$ because Hausdorff dimension is at most upper
   Minkowski dimension.  Thus $U_4(3.1)$ implies the pointwise strict
   upper-Minkowski alternative in the Weakest rung, since $3.1\gt h_0$.

The displayed disjunctions therefore form a scalar chain: each alternative
on a higher row implies at least one alternative immediately below it.

## Weakening audit

**[subjective]** On the unrestricted geometric coordinate, the selected
statement was weakened through uniform Hausdorff, lower-Minkowski, and
upper-Minkowski improvements to the pointwise assertion
$\overline{\dim}_{M}K\gt h_0$ for every $K$.  The gap may depend on $K$.
Passing to an existentially chosen $K$ is proved trivially by a set with
interior; passing to Assouad dimension also loses the intended frontier.
Special sticky or algebraic subclasses were excluded from this coordinate
because they do not measure unrestricted Kakeya progress.

The strongest rejected scope challenge was the pointwise assertion that every
sticky Kakeya set in $\mathbb R^4$ has Hausdorff dimension strictly greater
than $13/4$.  It is a source-certified open restricted-class improvement, not
a redundant reformulation.  It is omitted because admitting named subclasses
also introduces plany, regular, midpoint, and other incomparable axes, so
there is no canonical weakest unrestricted benchmark.

**[subjective]** The analytic alternative was weakened from
$A_3(3)$ through arbitrary fixed exponents to the existence of some finite
exponent independent of $\varepsilon$.  Allowing the exponent to depend on
$\varepsilon$ is exactly the Wang--Zahl theorem and is therefore proved.
Section 3.3 of Zahl's survey identifies preventing repeated shading-density
losses as an open direction, but the precise formulation with fixed $q$ is not
quoted there as a named conjecture.  Its open status is therefore provisional
rather than literature-certified.

The disjunction is weaker than any alternative alone and credits three
currently distinct obstructions.  A frontier-agent weakening audit used
304,720 metered tokens, tested dimension notions, uniform versus pointwise
quantifiers, restricted classes, and shading-density formulations, and found
no proof or counterexample to the displayed statement.  The upper-Minkowski
alternative and the fixed-exponent $A_3(q)$ alternative are not named
conjectures in the cited literature, so their open status remains a
source-audited frontier judgment rather than a published theorem of
non-provability.

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
and demanding a scale-independent positive lower bound is false.  The
Fernández-Delgado--de la Salle examples have
$|N_\delta(E)|\le C|\log\delta|^{-(d-1)}$ in every dimension.  Already in two
dimensions the endpoint maximal problem has an unavoidable logarithmic loss.
The authors describe their construction as conjecturally optimal and note
that Carbery's reverse Littlewood--Paley conjecture would give the optimal
ordinary maximal-operator logarithmic bound
$O(|\log\delta|^{(d-1)/d})$, hence the matching Kakeya-set lower bound.  That
sourced implication does not cover polynomial-Wolff tube families.  No
standard all-dimensional *polynomial-Wolff maximal* formulation with exact
optimal logarithmic loss and adequately audited truth confidence was located.
The construction is compatible with the terminal polynomial-Wolff statement
because every fixed power $\delta^{-\varepsilon}$ eventually dominates every
power of $|\log\delta|$.

**[subjective]** The frontier-agent endpoint phase used 127,698 additional
metered tokens after the weakening baseline; it first crossed the required
threshold at an exact 59,823-token delta, then completed its note and
verification passes.  It assigns the polynomial-Wolff endpoint an `82%` point
estimate and a `75--85%` band for being provable in ZFC, so the rung is
starred.  The dominant
risk is falsity: a nested multiscale cascade or dimension-dependent ruled
geometry might evade every bounded-complexity semialgebraic test.  Against
that risk, the axioms detect every fixed-degree algebraic concentration, rule
out the known four-dimensional quadric near-miss, and are the target of
current polynomial-partitioning methods.  No counterexample was located.

The same audit rejected the following stronger endpoints:

- exponents above $n/(n-1)$ and a scale-independent endpoint bound fail the
  standard bush tests and logarithmic obstructions;
- an exact-logarithmic polynomial-Wolff endpoint is not well normalized under
  axioms that themselves allow $\delta^{-\varepsilon}$ losses;
- adjoining the exact-logarithmic ordinary maximal conjecture was assessed at
  only `65--75%` joint plausibility; and
- adjoining all-dimensional reverse Littlewood--Paley was assessed at only
  `60--70%` and expands the elicitation area beyond incidence geometry.

The audit assigns less than `2%` subjective risk to independence or
algorithmic undecidability.  Failure in fixed dimension and at rational
exponents is approximable by finite tube configurations, and no iteration,
universality, or arithmetic encoding is known.  This is evidence, not a
metamathematical proof.

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
