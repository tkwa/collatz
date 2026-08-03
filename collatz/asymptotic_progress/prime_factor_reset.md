# Prime-factor reset in one-expanding-residue maps

This note records an exact benefit of choosing a structured expansion
multiplier.  It is a proved endpoint restriction, but it does not control the
prime factors outside the fixed multiplier and therefore does not yet prove a
superlogarithmic division bound.

## General reset lemma

Use the one-expanding-residue centered coordinate from
[`research_state.md`](research_state.md).  Thus an expansion step is

```math
BX'=aX,
```

and a division step in residue `r` is

```math
BX'=X-b_r.
```

The coefficient `b_r` is nonzero.  Otherwise the expansion branch and that
division branch would have the same affine fixed point, which is excluded by
the common-center rigidity argument in [`research_state.md`](research_state.md).

Suppose a division step follows an expansion run of length `L\ge1`.  Write the
state at the beginning of that run as `B^Lu`, so the state just before the
division is `a^Lu`.  If the next expansion run has length `L'`, write the state
just after the division as `B^{L'}u'`.  The exact block equation is

```math
B^{L'+1}u'=a^Lu-b_r.
```

Let `p` be any prime divisor of `a`.  Since `p\nmid B`, if

```math
L\,v_p(a)>v_p(b_r),
```

then the two terms on the right have unequal `p`-adic valuations and hence

```math
\boxed{v_p(u')=v_p(b_r).}
```

In particular, because the coefficient alphabet `{b_r:r\notin E}` is finite,
there is a constant `C` depending only on the map such that every sufficiently
long expansion run is followed by an endpoint unit satisfying

```math
\gcd(u',a)\mid C.
```

If every `b_r` is coprime to `a`, that endpoint unit is coprime to `a` after
every nonempty expansion run.

## A small prime-power candidate

The parameters

```math
B=3,\qquad E=\{1\},\qquad a=4,\qquad c=2
```

give

```math
T(3q)=q,\qquad T(3q+1)=4q+2,\qquad T(3q+2)=q.
```

In the positive coordinate `X=n+2`,

```math
3X'=
\begin{cases}
4X,&3\mid X,\\
X+2,&X\equiv1\pmod3,\\
X+4,&X\equiv2\pmod3.
\end{cases}
```

Writing consecutive blocks as

```math
3^{L_m+1}u_m=4^{L_{m-1}}u_{m-1}+d_m,
\qquad d_m\in\{2,4\},
```

gives the sharper exact alternatives

```math
v_2(u_m)=
\begin{cases}
1,&d_m=2\text{ and }L_{m-1}\ge1,\\
2,&d_m=4\text{ and }L_{m-1}\ge2.
\end{cases}
```

Thus a proportional gap, once it is longer than one step, leaves an endpoint
unit with completely controlled `2`-primary part.  Under a hypothetical
failure of the target, the piecewise-syndetic proportional-gap theorem
therefore produces arbitrarily long bounded-spacing chains of endpoints with
controlled `2`-primary parts.

## Remaining obstruction

The odd parts of the endpoint units remain unrestricted.  The eliminated
bounded-chain identity controls their common divisors but not their coprime
parts.  Consequently the reset lemma removes the primes dividing `a` from the
moving prime set, but it does not reduce the endpoint units to fixed
`S`-units.  Treating it as a complete `S`-unit reduction would be incorrect.
The exact chain obtained after removing these controlled powers of two is
derived in [`odd_core_chain.md`](odd_core_chain.md).
