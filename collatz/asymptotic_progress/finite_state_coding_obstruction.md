# A finite-state obstruction for the full residue coding

This note tests a possible way of changing the admissible map: arrange that
the residue itinerary of every ordinary integer is produced by a finite-state
base-`B` transducer.  Such a transducer would send an eventually-zero input
expansion to an eventually periodic output expansion, immediately giving a
positive asymptotic frequency of division symbols unless the periodic tail
used only expansion symbols.

For the **full residue itinerary**, this shortcut is impossible for every
admissible map.  The proof below is complete.  It does not rule out a
finite-state factor that remembers only whether a residue is in `E`; that
distinction matters when `B>2`.

## Full itinerary map

Extend the admissible map continuously to `\mathbb Z_B`.  On the residue
class `r` its branch has the form

```math
f_r(q)=
\begin{cases}
q,&r\notin E,\\
a_rq+c_r,&r\in E.
\end{cases}
```

Every `f_r` is a bijection of `\mathbb Z_B`, because every `a_r` is a unit
modulo `B`.  Define

```math
Q(x)=\sum_{j\ge0}r_jB^j,
\qquad r_j=T^j(x)\bmod B.
```

The usual inverse-lifting argument shows that `Q` is a bijection of
`\mathbb Z_B`: every word of length `k` specifies exactly one residue class
modulo `B^k`, and these compatible classes specify one `B`-adic integer.

## Proved: `Q` is not a finite-state synchronous transduction

Fix one expanding residue `e\in E`, and abbreviate `a=a_e>1`.  Let `p_k` be
the unique representative in `[0,B^k)` whose first `k` itinerary symbols are

```math
e^k.
```

For every `q\in\mathbb Z_B`, the two starting values `p_k` and
`p_k+B^kq` follow the same branches for `k` steps.  Taking their difference
through those branches gives exactly

```math
T^k(p_k+B^kq)=T^k(p_k)+a^kq.
```

Also, if

```math
w_k=e(1+B+\cdots+B^{k-1}),
```

then the shift identity for the itinerary gives

```math
Q(p_k+B^kq)
=w_k+B^kQ\bigl(T^k(p_k)+a^kq\bigr).
```

Thus the transducer section after reading the least-significant input prefix
`p_k` would have to be the function

```math
q\longmapsto Q\bigl(C_k+a^kq\bigr),
\qquad C_k=T^k(p_k).
```

These sections are distinct for distinct `k`.  Indeed, equality of the
sections for `k\ne\ell`, followed by injectivity of `Q`, would imply

```math
C_k+a^kq=C_\ell+a^\ell q
```

for every `q\in\mathbb Z_B`.  Comparing slopes gives `a^k=a^\ell`, which is
impossible.

A synchronous finite-state transducer has only finitely many sections.
Therefore:

```math
\boxed{\text{The full residue itinerary map }Q\text{ is never finite-state.}}
```

## Scope of the obstruction

For `B=2`, the full residue symbol is exactly the expansion/division
indicator.  Hence no binary admissible map can solve the target by making that
indicator a finite-state transform of the ordinary binary digits.

For `B>2`, the binary projection

```math
r_j\longmapsto 1_{r_j\in E}
```

need not be injective.  The argument above consequently does **not** exclude
a specially designed higher-base map whose projected branch indicator is
finite-state or otherwise eventually periodic on ordinary integers.  This is
a genuinely different map-design direction, not a proved construction.

## Proved: the binary coding is not finite-state with one division residue

The projected route can be ruled out further when there is exactly one
division residue.  Because `0\notin E`, this case is

```math
E=\{1,\ldots,B-1\}.
```

Let `I(x)` be the binary expansion/division itinerary, with division encoded
by zero.  In this case

```math
I(x)=0^\infty\quad\Longleftrightarrow\quad x=0
```

in `\mathbb Z_B`: an all-division orbit is divisible by every power of `B`.

Fix an expansion residue `e`, with parameters `a=a_e,c=c_e`, and put

```math
h=ae-Bc.
```

Admissibility forces `h\ne0`; otherwise `B\mid ae`, contradicting
`\gcd(a,B)=1` and `1\le e<B`.

Retain the all-`e` prefix `p_k` and the section

```math
S_k(q)=I\bigl(C_k+a^kq\bigr),
\qquad C_k=T^k(p_k).
```

Because the all-division fiber is the singleton `{0}`, this section has a
unique input producing `0^\infty`, namely

```math
q_k=-C_k/a^k.
```

The corresponding starting value

```math
x_k=p_k+B^kq_k
```

follows the expansion branch `k` times and then reaches zero.  Iterating the
inverse expansion branch

```math
x\longmapsto \frac Ba(x-c)+e
```

from zero gives exactly

