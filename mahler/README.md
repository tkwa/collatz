# A Minimal Universal Escape Conjecture for Every Subquadratic Rational Base

Choose **any** pair of coprime integers $p,q$ satisfying

```math
1\lt q\lt p\lt q^2.
```

The choice of base $p/q$ is arbitrary within this range. The conjecture is
not asking whether one favorable pair $p,q$ exists; it makes the assertion
for every admissible pair.

## Conjecture

For every such choice of $p,q$, every positive real starting value eventually
escapes the interval $[0,1/q)$:

```math
\forall x\in\mathbb R_{>0}\quad
\exists n\in\mathbb N_0:\qquad
\left\{x\left(\frac pq\right)^n\right\}\ge\frac1q.
```

The quantifiers are universal in $p$, $q$, and $x$, and existential only in
$n$, subject to the displayed conditions on $p$ and $q$.
Equivalently, no coprime rational base with $1<q<p<q^2$ has any
$Z_{p/q}$-numbers. Applying the conjecture to each tail $x(p/q)^m$ would show
that the sequence escapes $[0,1/q)$ infinitely often, so the one-hit and
infinitely-many-hits versions are equivalent.

## Why this is a minimal universal statement

The conjecture asks only for one unavoidable visit to a fixed region. It does
not assert density, equidistribution, normality, or even visits to every
subinterval of $[0,1]$.

The parameter range is essentially maximal. For $p>q^2$, infinitely many
$Z_{p/q}$-numbers are known to exist. The boundary $p=q^2$ cannot occur under
$\gcd(p,q)=1$ with $q>1$.

The original case $(p,q)=(3,2)$ is Mahler's 1968 $Z$-number problem and
remains open.

## 2026 reference

This statement appears as Conjecture 1.4 in:

Mélodie Andrieu, Shalom Eliahou, and Léo Vivion,
[“A Normality Conjecture on Rational Base Number Systems”](https://arxiv.org/abs/2510.11723v2),
arXiv:2510.11723v2 [math.NT], 2026.

Their conjectured normality of all minimal rational-base words is much
stronger and would imply the escape statement above. They also explain that
Dubickas and Mossinghoff had previously conjectured nonexistence in the
narrower range $1<q<p<q(q-1)$.
