# A Minimal Universal Escape Conjecture for an Irrational Base

For almost every real base, powers behave statistically like random points
modulo one. For a particular algebraic irrational base, however, even very
weak distribution statements can be inaccessible. This suggests asking for
one algebraic irrational base whose orbits satisfy only the weakest universal
escape property.

## Conjecture

There exists an algebraic irrational number

```math
\beta\in(1,2)
```

such that every positive real starting value eventually reaches the upper
half of the unit interval:

```math
\forall x\in\mathbb R_{>0}\quad
\exists n\in\mathbb N_0:\qquad
\{x\beta^n\}\ge\frac12.
```

The quantifier order is

```math
\exists\beta\quad\forall x>0\quad\exists n\ge0.
```

In particular, the conjecture does **not** nominate a fixed base such as
\(\sqrt2\). We are free to choose whichever algebraic irrational base has the
most tractable arithmetic.

Applying the conjecture to each tail \(x\beta^m\) shows that one escape is
equivalent to infinitely many escapes. Thus the conclusion could equivalently
be written

```math
\forall x>0:\qquad
\{x\beta^n\}\ge\frac12
\quad\text{for infinitely many }n.
```

## Exceptional bases

No Pisot or Salem exclusion is built into the conjecture. Pisot numbers are
certainly exceptional: \(\|\beta^n\|\to0\), so their powers approach integers.
But that is a two-sided statement and does not by itself produce an orbit
confined to \([0,1/2)\). For example, the powers of the golden ratio approach
integers from alternating sides. Salem powers behave differently again: they
are dense but not uniformly distributed modulo one.

These special classes therefore deserve separate treatment, but “Pisot or
Salem” is not a justified exceptional class for this one-sided universal
escape question. The existential quantifier already lets a proof choose a
base outside both classes if that is useful.

## Why the conjecture is extremely weak

It asks for only one algebraic irrational base, one fixed target interval, and
one visit by each orbit. It does not ask us to identify the base, prove density
or equidistribution, obtain a frequency, or control visits to arbitrary
intervals.

A crude independence heuristic favors the statement. Up to time \(N\), an
interval of starting values is cut into on the order of \(\beta^N\) arithmetic
cylinders. Requiring all \(N\) residues to remain in the lower half should
retain roughly a \(2^{-N}\) fraction of them, leaving heuristically

```math
\left(\frac\beta2\right)^N
```

surviving cylinders. This tends to zero because \(\beta<2\). The heuristic is
not a proof: the constraints are highly correlated, an exceptional nested
chain could survive, and the statement must hold uniformly over every real
starting value.

## How little is known for fixed explicit bases

The conjecture deliberately avoids fixing \(\beta\). The following nearby
problems illustrate why.

### A single interval for \(\beta=\sqrt2\)

The base \(\sqrt2\) is neither Pisot nor Salem, so this example is already
outside the classical exceptional classes. It appears to be unknown whether

```math
\left\{(\sqrt2)^{2n+1}\right\}\ge\frac34
```

for infinitely many \(n\). Since

```math
(\sqrt2)^{2n+1}=2^n\sqrt2,
```

this merely asks whether the block `11` occurs infinitely often in the binary
expansion of \(\sqrt2\). More generally, for the binary expansion of a fixed
algebraic irrational, current transcendence methods force very little about
the recurrence of any prescribed nontrivial block. Results proving that many
repetitions occur do not imply that this particular block occurs even once
more.

### Equidistribution for one algebraic irrational base

Koksma proved that \(\{\beta^n\}\) is uniformly distributed modulo one for
almost every real \(\beta>1\). Yet no explicit algebraic irrational \(\beta>1\)
is known for which this has been proved. This is an existential statement in
the same broad setting, but it asks vastly more than one universal escape.

Salem numbers help mark the boundary: powers of a Salem number are known to be
dense modulo one, but their limiting behavior is constrained by the conjugates
and is not uniformly distributed. Thus density does not supply the missing
algebraic equidistribution example.

### The neighboring rational base \(3/2\)

Even the fixed statement

```math
\left\{\left(\frac32\right)^n\right\}\ge\frac12
\quad\text{for infinitely many }n
```

is not known. Flatto, Lagarias, and Pollington proved the universal oscillation
bound

```math
\limsup_n\left\{x\left(\frac pq\right)^n\right\}
-\liminf_n\left\{x\left(\frac pq\right)^n\right\}
\ge\frac1p,
```

but for \(p/q=3/2\) the resulting width \(1/3\) does not force a visit to the
upper half.

## Status and references

The conjecture above is intended as an open problem. We do not know a proof
for any particular algebraic irrational \(\beta\in(1,2)\), nor a theorem that
rules out every such \(\beta\). Classical exceptional classes explain some
highly nonrandom fixed-base behavior, but they do not settle this existential,
one-sided universal statement.

- Boris Adamczewski and Narad Rampersad,
  [“On patterns occurring in binary algebraic numbers”](https://doi.org/10.1090/S0002-9939-08-09319-2),
  *Proceedings of the American Mathematical Society* **136** (2008),
  3105–3109.
- Eiji Miyanohara,
  [“On the repetitions of the algebraic beta-expansions”](https://doi.org/10.1007/s40993-025-00653-7),
  *Research in Number Theory* **12** (2026).
- Leopold Flatto, Jeffrey C. Lagarias, and Andrew D. Pollington,
  [“On the range of fractional parts of x(p/q)^n”](https://doi.org/10.4064/aa-70-2-125-147),
  *Acta Arithmetica* **70** (1995), 125–147.
- Hajime Kaneko,
  [“On the fractional parts of powers of algebraic numbers”](https://www.kurims.kyoto-u.ac.jp/~kenkyubu/bessatsu/open/B34/pdf/B34_009.pdf),
  *RIMS Kôkyûroku Bessatsu* **B34** (2012), 129–136.
- Shigeki Akiyama and Yoshio Tanigawa,
  [“Salem numbers and uniform distribution modulo 1”](http://math.tsukuba.ac.jp/~akiyama/papers/Salem8.pdf),
  *Publ. Math. Debrecen* **64** (2004), 329–341.