```math
x_k=
\frac{h(a^k-B^k)}{a^k(a-B)}.
```

Hence

```math
q_k=\frac{x_k-p_k}{B^k}.
```

Choose any prime `p\mid a`.  Then `p\nmid B(a-B)` and
`p\nmid a^k-B^k`, so

```math
v_p(x_k)=v_p(h)-k v_p(a).
```

For all sufficiently large `k` this is negative.  Subtracting the integer
`p_k` and dividing by the `p`-adic unit `B^k` do not change that valuation;
therefore

```math
v_p(q_k)=v_p(h)-k v_p(a).
```

The unique all-zero inputs `q_k` are consequently distinct for infinitely
many `k`, so the sections `S_k` are distinct.  A synchronous finite-state
transducer cannot have infinitely many sections.  Thus:

```math
\boxed{
E=\{1,\ldots,B-1\}
\quad\Longrightarrow\quad
I\text{ is not a finite-state digit transduction}.}
```

Together with the `B=2` result above, this means that a still-possible
finite-state projected construction must use `B\ge3` and at least two
division residues.

## Proved reduction for several division residues

Let

```math
D=\{0,\ldots,B-1\}\setminus E
```

and let `\mathcal C_D\subset\mathbb Z_B` be the deleted-digit set consisting
of the `B`-adic integers all of whose ordinary base-`B` digits lie in `D`.
Because every residue in `D` uses the quotient branch,

```math
I(x)=0^\infty
\quad\Longleftrightarrow\quad
x\in\mathcal C_D.
```

For the all-`e` section above, the all-zero fiber is therefore

```math
Z_k=a^{-k}(\mathcal C_D-C_k).
```

If the binary itinerary were a synchronous finite-state transduction, two of
the infinitely many sections along the all-`e` prefixes would agree.  For
some `k<\ell` this would give `Z_k=Z_\ell`, and hence

```math
\boxed{
a^{\ell-k}\mathcal C_D+t=\mathcal C_D
}
```

for a translation `t\in\mathbb Z_B`.

Thus the remaining finite-state possibility is reduced to an affine-symmetry
question for a proper `B`-adic deleted-digit set.

**Affine deleted-digit rigidity theorem.**  If `D` is a proper subset
containing `0` and `2\le |D|<B`, no equality

```math
A\mathcal C_D+t=\mathcal C_D
```

is possible with a positive integer `A>1` coprime to `B`.  A complete proof
using Furstenberg's topological multiplicative-independence theorem is given
below.  First, an elementary moment proof covers most bases and provides an
independent check on the reduction.

## Proved: rigidity when one base prime misses `|D|`

The candidate rigidity lemma has an elementary proof whenever some prime
divisor of `B` does not divide the number of retained digits.  In particular,
this covers every prime base.

Put `d=|D|`, and for `k\ge1` let

```math
D_k=\left\{\sum_{j=0}^{k-1}x_jB^j:x_j\in D\right\}
\subseteq\{0,\ldots,B^k-1\}.
```

Suppose

```math
A\mathcal C_D+t=\mathcal C_D,
\qquad \gcd(A,B)=1.
```

Reduction modulo `B^k` says that `x\mapsto Ax+t` permutes `D_k`.  The
translation-invariant second moment

```math
W_k=\sum_{x,y\in D_k}(x-y)^2
```

therefore satisfies

```math
(A^2-1)W_k\equiv0\pmod{B^k}.
```

Let

```math
W_D=\sum_{r,s\in D}(r-s)^2.
```

Expanding digit by digit, all mixed terms vanish because
`\sum_{r,s\in D}(r-s)=0`, and hence

```math
W_k
=d^{2k-2}W_D(1+B^2+\cdots+B^{2k-2}).
```

Choose a prime `p\mid B` with `p\nmid d`.  The geometric sum is `1` modulo
`p`, so

```math
v_p(W_k)=v_p(W_D)
```

for every `k`.  The preceding congruence would then give

```math
k v_p(B)
\le v_p(A^2-1)+v_p(W_D)
```

for every `k`, unless `A^2-1=0`.  Thus `A=1` for positive `A`; in
particular, no positive `A>1` is possible.

Consequently:

```math
\boxed{
\text{If some }p\mid B\text{ does not divide }|D|,
\text{ the binary itinerary is not finite-state.}
}
```

For a prime base, every proper digit set with `2\le|D|<B` meets this
hypothesis.  Combining this with the singleton-division argument proves that
the projected expansion/division itinerary is never a synchronous
finite-state digit transduction for **any admissible map of prime base**.

The only cases left by this elementary second-moment argument have composite
`B` and every prime factor of `B` dividing `|D|`.  The next argument covers
those cases as well.

## Proved: full affine deleted-digit rigidity

