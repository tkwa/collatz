# Weak Escape Problems for Powers

This folder contains two minimal escape problems:

- [an algebraic-multiplier conjecture for powers of $e$](algebraic_multiplier_for_powers_of_e.md),
  which asks whether some positive algebraic $x$ makes $\{xe^n\}$ fail to
  converge to zero; and
- the rational-base conjecture below, in which one subquadratic rational base
  may be chosen and every positive real starting value must escape its Mahler
  interval.

## Rational-base conjecture

We ask whether at least one rational base can be chosen for which every
positive real starting value must escape. The base is part of the existential
claim; it is not fixed in advance.

### Conjecture

There exist coprime integers $p,q$ satisfying

```math
1\lt q\lt p\lt q^2.
```

such that every positive real starting value eventually escapes the interval
$[0,1/q)$:

```math
\forall x\in\mathbb R_{>0}\quad
\exists n\in\mathbb N_0:\qquad
\left\{x\left(\frac pq\right)^n\right\}\ge\frac1q.
```

The quantifier order is existential in $p$ and $q$, universal in $x$, and
existential in $n$: $\exists p\,\exists q\,\forall x\,\exists n$.
Equivalently, at least one coprime rational base in the subquadratic range has
no $Z_{p/q}$-numbers. Applying the conjecture to each tail $x(p/q)^m$ would
show that the sequence escapes $[0,1/q)$ infinitely often, so the one-hit and
infinitely-many-hits versions are equivalent.

### Why this is a minimal universal statement

The conjecture asks only for one base for which one visit to a fixed region is
unavoidable. It does not identify the base, assert density, equidistribution,
normality, or even require visits to every subinterval of $[0,1]$.

The restriction $p<q^2$ keeps the chosen base on the only side of the known
phase transition where universal escape is plausible. For $p>q^2$, infinitely
many $Z_{p/q}$-numbers are known to exist. The boundary $p=q^2$ cannot occur
under $\gcd(p,q)=1$ with $q>1$.

The original case $(p,q)=(3,2)$ is Mahler's 1968 $Z$-number problem and
remains open. Mahler's conjecture would imply this one by supplying a specific
working pair.

### 2026 reference

The stronger assertion that **every** coprime pair in the subquadratic range
works appears as Conjecture 1.4 in:

Mélodie Andrieu, Shalom Eliahou, and Léo Vivion,
[“A Normality Conjecture on Rational Base Number Systems”](https://arxiv.org/abs/2510.11723v2),
arXiv:2510.11723v2 [math.NT], 2026.

Thus their Conjecture 1.4 implies the weaker existential-base conjecture stated
here. Their conjectured normality of all minimal rational-base words is
stronger still. They also explain that Dubickas and Mossinghoff had previously
conjectured nonexistence throughout the narrower range
$1<q<p<q(q-1)$.
