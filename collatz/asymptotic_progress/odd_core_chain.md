# Odd-core chain for the `4/3` prime-power candidate

This note factors the controlled `2`-primary parts from the block recurrence
for

```math
T(3q)=q,\qquad T(3q+1)=4q+2,\qquad T(3q+2)=q.
```

It produces an exact variable-coefficient Pillai chain between odd integers.
Everything through the simultaneous residue certificate is proved.  The odd
endpoint factors remain unrestricted, so the final superlogarithmic bound is
not proved.

## Block notation

In the coordinate `X=n+2`, let `L_i` be the expansion-run length after the
`i`-th division and write

```math
3^{L_i+1}u_i=4^{L_{i-1}}u_{i-1}+d_i,
\qquad d_i\in\{2,4\},
\qquad 3\nmid u_i.
```

Put

```math
r_i=L_i+1,
\qquad t_i=v_2(d_i)\in\{1,2\}.
```

As proved in [`prime_factor_reset.md`](prime_factor_reset.md), if
`L_{i-1}\ge2`, then

```math
v_2(u_i)=t_i.
```

Thus one may write

```math
u_i=2^{t_i}w_i,
\qquad \gcd(w_i,6)=1.
```

## Exact odd-core recurrence

Assume

```math
L_{i-2}\ge2,
\qquad L_{i-1}\ge2.
```

Both endpoint units have controlled `2`-primary parts.  Dividing the block
identity by `2^{t_i}` gives

```math
\boxed{
3^{r_i}w_i=2^{S_i}w_{i-1}+1,
\qquad
S_i=2L_{i-1}+t_{i-1}-t_i.
}
```

Here `S_i\ge3`.  This is stronger than merely saying that the endpoint units
are coprime to `3`: every sufficiently long pair of consecutive expansion
runs gives a `+1` equation between a power of three times one odd core and a
power of two times the preceding odd core.

## Eliminated odd-core chain

Suppose the hypotheses needed for the boxed recurrence hold at every index
`s,\ldots,t`.  Repeated substitution gives

```math
\boxed{
3^{\sum_{i=s}^t r_i}w_t
=
2^{\sum_{i=s}^t S_i}w_{s-1}
+
\sum_{j=s}^t
2^{\sum_{k=j+1}^t S_k}
3^{\sum_{k=s}^{j-1}r_k}.
}
```

Empty sums in the exponents are zero.  The correction has exactly
`t-s+1` positive `{2,3}`-unit terms.  In particular,

```math
\gcd(w_{s-1},w_t)
\mid
\sum_{j=s}^t
2^{\sum_{k=j+1}^t S_k}
3^{\sum_{k=s}^{j-1}r_k}.
```

## Proved: macro odd-core links across short intervening blocks

The clean one-block odd-core recurrence does not require every intermediate
run to be long if those intermediate units are eliminated first.

Call an index `j` **marked** when `L_j\ge2`.  The reset lemma controls the unit
immediately after that run:

```math
u_{j+1}=2^{t_{j+1}}w_{j+1},
\qquad \gcd(w_{j+1},6)=1.
```

Let `j<k` be two marked indices.  Apply the general block elimination to the
recurrences with indices `j+2,\ldots,k+1`.  Put

```math
R_{j,k}=\sum_{i=j+2}^{k+1}r_i,
\qquad
A_{j,k}=\sum_{h=j+1}^{k}L_h.
```

Then

```math
3^{R_{j,k}}u_{k+1}
=4^{A_{j,k}}u_{j+1}
+\sum_{i=j+2}^{k+1}
d_i
3^{\sum_{h=j+2}^{i-1}r_h}
4^{\sum_{h=i}^{k}L_h}.
```

Because `L_k\ge2`, every summand except the last is divisible by at least
`2^5`; the last has exact `2`-adic valuation
`t_{k+1}\in\{1,2\}`.  Dividing by `2^{t_{k+1}}` gives the integer identity

```math
\boxed{
3^{R_{j,k}}w_{k+1}
=2^{S_{j,k}}w_{j+1}+C_{j,k},
}
```

where

```math
S_{j,k}=2A_{j,k}+t_{j+1}-t_{k+1}
```

and

