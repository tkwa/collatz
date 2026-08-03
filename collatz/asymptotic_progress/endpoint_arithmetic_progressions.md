# Endpoint arithmetic progressions for a fixed itinerary

## Status

Everything in this note is **proved**.  The result applies to every admissible
map, not only to a one-expanding-residue or prime-power example.

It strengthens finite-itinerary realizability: after a finite residue word is
fixed, the endpoints obtained by varying the starting integer form an exact
arithmetic progression.  This shows that all endpoint valuations outside the
primes dividing the expansion multipliers remain locally free.

## Setup

Let

$$
T(Bq+r)=
\begin{cases}
q,&r\notin E,\\[1mm]
a_rq+c_r,&r\in E,
\end{cases}
$$

be an admissible map.  Thus $B\ge2$, every $a_r$ is coprime to $B$, and
$a_r\gt B$.

Fix a realizable residue word

$$
\mathbf r=(r_0,r_1,\ldots,r_{N-1}).
$$

For each position put

$$
\mu_i=
\begin{cases}
1,&r_i\notin E,\\
a_{r_i},&r_i\in E,
\end{cases}
\qquad
A_j=\prod_{0\le i\lt j}\mu_i.
$$

In particular, $A_0=1$ and $A_N$ is the product, with multiplicity, of all
expansion multipliers occurring in the word.

## Exact lift formula

Suppose $n$ realizes $\mathbf r$.  Then, for every integer $t$ for which the
lifted start is nonnegative,

$$
n^{(t)}=n+B^Nt
$$

also realizes $\mathbf r$.  More precisely, for every $0\le j\le N$,

$$
\boxed{
T^j(n^{(t)})=T^j(n)+A_jB^{N-j}t.
}
$$

### Proof

The formula is immediate at $j=0$.  Assume it holds at some $j\lt N$.  The
two states differ by a multiple of $B$, so they have the same residue $r_j$
and use the same branch.  That branch has slope $\mu_j/B$.  Therefore their
next states differ by

$$
\frac{\mu_j}{B}A_jB^{N-j}t
=A_{j+1}B^{N-j-1}t.
$$

This proves the formula by induction.  In particular, the first $N$ residues
are unchanged.  $\square$

## Exact endpoint progression

At $j=N$, the lift formula becomes

$$
\boxed{
T^N(n+B^Nt)=T^N(n)+A_Nt.
}
$$

Choose the unique representative $n_0\in\{0,1,\ldots,B^N-1\}$ which realizes
the word.  As the nonnegative starting value ranges over

$$
n_0+B^N\mathbb N_0,
$$

the endpoint ranges over the exact progression

$$
T^N(n_0)+A_N\mathbb N_0.
$$

This also recovers the usual uniqueness statement: a finite residue word is
realized by exactly one starting residue class modulo $B^N$.

## Local freedom away from the multiplier primes

Let $M\ge1$ satisfy

$$
\gcd(M,A_N)=1.
$$

Because $A_N$ is invertible modulo $M$, the endpoint progression covers every
residue class modulo $M$.  Hence, while preserving the entire word, one may
impose any desired congruence

$$
T^N(n+B^Nt)\equiv y\pmod M.
$$

In particular, let $\ell_1,\ldots,\ell_s$ be primes which divide none of the
expansion multipliers in the word.  For arbitrary nonnegative integers
$k_1,\ldots,k_s$, choose the endpoint modulo

$$
M=\prod_{i=1}^s\ell_i^{k_i+1}
$$

so that

$$
T^N(n+B^Nt)\equiv\ell_i^{k_i}
\pmod{\ell_i^{k_i+1}}
$$

for every $i$.  The Chinese remainder theorem and the endpoint progression
then give a nonnegative lifted start for which

$$
\boxed{
v_{\ell_i}\!\left(T^N(n+B^Nt)\right)=k_i
\quad(1\le i\le s).
}
$$

Thus finitely many endpoint valuations away from the multiplier primes may be
prescribed independently without changing one symbol of the finite
itinerary.

## Consequences for the prime-power route

For a one-expanding-residue map with multiplier $a=p^g$, every word containing
at least one expansion has

$$
A_N=p^{gL}
$$

for some $L\ge1$.  The endpoint can therefore be prescribed modulo every
integer coprime to $p$.  The reset lemma can genuinely control the
$p$-primary part after a long expansion run, but no finite-word argument can
also control any chosen collection of primes outside $p$: those valuations
remain freely prescribable.

This proves a local optimality statement for the reset method.  Factoring out
the multiplier primes leaves a moving endpoint core not because the current
normal form is wasteful, but because the remaining prime support is invisible
to every fixed finite itinerary.

The result does not rule out a global proof.  Along one fixed ordinary integer
orbit, the lifting parameter $t$ cannot be chosen anew at every endpoint.
Correlations between endpoints on that one orbit are exactly the information
that a successful argument must exploit.

