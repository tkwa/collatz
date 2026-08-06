# An Algebraic-Multiplier Conjecture for Powers of $e$

Metric theory says that $\{xe^n\}$ is uniformly distributed modulo one for
almost every real starting value $x$. Effective constructions can even produce
individual computable starting values with this property. The references
collected here do not supply an algebraic starting value with comparable
behavior.

## Conjecture

There exists a positive real algebraic number $x$ such that the fractional
parts of $xe^n$ do not converge to zero:

```math
\exists x\in\overline{\mathbb Q}\cap\mathbb R_{\gt0}:\qquad
\limsup_{n\to\infty}\{xe^n\}\gt0.
```

Equivalently,

```math
\exists x\in\overline{\mathbb Q}\cap\mathbb R_{\gt0}
\quad\exists\varepsilon\gt0
\quad\forall N\ge1
\quad\exists n\ge N:\qquad
\{xe^n\}\ge\varepsilon.
```

The conjecture asks only for one algebraic multiplier and one recurrent
positive separation from the integers. It does not ask us to identify $x$, to
compute $\varepsilon$, or to prove two limit points, density, a visit
frequency, or uniform distribution.

## Status and open-status caveat

This is a candidate problem whose open status still needs a dedicated source
audit. Kaneko noted in 2012 that even the specific case $x=1$ was unresolved:
one could not disprove $\{e^n\}\to0$. None of the references below establishes
nonconvergence for a positive algebraic multiplier $x$.

The distinction matters because failure to settle the particular case $x=1$
does not by itself prove that the existential algebraic statement is open; a
different algebraic multiplier could conceivably be tractable. The open-status
assessment here is therefore unverified rather than inferred from the
unresolved $x=1$ case. The headline is a precise candidate conjecture, but this
note does not claim that the literature has certified its novelty or openness.

## Why this formulation is weaker than $x=1$

The conjecture permits any positive algebraic multiplier. Since $1$ is
algebraic, the concrete conjecture

```math
\limsup_{n\to\infty}\{e^n\}\gt0
```

would imply the headline statement, but not conversely. The algebraic witness
might be irrational and might reveal nothing about the unmultiplied powers of
$e$.

## Where the restricted quantifier sits

There is a natural chain of admissible starting values:

```math
\mathbb N_{\gt0}
\subset
\mathbb Q_{\gt0}
\subset
\left(\overline{\mathbb Q}\cap\mathbb R_{\gt0}\right)
\subset
\{\text{positive computable reals}\}.
```

For an existential quantifier, enlarging the admissible class weakens the
statement.

### Positive integers give no weakening

The statement

```math
\exists m\in\mathbb N_{\gt0}:\qquad
\limsup_{n\to\infty}\{me^n\}\gt0
```

is equivalent to the case $x=1$. Indeed, if $\{e^n\}\to0$, then for every
fixed positive integer $m$ we eventually have

```math
\{me^n\}=m\{e^n\}\longrightarrow0.
```

Conversely, if $\{e^n\}\not\to0$, the witness $m=1$ works.

### Positive rationals are not covered by the integer argument

Allowing

```math
\exists x\in\mathbb Q_{\gt0}
```

is formally weaker than fixing $x=1$, but the integer-scaling equivalence no
longer applies. If $\{e^n\}\to0$, a denominator can still detect the eventual
residue classes of the nearby integers. For example, $\{e^n/2\}$ need not tend
to zero unless those integers are eventually even. We do not know whether the
rational version is genuinely easier to prove. The references cited here do
not supply a rational witness, while the algebraic formulation enlarges the
admissible arithmetic class further.

### Allowing computable reals makes the statement known

Kulikova gave an effective construction of a starting value $x$ for which
$\{x\beta^n\}$ is uniformly distributed modulo one for a specified
noninteger base $\beta\gt1$. Since $e$ is computable, this supplies a computable
$x$ such that $\{xe^n\}$ is uniformly distributed and therefore has every
point of $[0,1]$ as a limit point.