```math
C_{j,k}
=\sum_{i=j+2}^{k+1}
2^{2\sum_{h=i}^{k}L_h+t_i-t_{k+1}}
3^{\sum_{h=j+2}^{i-1}r_h}.
```

The exponent of `2` in every displayed summand is nonnegative; for the last
summand it is zero.  Thus, if `k-j\le R`, the correction `C_{j,k}` has at most
`R` explicit `{2,3}`-unit terms, regardless of the lengths or `2`-adic
behavior of the intervening runs.

Combining this with the piecewise-syndetic corollary in
[`failure_structure.md`](failure_structure.md), a failure of the target for
the `4/3` diagnostic map would produce arbitrarily long chains of controlled
odd cores linked by equations of this form, with one uniform bound on the
number of correction terms in each link.  This removes the earlier need to
assume consecutive long runs.  It still does not control the prime-to-six
parts `w_{j+1}` themselves.

## Simultaneous residue certificate

If three consecutive preceding runs are long enough for the odd-core
recurrences at `i` and `i+1`, then the shared odd core satisfies

```math
\boxed{
\begin{aligned}
3^{r_i}w_i&\equiv1\pmod{2^{S_i}},\\
2^{S_{i+1}}w_i&\equiv-1\pmod{3^{r_{i+1}}}.
\end{aligned}
}
```

Since the moduli are coprime, this pins `w_i` to one residue class modulo

```math
2^{S_i}3^{r_{i+1}}.
```

The certificate is simultaneous and exact, but not by itself contradictory:
the least positive representative of that class can be arbitrarily large.

## Proved: the local odd-core equations impose no exponent bound

For arbitrary positive integers `r` and `S`, there exist positive integers
`v,w`, both coprime to `6`, such that

```math
3^r w=2^S v+1.
```

Indeed, choose `v` in the nonzero residue class

```math
v\equiv-2^{-S}\pmod{3^r}
```

but not in its unique lift modulo `3^{r+1}` that would make the numerator
divisible by `3^{r+1}`.  Adding a multiple of `3^{r+1}` if necessary makes
`v` positive and odd without changing the exact `3`-adic valuation.  Then

```math
w=\frac{2^Sv+1}{3^r}
```

is a positive odd integer not divisible by `3`.

Likewise, for arbitrary positive `S,r'`, the two congruences in the
simultaneous residue certificate always have a solution coprime to `6`, by
the Chinese remainder theorem.  Consequently neither one odd-core link nor
one shared-core certificate can bound the adjacent gap exponents.  Any proof
must use recurrence along the same fixed orbit, not a local LTE estimate.

## Fixed-start anchor

Let `\tau_i` be the division times and let

```math
\lambda_i=\tau_i-i+1
```

be the number of preceding expansion steps, with the same one-based indexing
convention as in [`ceiling_gap_certificate.md`](ceiling_gap_certificate.md).
Iterating

```math
3X_{j+1}=4X_j+d_j
```

and inserting the next run gives the exact positive identity

```math
\boxed{
3^{\tau_{m+1}}u_m
=4^{\lambda_m}X_0
+\sum_{i=1}^m
d_i3^{\tau_i}4^{\lambda_m-\lambda_i}.
}
```

When the preceding run is long, `u_m=2^{t_m}w_m`, so this is also a global
formula for the odd core `w_m` anchored at the fixed integer `X_0=n+2`.
Unlike the local recurrence, this formula cannot choose its left endpoint
independently at each block.

It still does not put `w_m` in a fixed finite-rank multiplicative group.  The
formula is therefore the correct global anchor, but the missing estimate is a
uniform bound on its prime-to-`6` quotient, not another congruence at `2` or
`3`.

## Why this still stops short

Failure of the target gives arbitrarily long bounded-spacing chains of marked
gaps, and the macro identity above crosses all short intervening runs.  The
remaining obstruction is no longer intermediate `2`-adic cancellation: it is
the unrestricted size and prime support of the endpoint cores `w_i`.
Standard two-term LTE controls
`3^r-2^S`, but not

```math
3^r w-2^S v=1
```

uniformly in the two moving odd coefficients `v,w`.  A successful next lemma
must either control those odd cores from the fixed starting value or show that
the simultaneous residue certificates cannot recur at positive density along
one integer orbit.
