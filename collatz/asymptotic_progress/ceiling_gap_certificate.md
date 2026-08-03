# Exact gap certificates for the ceiling-division family

This note derives exact consequences of a long gap between division steps for
the admissible family

```math
T_B(Bq+r)=
\begin{cases}
(B+1)q+B,&r=B-1,\\
q,&0\le r\le B-2,
\end{cases}
```

using the positive coordinate `x=n+1`.  These identities are proved.  The
final valuation estimate needed for `D_K(n)=\omega(\log K)` remains open.

## Step recurrence

Put `a=B+1`.  At time `j`, write `x_j=T_B^j(n)+1`.  Then

```math
Bx_{j+1}=a_jx_j+d_j,
```

where

```math
(a_j,d_j)=
\begin{cases}
(a,0),&B\mid x_j,\\
(1,B-(x_j\bmod B)),&B\nmid x_j.
\end{cases}
```

Thus every division digit satisfies `1\le d_j\le B-1`.

## Block recurrence

Let `\tau_m` be the time of the `m`-th division step.  Set

```math
L_m=\tau_{m+1}-\tau_m-1.
```

This is the number of expansion steps after the `m`-th division and before the
next division.  Immediately after the `m`-th division there are unique integers
`u_m\ge1` and `L_m\ge0`, with `B\nmid u_m`, such that

```math
x_{\tau_m+1}=B^{L_m}u_m.
```

After the ensuing expansion run,

```math
x_{\tau_{m+1}}=a^{L_m}u_m.
```

If `d_m=B-(x_{\tau_m}\bmod B)`, the division at time `\tau_m` and the preceding
display give

```math
B^{L_m+1}u_m=x_{\tau_m}+d_m.
```

Using `x_{\tau_m}=a^{L_{m-1}}u_{m-1}` therefore yields the exact chain

```math
B^{L_m+1}u_m
=a^{L_{m-1}}u_{m-1}+d_m,
\qquad 1\le d_m\le B-1.
```

In particular,

```math
\gcd(u_m,u_{m-1})\mid d_m,
```

because `a=B+1` and `B` are both coprime to the other side's cofactor.

## Base-`B` suffix certificate

The identity

```math
x_{\tau_m}=B^{L_m+1}u_m-d_m
```

shows that the base-`B` expansion of the division-state value ends in the
digit `B-d_m`, preceded by exactly `L_m` digits equal to `B-1`.  Equivalently,
a gap of `L_m` expansion steps is exactly a terminal block

```math
(B-1)^{L_m}(B-d_m)
```

in `x_{\tau_m}`.

Consequently, a proportional jump

```math
\tau_{m+1}\ge(1+\delta)\tau_m
```

forces `x_{\tau_m}` to have a terminal block of `B-1` digits whose length is
at least `\delta\tau_m-O(1)`.

## Global positive `S`-unit identity

Let

```math
\lambda_m=\tau_m-m+1,
```

the number of expansion steps strictly before the `m`-th division.  Iterating
the forward recurrence up to time `\tau_m` and then inserting the suffix
certificate gives

```math
B^{\tau_{m+1}}u_m
=a^{\lambda_m}x_0
+\sum_{i=1}^{m}
d_iB^{\tau_i}a^{\lambda_m-\lambda_i}.
```

Every term is a positive integer.  Conversely, its `B`-adic divisibility is
exactly the next division time because `B\nmid u_m`.

For `a=B+1`, the right side can also be written as the evaluation at `z=B` of
the nonnegative-coefficient polynomial

```math
P_m(z)
=x_0(1+z)^{\lambda_m}
+\sum_{i=1}^{m}
d_i z^{\tau_i}(1+z)^{\lambda_m-\lambda_i},
```

and the exact valuation statement is

```math
v_B(P_m(B))=\tau_{m+1}.
```

Here `v_B` means divisibility by powers of the integer `B`; it is not asserted
to be an additive valuation when `B` is composite.

## What remains missing

The elementary size estimate on the positive identity gives only

```math
\tau_{m+1}\le\log_B(B+1)\,\tau_m+O_{B,n}(m),
```

which recovers the logarithmic orbit bound.  A successful strengthening must
use that the same fixed starting value produces the entire bounded-gap chain,
not merely apply a height estimate to one equation.  In particular, separate
Pillai or `S`-unit estimates whose constants grow exponentially with the number
`m` of summands do not exclude `m=O(\log\tau_m)`.
