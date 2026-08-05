# Effectivity, Analogues, and Adjudication

This note holds the second coordinate of the
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

The current frontier is unusual: the best bound is at $E_2$ already, because
Stewart--Yu proceeds by linear forms in logarithms, which is effective. The
price is the exponential loss that pins the exponent coordinate in the
radical-power regime.

This is the trade to watch. Baker's method is effective and weak; subspace and
Faltings-type methods are ineffective and, on adjacent problems, strong. A
route that reaches score `4.0` will most likely arrive at $E_0$, and the
transition from `5.0` to `6.0` is then a separate research problem rather than
a strengthening of the same argument. **[subjective]**

## The analogues, and why they are weak evidence

Three analogues of abc are proved. None of them is scored above `0`, and the
reason matters for anyone reading this benchmark as a capability signal.

- **Polynomial abc.** Mason--Stothers: for coprime polynomials $a+b=c$ over a
  field, $\max(\deg a,\deg b,\deg c)\le\deg\mathrm{rad}(abc)-1$. The proof is
  about a page. **[proved]**
- **The Nevanlinna analogue.** Nevanlinna's second main theorem is the
  value-distribution statement that Vojta's dictionary matches to the
  arithmetic conjecture. **[proved]**
- **Semiabelian cases of Vojta.** Faltings (1991) and Vojta (1996) prove
  Vojta's conjecture for subvarieties of abelian and then semiabelian
  varieties. **[proved]**

The pattern is the one the twin-prime folder describes for parity and the
theory folder should record generally: **the geometric or function-field
analogue falls, and the arithmetic statement does not move.** Derivatives are
available in the analogue settings and are the entire source of their
tractability; nothing in the proved analogues suggests a route across.

A system that produces further results of this shape, including new
applications of the subspace theorem to integral points on surfaces in the
Corvaja--Zannier, Levin, and Autissier style, is doing recombination inside an
existing paradigm. That is worth scoring, and the ladder scores it near `0`
to `0.8`. It should not be read as partial progress toward score `2.0`.
**[subjective]**

## Route allocation

A **[subjective]** prior over how score `2.0` or above is first reached, if it
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

> A rung at score `2.0` or above is cleared when the statement has a
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

Rungs below `2.0` are quantitative bounds and may be adjudicated by ordinary
refereeing, since no comparable dispute risk attaches to them.
