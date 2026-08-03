# Unbounded logarithmic constants across admissible maps

This note records a proved near miss to the target.  It does **not** prove
`D_K(n)=\omega(\log K)` for one fixed map.  It shows that the coefficient in a
universal logarithmic lower bound can be made arbitrarily large by changing the
map.

## The family

Fix `B\ge2` and define

```math
T_B(Bq+r)=
\begin{cases}
(B+1)q+B,&r=B-1,\\
q,&0\le r\le B-2.
\end{cases}
```

This is admissible with

```math
E=\{B-1\},\qquad a_{B-1}=B+1,\qquad c_{B-1}=B.
```

Put `X(n)=n+1`.  Then

```math
X(T_B(n))=
\begin{cases}
\dfrac{B+1}{B}X(n),&B\mid X(n),\\[2mm]
\left\lceil\dfrac{X(n)}B\right\rceil,&B\nmid X(n).
\end{cases}
```

In particular, the expansion branch is used exactly when `B\mid X`, and a
run of consecutive expansion steps beginning at `n` has exact length

```math
v_B(X(n)).
```

Here `v_B(x)=\max\{j:B^j\mid x\}`; primality of `B` is not needed.

## Uniform size bound

For every positive integer `X`,

```math
\left\lceil\frac XB\right\rceil
\le \frac{B+1}{B}X.
```

The inequality is immediate for `X=1`, and for `X\ge2` follows from
`\lceil X/B\rceil\le X/B+1\le (B+1)X/B`.  Consequently, along the orbit of
`n`,

```math
X(T_B^j(n))\le
\left(\frac{B+1}{B}\right)^jX(n).
```

An expansion run beginning at time `j` therefore has length at most

```math
C_n+j\log_B\!\left(\frac{B+1}{B}\right),
\qquad C_n=\log_B X(n).
```

## Counting division steps

Let `\tau_m` be the zero-based time of the `m`-th division step.  Between two
successive division steps there is at most one expansion run.  The preceding
bound gives a constant `C_n'` such that

```math
\tau_{m+1}
\le \alpha_B\tau_m+C_n',
\qquad
\alpha_B
=1+\log_B\!\left(\frac{B+1}{B}\right)
=\log_B(B+1).
```

Iterating this affine recurrence and inverting it at time `K` proves

```math
D_K(n)\ge
\frac{\log K}{\log\alpha_B}-O_{B,n}(1).
```

Since

```math
\log\alpha_B
=\log\!\left(1+\frac{\log(1+1/B)}{\log B}\right)
\sim\frac1{B\log B},
```

the leading constant satisfies

```math
\frac1{\log\alpha_B}\sim B\log B.
```

Thus, for every prescribed `A>0`, some fixed admissible map in this family
satisfies

```math
D_K(n)\ge A\log K-O_{A,n}(1)
```

for every starting value `n`.

## Why this is not the target

The base `B` must be fixed as `K\to\infty`.  Hence the result supplies an
arbitrarily large but still fixed coefficient of `\log K`; it cannot be
diagonalized by choosing `B` as a function of `K` while retaining one
admissible map.

For a fixed orbit with division times `\tau_m`, failure of the target is
equivalent to

```math
\limsup_{m\to\infty}\frac{\log\tau_m}{m}>0.
```

It then follows that there is a `\delta>0` for which

```math
\tau_{m+1}\ge(1+\delta)\tau_m
```

for infinitely many `m`: otherwise, choosing `\delta` with
`\log(1+\delta)` smaller than the displayed limsup would contradict the
telescoping identity
`\log\tau_m=\log\tau_1+\sum_{i<m}\log(\tau_{i+1}/\tau_i)`.

Therefore a qualitative way to finish the project for any candidate map is to
exclude proportional gaps of every fixed positive size.  The elementary height
argument above excludes only gaps beyond the fixed threshold
`\alpha_B-1`; making `B` large makes that threshold small but never zero.
