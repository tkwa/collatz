# A nearby-prime family

## Status

The construction, exact normal form, logarithmic lower bound, and
prime-factor reset in this note are **proved**.  The family does **not** prove
$D_K(n)=\omega(\log K)$ for any one fixed map.

Its value is that it combines two previously separate advantages:

- the logarithmic lower-bound constant is unbounded across the family; and
- after every sufficiently long expansion run, the endpoint core is coprime
  to both the base prime and the multiplier prime.

The remaining outside-prime freedom is exactly the obstruction in
[`endpoint_arithmetic_progressions.md`](endpoint_arithmetic_progressions.md).

## Construction

Let $q\lt p$ be distinct primes.  Choose the unique
$e\in\{1,\ldots,q-1\}$ satisfying

$$
pe\equiv-1\pmod q
$$

and put

$$
c=\frac{pe+1}{q}.
$$

Define

$$
T(qQ+r)=
\begin{cases}
pQ+c,&r=e,\\[1mm]
Q,&r\ne e.
\end{cases}
$$

This is admissible: $p\gt q$, $\gcd(p,q)=1$, $e$ is nonzero, and $c$ is a
positive integer.

Put

$$
d=p-q,
\qquad
X(n)=dn+1.
$$

Then $X(n)$ is a positive integer for every $n\ge0$.  Direct substitution
gives the centered recurrence

$$
qX(T(n))=
\begin{cases}
pX(n),&n\equiv e\pmod q,\\[1mm]
X(n)-b_r,&n\equiv r\ne e\pmod q,
\end{cases}
$$

where

$$
b_r=dr-(q-1).
$$

The expansion condition is exactly

$$
n\equiv e\pmod q
\quad\Longleftrightarrow\quad
q\mid X(n).
$$

No division correction vanishes.  Indeed,
$b_r\equiv p(r-e)\not\equiv0\pmod q$ for $r\ne e$.

## Exact expansion-run length

On the expansion branch,

$$
X(T(n))=\frac pqX(n).
$$

Since $p$ is a unit modulo $q$, the length $L(n)$ of the expansion run
starting at an expansion state is exactly

$$
\boxed{L(n)=v_q(X(n))=v_q(dn+1).}
$$

In particular, an ordinary orbit cannot have an infinite expansion tail:
$X(n)$ is positive and cannot be divisible by arbitrarily high powers of
$q$.  Every orbit therefore has infinitely many division times.

## Exact global size bound

Every branch satisfies

$$
X(T(n))\le\frac pqX(n).
$$

There is equality on the expansion branch.  On a division branch, writing
$n=qQ+r$ gives

$$
X(T(n))=dQ+1
\le\frac pq(d(qQ+r)+1)
=\frac pqX(n).
$$

Hence, for $n_j=T^j(n)$,

$$
\boxed{X(n_j)\le\left(\frac pq\right)^jX(n).}
$$

If an expansion run begins at time $j$, the valuation formula gives

$$
L_j
\le\log_qX(n_j)
\le\log_qX(n)+j\log_q\frac pq.
$$

Let $\tau_m$ be the zero-based division times.  There is at most one
expansion run between consecutive division times, so

$$
\boxed{
\tau_{m+1}
\le(\log_qp)\tau_m+C_n.
}
$$

Writing

$$
\gamma_{p,q}=\log_qp\gt1,
$$

iteration and inversion yield

$$
\boxed{
D_K(n)\ge
\frac{\log K}{\log\gamma_{p,q}}-O_n(1).
}
$$

All unlabelled logarithms in the last display may be taken in any one fixed
base.

## Unbounded constants across nearby primes

Choose $q$ and $p$ to be consecutive primes.  The prime number theorem gives

$$
\frac pq\longrightarrow1.
$$

Consequently

$$
\gamma_{p,q}=\log_qp\longrightarrow1
$$

and therefore

$$
\frac1{\log\gamma_{p,q}}\longrightarrow\infty.
$$

Thus the nearby-prime family supplies arbitrarily large proved coefficients
of $\log K$.  As before, the map must be fixed before $K\to\infty$, so this
does not diagonalize to a superlogarithmic bound for one map.

## Two-prime endpoint cores

Write consecutive blocks as

$$
q^{L_i+1}u_i
=p^{L_{i-1}}u_{i-1}+d_i,
$$

where

$$
d_i=-b_{r_i}=(q-1)-(p-q)r_i
$$

belongs to a fixed finite set of nonzero signed integers.  By construction,

$$
q\nmid u_i.
$$

Let

$$
t_i=v_p(d_i),
\qquad
t_{\max}=\max_i t_i.
$$

If $L_{i-1}\gt t_{\max}$, the two terms on the right have unequal
$p$-adic valuations, and hence

$$
v_p(u_i)=t_i.
$$

After such a run, write

$$
u_i=p^{t_i}w_i.
$$

Then

$$
\boxed{\gcd(w_i,pq)=1.}
$$

The macro-elimination argument from
[`prime_power_macro_chains.md`](prime_power_macro_chains.md) now gives links
of the form

$$
q^{R_{j,k}}w_{k+1}
=p^{S_{j,k}}w_{j+1}+C_{j,k},
$$

where a bounded-spacing link has a uniformly bounded number of correction
monomials from one fixed finite-rank multiplicative group.

## What this improves, and what it does not

For one fixed nearby-prime map, a hypothetical failure of the target still
produces arbitrarily long bounded-spacing chains of the displayed equations.
The endpoint cores are now coprime to both distinguished primes, and the
Archimedean expansion ratio $p/q$ can be chosen as close to $1$ as desired.

Once the following $q$-adic run length is included in the word, the base-prime
valuation is also accounted for.  Every prime outside $pq$, however, remains
locally free: the endpoint-progression theorem permits its valuation to be
prescribed while preserving the finite word.  The nearby-prime construction
therefore sharpens the input to a future fixed-start theorem but does not
remove the moving endpoint-core obstruction.
