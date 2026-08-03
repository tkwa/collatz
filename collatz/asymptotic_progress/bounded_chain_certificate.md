# Bounded-chain certificate for the ceiling family

This note combines consecutive block recurrences into one exact identity.  It
is useful together with the piecewise-syndetic corollary in
[`failure_structure.md`](failure_structure.md): a failure of the target would
produce, with one fixed spacing bound, chains containing arbitrarily many
proportional expansion gaps.

Everything through the gcd corollary is proved.  The final endpoint-unit bound
needed for the target remains open.

## Notation

For the ceiling family, put `a=B+1` and retain the notation

```math
B^{L_i+1}u_i=a^{L_{i-1}}u_{i-1}+d_i,
\qquad 1\le d_i<B.
```

Write

```math
r_i=L_i+1.
```

For indices `s\le t`, define empty sums to be zero and set

```math
R_{s,j}=\sum_{i=s}^j r_i.
```

## Exact eliminated chain

Repeated substitution gives

```math
\boxed{
B^{R_{s,t}}u_t
=
a^{\sum_{k=s-1}^{t-1}L_k}u_{s-1}
+
\sum_{j=s}^{t}
d_j B^{R_{s,j-1}}
a^{\sum_{k=j}^{t-1}L_k}
}
```

where `R_{s,s-1}=0`.  The formula follows immediately by induction on
`t-s`: multiplying the formula ending at `t-1` by `a^{L_{t-1}}`, and then
using the block recurrence at `t`, appends the final term
`d_tB^{R_{s,t-1}}`.

For a chain of `q=t-s+1` division blocks, the correction on the right has
exactly `q` positive `S`-unit monomials, independent of the sizes of the two
endpoint units.

## Endpoint gcd certificate

Let

```math
C_{s,t}
=
\sum_{j=s}^{t}
d_j B^{R_{s,j-1}}
a^{\sum_{k=j}^{t-1}L_k}.
```

Reducing the boxed identity modulo any common divisor of `u_{s-1}` and `u_t`
gives

```math
\boxed{\gcd(u_{s-1},u_t)\mid C_{s,t}.}
```

For `s=t` this recovers `\gcd(u_{s-1},u_s)\mid d_s`.  For two blocks it says

```math
\gcd(u_{s-1},u_{s+1})
\mid d_s a^{L_s}+d_{s+1}B^{L_s+1}.
```

Thus reuse of a prime by endpoint units a bounded number of blocks apart is
controlled by a bounded-term `S`-unit expression involving only the intervening
gap lengths and digits.

## Why this is not yet the target

The boxed chain has two unrestricted endpoint units.  The gcd certificate
controls only the part they share; it gives no upper bound for their coprime
parts.  Consequently, a fixed-rank `S`-unit valuation theorem cannot yet be
applied directly: the endpoint units enlarge the prime set with the orbit.

A sufficient next lemma would control the coprime parts of endpoint units in a
bounded chain whose two endpoint gaps are proportional to their division
times.  No such lemma is currently known, and simply bounding the displayed
correction by its Archimedean size recovers only the existing logarithmic
estimate.
