# A Minimal Universal Strict-Limsup Conjecture

For a fixed starting value, geometric progressions usually behave randomly
modulo one. The difficulty is retaining a statement for **every** positive
real starting value while making the conclusion only barely stronger than
what is already known.

## Conjecture

There exists a real number \(\beta>1\) such that

```math
\forall x\in\mathbb R_{>0}:\qquad
\limsup_{n\to\infty}\{x\beta^n\}>\frac12.
```

Equivalently,

```math
\exists\beta>1\quad\forall x>0\quad\exists\varepsilon>0
\quad\forall m\ge0\quad\exists n\ge m:\qquad
\{x\beta^n\}\ge\frac12+\varepsilon.
```

The margin \(\varepsilon\) may depend on \(x\). The conjecture asks for no
uniform margin, no named base, and no algebraicity or irrationality condition
on \(\beta\).

## Why isn't this conjecture weaker?

Each natural weakening crosses into known mathematics.

### The non-strict half bound is already known

If `>` is replaced by `>=`, the result holds with the explicit algebraic
irrational base \(\beta=\sqrt2\):

```math
\forall x>0:\qquad
\limsup_{n\to\infty}\{x(\sqrt2)^n\}\ge\frac12.
```

Indeed, split the orbit into its even and odd terms:

```math
\{x(\sqrt2)^{2k}\}=\{x2^k\},
\qquad
\{x(\sqrt2)^{2k+1}\}=\{x\sqrt2\,2^k\}.
```

For every non-dyadic real \(y\), shifting its binary expansion shows that
\(\{y2^k\}>1/2\) infinitely often. If \(x\) is non-dyadic, use the even
subsequence. If \(x\) is dyadic, then \(x\sqrt2\) is irrational and hence
non-dyadic, so use the odd subsequence.

This argument even gives strict inequalities infinitely often. What it does
**not** give is a fixed positive margin for a given orbit: those values could
approach \(1/2\) from above. That is why the conjecture uses a strict
limsup rather than merely asking for infinitely many terms greater than
\(1/2\).

### One fixed starting value is covered by metric theory

Koksma proved that, for every fixed \(x>0\), the sequence
\(\{x\beta^n\}\) is uniformly distributed modulo one for almost every real
\(\beta>1\). Consequently, for each fixed \(x\), almost every base satisfies a
conclusion vastly stronger than the conjecture.

The same is true simultaneously for any prescribed **countable** collection
of starting values: intersect the corresponding full-measure sets of bases.
This still does not give a single base that works for the uncountable set of
all \(x>0\). The forbidden quantifier swap is

```math
\forall x\;\text{for almost every }\beta
\quad\not\Longrightarrow\quad
\text{for almost every }\beta\;\forall x.
```

### Almost every starting value is covered for every fixed base

Koksma also proved that, for every fixed \(\beta>1\), the sequence
\(\{x\beta^n\}\) is uniformly distributed modulo one for almost every
\(x>0\). Thus replacing “every \(x\)” by “almost every \(x\)” makes the
conclusion known for every base, not merely for one base.

### Infinitely many limit points is already known in broad algebraic cases

Pisot's criterion says that for algebraic \(\beta>1\), the sequence
\(\{x\beta^n\}\) has only finitely many limit points exactly in the exceptional
case where \(\beta\) is Pisot and \(x\in\mathbb Q(\beta)\). In particular, a
non-Pisot algebraic base gives infinitely many limit points for every \(x>0\).

That universal theorem does not locate those limit points relative to
\(1/2\), much less put one a positive distance above \(1/2\).

### Why require \(\beta>1\)?

For \(0<\beta<1\), choose \(0<x<1/2\); then \(x\beta^n\to0\) without ever
reaching the upper half. For \(\beta=1\), the fractional part is constant.
Thus growth of the geometric progression is essential.

## Why this remains extremely weak

The base is chosen existentially from **all** real numbers greater than one.
It may be rational, algebraic irrational, or transcendental. The conjecture
does not ask us to identify it. For each starting value, it asks only that the
orbit have some possibly tiny, orbit-dependent recurrent margin above one
fixed midpoint.

It does not ask for density, equidistribution, a common margin, a frequency of
visits, or visits to any other interval. Random behavior would give limsup
equal to one, so the conjectured conclusion is qualitatively much weaker than
the heuristic prediction.

## Stronger structured variants

Once the unrestricted conjecture is settled, the next natural version is to
ask that the witnessing base be algebraic irrational:

```math
\exists\beta\in\overline{\mathbb Q}\setminus\mathbb Q,
\quad \beta>1,
\quad\forall x>0:\qquad
\limsup_{n\to\infty}\{x\beta^n\}>\frac12.
```

One could then restrict further to bases outside the Pisot and Salem classes,
or nominate a particular base. Those are stronger problems, not part of the
headline conjecture.

## How little is known for fixed explicit bases

### The candidate \(\beta=\sqrt2\)

The elementary binary argument proves the exact lower bound \(1/2\), but the
strict-limsup improvement appears to be open. Already for \(x=1\), it would
say

```math
\limsup_{k\to\infty}\{2^k\sqrt2\}>\frac12.
```

In binary language, this asks for a bound \(J\) such that infinitely many `1`
digits in \(\sqrt2\) are followed by another `1` within the next \(J\) places.
Irrationality supplies infinitely many `1` digits but gives no bound on their
gaps. Asking specifically for the block `11` infinitely often is a stronger
famous-looking special case, and it too appears open.

### The neighboring rational base \(3/2\)

Flatto, Lagarias, and Pollington proved that every orbit has oscillation at
least \(1/3\):

```math
\limsup_n\left\{x\left(\frac32\right)^n\right\}
-\liminf_n\left\{x\left(\frac32\right)^n\right\}
\ge\frac13.
```

This does not force the limsup above \(1/2\). Mahler's original nonexistence
conjecture for \(Z_{3/2}\)-numbers would force the non-strict half bound, but
not automatically a positive orbit-dependent margin above it.

### Algebraic equidistribution

Although \(\{\beta^n\}\) is uniformly distributed for almost every real
\(\beta>1\), no explicit algebraic irrational base is known for which this has
been proved. Salem powers are explicit and dense modulo one, but not uniformly
distributed. These much stronger questions help explain why even the strict
universal limsup boundary is delicate.

## Status and references

The conjecture above is proposed as the weakest natural open statement just
beyond the elementary \(\sqrt2\) half-bound. We are not aware of a published
base for which the strict universal limsup inequality has been proved. The
distinction between \(\ge1/2\) and \(>1/2\) is therefore essential, not
typographical.

- J. F. Koksma,
  “Ein mengentheoretischer Satz über Gleichverteilung modulo Eins,”
  *Compositio Mathematica* **2** (1935), 250–258.
- Artūras Dubickas,
  [“Arithmetical properties of powers of algebraic numbers”](https://doi.org/10.1112/S0024609305017728),
  *Bulletin of the London Mathematical Society* **38** (2006), 70–80.
- Hajime Kaneko,
  [“On the fractional parts of powers of algebraic numbers”](https://www.kurims.kyoto-u.ac.jp/~kenkyubu/bessatsu/open/B34/pdf/B34_009.pdf),
  *RIMS Kôkyûroku Bessatsu* **B34** (2012), 127–136.
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
- Shigeki Akiyama and Yoshio Tanigawa,
  [“Salem numbers and uniform distribution modulo 1”](http://math.tsukuba.ac.jp/~akiyama/papers/Salem8.pdf),
  *Publications Mathematicae Debrecen* **64** (2004), 329–341.