The construction establishes computability, but the cited result does not
identify its witness as algebraic or transcendental. In particular, it does
not supply a proved algebraic witness. Thus allowing arbitrary computable
reals crosses into known territory, while the algebraic subclass remains the
candidate boundary considered here.

## Red-team checks

Several tempting short arguments do not settle the conjecture.

- **Termwise transcendence is insufficient.** Lindemann--Weierstrass implies
  that $xe^n$ is transcendental, hence nonintegral, for every nonzero algebraic
  $x$. A sequence of nonintegers may nevertheless approach integers.
- **Integer rescaling gives no new witness.** As shown above, allowing positive
  integer multipliers is equivalent to the unresolved case $x=1$.
- **Rational denominators do not force a contradiction.** If
  $e^n=k_n+o(1)$ with integers $k_n$, simultaneous convergence for fixed
  rational multipliers would impose eventual divisibility conditions on
  $k_n$. Those conditions may accumulate arbitrarily slowly and are not
  visibly incompatible with $k_n\sim e^n$.
- **Simultaneous algebraic approximation is too weak.** If both
  $\{e^n\}\to0$ and $\{xe^n\}\to0$, then the corresponding nearby integers
  give rational approximations to $x$. The resulting error need only be
  $o(1/q)$ for denominators $q\asymp e^n$, far weaker than the approximation
  quality that standard algebraic irrationality bounds forbid.

These checks rule out the most immediate elementary proofs; they do not prove
that no deeper theorem already resolves the existential statement.

## Why not quantify over a candidate limit?

The formal statement

```math
\exists\xi\in[0,1]:\qquad \{e^n\}\not\longrightarrow\xi
```

is trivial: a sequence cannot converge to both $0$ and $1/2$, so at least one
of those two values is not its limit. Requirements such as “choose $\xi$
independently” or “choose a familiar $\xi$” describe a proof-search challenge,
not a mathematical property of $\xi$.

Fixing the candidate limit at zero and instead restricting the existential
quantifier over $x$ produces a genuine formal conjecture.

## Why the transcendental base is difficult

For algebraic bases, a minimal polynomial supplies an integer recurrence that
constrains the fractional parts. Pisot's theorem and later work of Dubickas use
this structure to characterize the exceptional algebraic cases with only
finitely many limit points.

The base $e$ has no minimal polynomial and hence no analogous finite
recurrence. Its transcendence proves that $xe^n$ is transcendental, and thus
nonintegral, whenever $x$ is nonzero algebraic. But termwise nonintegrality is
compatible with $\{xe^n\}\to0$ and does not prove the conjecture.

## Stronger questions deliberately omitted

Stronger problems include producing a particular algebraic witness, proving
the statement for every positive algebraic $x$, obtaining two or infinitely
many limit points, and proving density or uniform distribution. None is part
of the headline conjecture.

## References

- J. F. Koksma,
  “Ein mengentheoretischer Satz über Gleichverteilung modulo Eins,”
  *Compositio Mathematica* **2** (1935), 250–258.
- M. F. Kulikova,
  “A construction problem concerned with the distribution of the fractional
  parts of an exponential function,” *Doklady Akademii Nauk SSSR* **143**
  (1962), 522–524; English translation in *Soviet Mathematics Doklady* **3**
  (1962), 422–424.
- Miguel A. Lerma,
  [“Construction of a Number Greater Than One Whose Powers Are Uniformly Distributed Modulo One”](https://mlerma54.github.io/papers/constr_ud_mod1.pdf),
  manuscript dated February 5, 1996.
- Hajime Kaneko,
  [“On the fractional parts of powers of algebraic numbers”](https://www.kurims.kyoto-u.ac.jp/~kenkyubu/bessatsu/open/B34/pdf/B34_009.pdf),
  *RIMS Kôkyûroku Bessatsu* **B34** (2012), 127–136.
- Artūras Dubickas,
  [“There are infinitely many limit points of the fractional parts of powers”](https://arxiv.org/abs/math/0512314),
  *Proceedings of the Indian Academy of Sciences (Mathematical Sciences)*
  **115** (2005), 391–397.
