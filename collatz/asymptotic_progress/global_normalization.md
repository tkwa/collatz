# Global Archimedean normalization for the ceiling family

This note records an exact monotone normalization that keeps the fixed starting
value visible.  It sharpens the elementary size estimate and identifies the
real companion value that an adelic proof would have to control.  The
identities and inequalities are proved; they do not yet imply the
superlogarithmic target.

## Exact normalized recurrence

Let `x_j=T_B^j(n)+1`, put `a=B+1`, and let `e_j` and `m_j` be the numbers of
expansion and division steps, respectively, among times `0,\ldots,j-1`.  Thus

```math
e_j+m_j=j.
```

Define

```math
Z_j=\frac{B^j x_j}{a^{e_j}}.
```

The one-step recurrence in [`ceiling_gap_certificate.md`](ceiling_gap_certificate.md)
immediately gives

```math
Z_{j+1}=
\begin{cases}
Z_j,&j\text{ is an expansion time},\\[1mm]
Z_j+d_jB^j/a^{e_j},&j\text{ is a division time},
\end{cases}
```

where `1\le d_j<B`.  If `\tau_i` is the `i`-th division time and

```math
\lambda_i=\tau_i-i+1,
```

then exactly

```math
Z_j=x_0+
\sum_{\tau_i<j}d_i\frac{B^{\tau_i}}{a^{\lambda_i}}.
```

This is the Archimedean partial-sum companion of the global `B`-adic identity.

## Uniform bound in terms of the number of divisions

Since `\tau_i=\lambda_i+i-1`,

```math
\frac{B^{\tau_i}}{a^{\lambda_i}}
=B^{i-1}\left(\frac Ba\right)^{\lambda_i}
\le B^{i-1}.
```

Consequently, whenever `m_j=m`,

```math
\boxed{
x_0\le Z_j\le x_0+B^m-1.
}
```

Equivalently,

```math
\boxed{
x_0\frac{a^{j-m}}{B^j}
\le x_j\le
(x_0+B^m-1)\frac{a^{j-m}}{B^j}.
}
```

The upper bound is sharp at the level of arbitrary itineraries: putting the
division symbols as early as possible makes each factor
`(B/a)^{\lambda_i}` equal to `1`.

## Refined expansion-run bound

Suppose an expansion run of length `L` begins at time `j`, after exactly `m`
division steps.  Then `B^L\mid x_j`, so the preceding upper bound gives

```math
L\le
\log_B(x_0+B^m-1)
+(j-m)\log_Ba-j.
```

Writing

```math
\alpha=\log_Ba,
\qquad \varepsilon=\alpha-1,
```

and using `\log_B(x_0+B^m-1)\le m+O_{B,x_0}(1)` yields

```math
L\le\varepsilon(j-m)+O_{B,x_0}(1).
```

At the division times this becomes the slightly sharper recurrence

```math
\tau_{m+1}\le
\alpha\tau_m-\varepsilon m+O_{B,x_0}(1).
```

This does **not** improve the asymptotic order.  After setting
`v_m=\tau_m-m`, the recurrence is simply

```math
v_{m+1}\le\alpha v_m+O_{B,x_0}(1),
```

so it still permits exponential growth in `m` and gives only
`D_K(n)=\Omega(\log K)`.

## The real companion obstruction

The monotone sequence `Z_j` either converges in `\mathbb R` to

```math
Z_\infty=x_0+
\sum_{i\ge1}d_i\frac{B^{\tau_i}}{a^{\lambda_i}}
```

or tends to `+\infty`.  At the same time, the correction series is forced by
the orbit identity to take the rational value `-x_0` in every `p`-adic
completion with `p\mid B` (equivalently, the displayed `x_0+\sum` has
`p`-adic limit `0`).

If a finite real companion value could be proved algebraic, a simultaneous
Archimedean/`p`-adic Subspace-Theorem argument would use the real tail together
with the `B`-adic gap and remove the elementary height loss from `a^{\tau_m}`
to `B^{\tau_m}`.  No such algebraicity statement is known.  For generalized
`an+1` maps it is a sparse special case of the unresolved rational-points side
of the parity transform, not an automatic property of the normalization.

Thus this normalization isolates, rather than solves, the global issue: the
endpoint units from the block recurrence are the rational approximants to an
uncontrolled real companion value.
