# Effectivity, Analogues, and Adjudication

This note holds the orthogonal effectivity coordinate of the
[abc ladder](difficulty_ladder.md), the reasons its geometric analogues are
weak evidence about its arithmetic rungs, and the rule for deciding when a
rung has been cleared.

## The effectivity coordinate

Two structurally different walls stand in front of abc, and a rung can clear
one without touching the other.

| Level | Effectivity state |
|---:|---|
| $E_0$ | Ineffective. The argument produces a constant it cannot name: Roth, the Schmidt subspace theorem, and Faltings-type arguments on abelian varieties are of this kind. |
| $E_1$ | Effective in principle, with a constant that is astronomically large or not written down. |
| $E_2$ | Explicit computable constant of practical size. |
| $E_3$ | Explicit constant together with a verified numerical range, so the bound is usable for Diophantine computations. |

The Stewart--Yu bound is effective in principle, so its documented placement
here is $E_1$.  A placement at $E_2$ would require an explicit constant of
practical size, which is not established in this folder.  The price of the
linear-forms-in-logarithms route is the exponential loss that pins the
exponent coordinate in the radical-power regime.

This is the trade to watch. Baker's method is effective and weak; subspace and
Faltings-type methods are ineffective and, on adjacent problems, strong. A
route that reaches the polynomial or abc rungs may arrive at $E_0$. Making
the same bound effective is then a separate research problem, not a rung that
general Vojta automatically supplies. **[subjective]**

## The analogues, and why they are weak evidence

Three analogues of abc are proved. None establishes an arithmetic rung beyond the current frontier, and the
reason matters for anyone reading this benchmark as a capability signal.

- **Polynomial abc.** Mason--Stothers: for nonzero coprime polynomials
  $a+b=c$ over a field of characteristic zero, not all constant,
  $\max(\deg a,\deg b,\deg c)\le\deg\mathrm{rad}(abc)-1$. The proof is about a
  page. **[proved]**
- **The Nevanlinna analogue.** Nevanlinna's second main theorem is the
  value-distribution statement that Vojta's dictionary matches to the
  arithmetic conjecture. **[proved]**
- **Semiabelian cases of Vojta.** Faltings (1991) and Vojta (1996) prove
  Vojta's conjecture for subvarieties of abelian and then semiabelian
  varieties. **[proved]**

The important pattern here is that **the geometric or function-field analogue
falls, and the arithmetic statement does not move.** Differentiation is
central to Mason--Stothers and the function-field or Nevanlinna side; the
semiabelian cases instead exploit special algebraic-geometric structure.
Nothing in these proved analogues currently suggests a route across.
**[subjective]**

A system that produces further results of this shape, including new
applications of the subspace theorem to integral points on surfaces in the
Corvaja--Zannier, Levin, and Autissier style, is doing recombination inside an
existing paradigm. That may be worth recording near the baseline, but it does
not by itself establish a positive scalar rung.
**[subjective]**

## Implications used by the ladder

The scalar order uses the following proved reductions, all
**[implication]**:

- Truncated Vojta on $\mathbb P^1$ relative to
  $\lbrace0,1,\infty\rbrace$, for rational points and truncation level one,
  gives abc.  Every displayed $V_{d,r}$ includes this specialization.
- Increasing either the dimension bound $d$ or the point-degree bound $r$
  strengthens $V_{d,r}$.  This gives every implication between adjacent
  disjunctive Vojta rows.
- Abc implies $A(2)$ by taking $\varepsilon=1$, and $A(2)$ is a particular
  case of $A(q)$ for some $q\gt1$.
- If $A(q)$ holds, then $\log c\le q\log R+O(1)$, which is a
  polylogarithmic bound.  A fixed polylogarithmic bound is subpower in $R$,
  and a subpower bound gives a fixed improvement over the Stewart--Yu
  exponent.
- Any fixed exponent improvement implies the current Stewart--Yu-order bound
  for all sufficiently large $R$.

The weak polynomial statement $A(q)$ for an arbitrary fixed $q\gt1$ implies
asymptotic Fermat, but it is not assigned a general Hall-type consequence.
In the primitive Hall setup $y^2+k=x^3$ with $\gcd(x,y)=1$ and $k\ne0$
(placing $\lvert k\rvert$ on the positive side according to its sign), the
direct radical estimate from $A(q)$ gives only
$\lvert k\rvert\gg x^{3/q-5/2}$ up to constants.  This is a positive-power
Hall bound only when $q\lt6/5$.

Full abc has additional standard consequences: Mordell (Elkies), asymptotic
Fermat, the modified Szpiro conjecture (Oesterle), Hall-type lower bounds, and
infinitely many non-Wieferich primes (Silverman).  Effective abc gives
effective Mordell.

## Route allocation

A **[subjective]** prior over how the polylogarithmic rung or a stronger one is first reached, if it
is reached by human research:

| Route | Weight |
|---|---:|
| Breaking the exponential loss in linear forms in logarithms directly | 0.25 |
| A modular or Frey-curve route strengthening the Szpiro side | 0.20 |
| A subspace-theorem or Faltings-type route, arriving ineffective | 0.25 |
| A new framework not currently visible | 0.30 |

The third row is the reason the effectivity coordinate exists. The fourth row
is large because the exponent has not moved in twenty-five years, which is
evidence that the visible routes are exhausted rather than slow.

## Adjudication

The benchmark records abc as **open**.

Mochizuki's inter-universal Teichmüller theory papers, which claim a proof of
abc, were published in *PRIMS* in 2021. The claim has not been accepted by a
substantial part of the arithmetic-geometry community; the dispute concerns
Corollary 3.12 of the third paper, and the objection raised by Scholze and
Stix has not been resolved to the satisfaction of both sides. Alternative
frameworks circulated since 2024, including Joshi's, are themselves contested.
This document takes no position on the mathematics and records only that no
consensus proof exists.

For a continuously scored benchmark, a rung whose status depends on an
unresolved community dispute is unusable. The rule adopted here is therefore
independent of the dispute:

> The polylogarithmic or any stronger rung is cleared when the statement has a
> machine-checkable formal proof, in Lean or an equivalent system, that
> typechecks against a statement of the rung agreed in advance.

This has three properties worth stating.

1. It is decidable, and it is decidable by running a program rather than by
   polling a field.
2. It is the natural standard for a benchmark aimed at automated provers,
   which will be able to meet it.
3. It separates two capabilities that a benchmark should not merge: producing
   an argument, and producing an argument that survives mechanical checking.
   A system that clears a rung informally but cannot formalize it should be
   scored differently from one that can, and the gap between those two events
   is itself a measurement worth recording.

The weaker quantitative rungs may be adjudicated by ordinary
refereeing, since no comparable dispute risk attaches to them.