Let

```math
C_D=\left\{\sum_{j\ge1}d_jB^{-j}:d_j\in D\right\}
\subset\mathbb R/\mathbb Z
```

be the real deleted-digit Cantor set.  Suppose, toward a contradiction, that

```math
A\mathcal C_D+t=\mathcal C_D
```

in `\mathbb Z_B`, where `A>1` and `\gcd(A,B)=1`.

For each `k`, reduce this equality modulo `B^k`, choose representatives in
`[0,B^k)`, and divide by `B^k`.  The resulting finite set is

```math
C_{D,k}=\left\{\sum_{j=1}^k d_jB^{-j}:d_j\in D\right\};
```

the reversal of the `k` digits does not change the set.  Passing to a
subsequence on which `(t\bmod B^k)/B^k` converges to some
`\theta\in\mathbb R/\mathbb Z`, and then taking Hausdorff limits, gives

```math
f(C_D)=C_D,
\qquad f(x)=Ax+\theta\pmod1.
```

The digit shift also gives

```math
g(C_D)=C_D,
\qquad g(x)=Bx\pmod1.
```

The two compositions have the same linear part and both map `C_D` onto
itself:

```math
f\circ g(x)=ABx+\theta,
\qquad
g\circ f(x)=ABx+B\theta.
```

It follows that translation by

```math
\delta=(B-1)\theta
```

preserves `C_D`.  Let

```math
H=\{s\in\mathbb R/\mathbb Z:C_D+s=C_D\}
```

be its translation stabilizer.  This is a closed subgroup of the circle.  It
cannot be the whole circle because `C_D` is proper (indeed it has Hausdorff
dimension `\log|D|/\log B<1`), so `H` is finite.  Both multiplication by `A`
and multiplication by `B` preserve `H`, and `\delta\in H`; hence `f` and `g`
descend to commuting affine maps on the quotient circle
`(\mathbb R/\mathbb Z)/H`.  The image `\overline C_D` remains infinite and
proper: if its image were the whole quotient, `H`-invariance would already
make `C_D` the whole original circle.

Commutation makes `g` map the nonempty finite fixed-point set of `f` into
itself.  Choose a periodic point `s` in this finite directed set; then `s` is
fixed by `f` and some iterate `g^r` fixes `s`.  After translation by `s`, the
proper infinite closed set `\overline C_D-s` is
invariant under

```math
x\longmapsto Ax,
\qquad
x\longmapsto B^r x
\pmod1.
```

The integers `A` and `B^r` are multiplicatively independent because
`\gcd(A,B)=1`.  Furstenberg's topological `\times A,\times B^r` theorem says
that an infinite closed subset of the circle invariant under both maps must
be the whole circle.  This contradicts properness and proves the rigidity
theorem.

Applying it to

```math
A=a^{\ell-k}>1
```

in the section reduction proves:

```math
\boxed{
\text{For every admissible map, the binary expansion/division itinerary is
not a synchronous finite-state transduction of the base-}B\text{ digits.}
}
```

The external input used here is the topological rigidity theorem from H.
Furstenberg, *Disjointness in ergodic theory, minimal sets, and a problem in
Diophantine approximation*, Math. Systems Theory **1** (1967), 1--49.

## Proved no-go for the most direct projected-digit construction

A tempting higher-base design is to use the same affine map

```math
g(q)=aq+c,
\qquad a>B,quad \gcd(a,B)=1,
```

on every expanding residue, choose a nonconstant coloring
`\chi:\{0,\ldots,B-1\}\to\{0,1\}`, and require multiplication by `g` to
preserve the color of every ordinary base-`B` digit.  The branch indicator
would then simply shift through the colored digits of the starting integer.
This exact construction is impossible.

Indeed, fix any carry value `s\in\{0,\ldots,a-1\}`.  For every sufficiently
large `k`, the interval

```math
\frac{sB^k-c}{a}
\le r<
\frac{(s+1)B^k-c}{a}
```

has length `B^k/a>1` and contains an integer `r` in `[0,B^k)`.  Choose an
ordinary integer whose first `k` digits encode this `r` and whose digit in
position `k` is zero.  On multiplying by `a` and adding `c`, the carry into
position `k` is exactly `s`, so the output digit in that position is
`s\bmod B`.  Digit-color preservation would force

```math
\chi(0)=\chi(s\bmod B).
```

Since `a>B`, the allowed carries include `s=0,1,\ldots,B-1`; hence `\chi`
would be constant.  Thus even the coarser projected-itinerary route cannot be
realized by making an expansion affine map preserve a fixed coloring of each
ordinary input digit.  More general finite-state projected factors, in which
the output color depends on a carry state rather than only on the input digit,
are not excluded.
