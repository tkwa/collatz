# The moving endpoint-core obstruction

## Scope and status

This note is a standalone account of the main obstruction reached by the
prime-power macro-chain approach to the target

```math
D_K(n)=\omega(\log K).
```

The reduction to macro chains below is **proved**.  The theorem needed to
exclude arbitrarily long chains along one fixed integer orbit is **open**.
No proof of the target is claimed.

This is not a no-go theorem for all admissible maps.  It applies to the
particularly tractable route using one expanding residue and a prime-power
expansion multiplier.  A different admissible map may avoid this exact
algebra.  The more general finite-itinerary obstruction described below,
however, applies to every admissible map.

## 1. Target and notation

Use the pure-division specialization of the admissible map family in the
[all-start nonnegative conjecture](../nonnegative_superlogarithmic_contraction.md).
Here $B$ is the base, $E$ is the set of expanding residues, and the residues
outside $E$ are division branches.  For a starting value $n$, write

```math
D_K(n)=\#\lbrace 0\le j\lt K:T^j(n)\bmod B\notin E\rbrace.
```

The target is to find one admissible map for which

```math
\forall n\in\mathbb N_0,
\qquad
\frac{D_K(n)}{\log K}\longrightarrow\infty.
```

This is much weaker than positive division density and says nothing by itself
about boundedness, recurrence, or eventual periodicity.

## 2. Division times

Fix one orbit and let

```math
0\le\tau_1\lt\tau_2\lt\cdots
```

be its zero-based division times.  If the sequence is infinite, then

```math
\boxed{
D_K(n)=\omega(\log K)
\quad\Longleftrightarrow\quad
\frac{\log\tau_m}{m}\longrightarrow0.
}
```

Indeed, at time $\tau_m$ the division count is $m$, up to an immaterial
indexing shift, and between successive division times it is constant.  If an
orbit has only finitely many division steps, the target already fails for that
orbit and must be ruled out separately when choosing a candidate map.

For all candidate families considered so far, an elementary size estimate
gives constants $A\gt1$ and $C$ such that

```math
\tau_{m+1}\le A\tau_m+C
```

for all sufficiently large $m$.  This proves only
$D_K(n)=\Omega_n(\log K)$.

## 3. What failure would force

Assume the affine upper recurrence above and suppose the superlogarithmic
target fails.  Then there are constants $\delta,\eta\gt0$ and arbitrarily large
$M$ for which

```math
\#\lbrace m\lt M:\tau_{m+1}\ge(1+\delta)\tau_m\rbrace\ge\eta M.
```

This is a proved averaging lemma.  To see its source, telescope

```math
\log\tau_M-\log\tau_1
=\sum_{m\lt M}\log\frac{\tau_{m+1}}{\tau_m}.
```

Failure makes the left side linear in $M$ along a subsequence, while the
affine upper recurrence uniformly bounds each sufficiently late summand.
Therefore a positive proportion of the summands must be bounded away from
zero.

Positive upper density has a useful combinatorial consequence.  The set of
proportional-gap indices is **piecewise syndetic**: there is one integer
$R\ge1$ such that, for every $q$, it contains indices

```math
m_1\lt m_2\lt\cdots\lt m_q,
\qquad
m_{i+1}-m_i\le R.
```

These chains can be chosen arbitrarily far out.  Thus a bad orbit would not
merely contain isolated long expansion runs.  It would contain arbitrarily
long chains of them, separated by a uniformly bounded number of division
blocks.

In a one-expanding-residue map, put

```math
L_m=\tau_{m+1}-\tau_m-1.
```

The proportional-gap condition is

```math
L_m\ge\delta\tau_m-1,
```

so all sufficiently late members of such a chain are very long expansion
runs.

## 4. Prime-power normal form

Now restrict to a map with one expanding residue $e$, expansion parameters
$a,c$, and

```math
a=p^g
```

for a prime $p\nmid B$ and an integer $g\ge1$.  Define

```math
h=ae-Bc,
\qquad
X(n)=(a-B)n-h.
```

In this centered integer coordinate, every step has one of the forms

```math
BX'=aX
```

on the expansion branch, or

```math
BX'=X-b_r,
\qquad
b_r=(a-B)r+(B-1)h,
```

on a division branch $r\ne e$.  The finitely many division corrections
$b_r$ are nonzero.

Index consecutive expansion blocks so that $L_i$ is the length of block $i$.
Factor the state at the beginning of that block as

```math
X=B^{L_i}u_i,
\qquad B\nmid u_i.
```

The division step after the preceding block gives the exact recurrence

```math
\boxed{
B^{r_i}u_i=a^{L_{i-1}}u_{i-1}+d_i,
\qquad
r_i=L_i+1,
}
```

where $d_i=-b_r$ belongs to a fixed finite set of nonzero signed integers.

## 5. Proved reset at the multiplier prime

Write

```math
t_i=v_p(d_i),
\qquad
d_i=p^{t_i}\varepsilon_i,
\qquad
p\nmid\varepsilon_i,
```

and let $t_{\max}$ be the largest possible $t_i$.  If

```math
gL_{i-1}\gt t_i,
```

then the two terms on the right side of the block recurrence have unequal
$p$-adic valuations.  Hence

```math
\boxed{v_p(u_i)=t_i.}
```

Call a block index $j$ **marked** when

```math
gL_j\gt t_{\max}.
```

The endpoint after a marked block therefore has the controlled factorization

```math
u_{j+1}=p^{t_{j+1}}w_{j+1},
\qquad
p\nmid w_{j+1}.
```

Because proportional runs become arbitrarily long, every sufficiently late
proportional-gap index in a hypothetical bad orbit is marked.

## 6. Proved elimination of the short intervening blocks

Let $j\lt k$ be marked indices.  Eliminating the block recurrences between their
controlled endpoints gives

```math
\boxed{
B^{R_{j,k}}w_{k+1}
=p^{S_{j,k}}w_{j+1}+C_{j,k},
}
```

where

```math
R_{j,k}=\sum_{i=j+2}^{k+1}r_i,
\qquad
A_{j,k}=\sum_{h=j+1}^{k}L_h,
```

```math
S_{j,k}=gA_{j,k}+t_{j+1}-t_{k+1},
```

and

```math
C_{j,k}
=\sum_{i=j+2}^{k+1}
\varepsilon_i
p^{g\sum_{h=i}^{k}L_h+t_i-t_{k+1}}
B^{\sum_{h=j+2}^{i-1}r_h}.
```

All displayed exponents of $p$ are nonnegative.  The final summand is a
$p$-adic unit, so

```math
v_p(C_{j,k})=0.
```

If $k-j\le R$, then $C_{j,k}$ is a sum of at most $R$ monomials from one
fixed finitely generated multiplicative group: the generators come only from
$p$, the prime divisors of $B$, and the finite correction alphabet.

Combining this identity with the failure structure gives the strongest proved
reduction currently available for this route:

> If the target fails, then one fixed ordinary integer orbit contains
> arbitrarily long chains of endpoint cores joined by the boxed equations,
> with a uniform bound on the number of fixed-group monomials in every
> correction.

The short blocks between long gaps have been removed.  Their local
$p$-adic cancellations are not the remaining problem.

## 7. The $4/3$ diagnostic example

The smallest example studied in detail is

```math
T(3q)=q,
\qquad
T(3q+1)=4q+2,
\qquad
T(3q+2)=q.
```

This is only a diagnostic candidate; it is not known to satisfy the target.
With $X=n+2$, its branches become

```math
3X'=
\begin{cases}
4X,&3\mid X,\\
X+2,&X\equiv1\pmod3,\\
X+4,&X\equiv2\pmod3.
\end{cases}
```

The block recurrence is

```math
3^{L_i+1}u_i=4^{L_{i-1}}u_{i-1}+d_i,
\qquad
d_i\in\{2,4\}.
```

If $L_{i-1}\ge2$, then

```math
u_i=2^{t_i}w_i,
\qquad
t_i=v_2(d_i)\in\{1,2\},
\qquad
\gcd(w_i,6)=1.
```

For two marked indices $j\lt k$, the macro link specializes to

```math
3^{R_{j,k}}w_{k+1}
=2^{S_{j,k}}w_{j+1}+C_{j,k},
```

with

```math
C_{j,k}
=\sum_{i=j+2}^{k+1}
2^{2\sum_{h=i}^{k}L_h+t_i-t_{k+1}}
3^{\sum_{h=j+2}^{i-1}(L_h+1)}.
```

Thus every bounded-spacing macro correction is a bounded sum of
$\{2,3\}$-units.  The endpoint cores $w$, however, are arbitrary positive
integers coprime to $6$.

When two controlled endpoints are adjacent, the especially simple equation

```math
3^r w=2^S v+1
```

appears.  It looks like a Pillai or $S$-unit equation, but the moving
coefficients $v,w$ are exactly what prevent the usual theory from applying.

## 8. Why the obvious local methods stop here

### The cores can introduce new primes

The reset controls the power of $p$ in an endpoint.  It does not bound the
size of $w_i$, its height, or its prime divisors outside the fixed primes of
the map.  Successive cores may acquire arbitrarily many new primes.  They are
not elements of a fixed $S$-unit group.

### Gcd estimates see only shared factors

Reducing a macro link modulo $\gcd(w_{j+1},w_{k+1})$ makes that gcd divide the
bounded-term correction.  This says nothing about the possibly enormous
coprime parts of the two endpoints.

### LTE and the Chinese remainder theorem do not give a contradiction

LTE is effective for fixed coefficients such as $3^r-2^S$; it does not give a
uniform bound for

```math
3^r w-2^S v=1
```

when $v,w$ move.  In fact, for every positive pair $r,S$, there are positive
$v,w$, both coprime to $6$, satisfying this equation.  Start with

```math
v\equiv-2^{-S}\pmod{3^r},
```

choose a lift that is odd and avoids the one residue modulo $3^{r+1}$ which
would add an extra factor of $3$, and set

```math
w=\frac{2^Sv+1}{3^r}.
```

The same Chinese-remainder flexibility solves the simultaneous local
congruences imposed on a shared endpoint core.

### Ordinary height bounds reproduce only the logarithmic estimate

An Archimedean bound for the endpoint cores or the correction grows at the
same exponential scale as the gap exponents.  Without new control of the
moving cores, the resulting inequality is equivalent to the already known
affine recurrence for $\tau_m$ and yields only $\Omega(\log K)$ divisions.

### Every finite itinerary is realizable

The [research state](../progress/research_state.md#proved-every-finite-residue-itinerary-is-realizable)
gives the canonical lifting proof that every finite residue word occurs on an
ordinary nonnegative orbit.  Consequently, for every finite $q$, some start
realizes a chain of $q$ proportional gaps and all its macro equations.  A
bounded local contradiction cannot work because that start may change with
$q$; the desired proof must use that unbounded chains would lie on **one fixed
ordinary integer orbit**.

### Fixed-rank $S$-unit theorems do not include the endpoints

The correction in each link has boundedly many terms from a fixed
multiplicative group.  Existing Subspace-Theorem results fix the number of
genuine $S$-unit variables.  Here:

- the endpoint cores are arbitrary integers, not fixed-group $S$-units; and
- the number of linked endpoints grows without bound.

For example, the finiteness theorem in Nair--Kumar--Rout,
[“Algebraic approximations to linear combinations of S-units”](https://arxiv.org/abs/2506.02898),
does not cover this moving-endpoint situation.  Treating the cores as extra
$S$-units would assume the missing conclusion.

## 9. Where the missing global information lives

Although every finite chain can be realized after changing the start, the
endpoints along a genuine counterexample orbit are not independent.  They are
all anchored at the same initial integer.

For the $4/3$ example, let $X_0=n+2$, let $\tau_i$ be the one-based sequence of
division times, and put

```math
\lambda_i=\tau_i-i+1.
```

Iteration gives the exact identity

```math
\boxed{
3^{\tau_{m+1}}u_m
=4^{\lambda_m}X_0
+\sum_{i=1}^m
d_i3^{\tau_i}4^{\lambda_m-\lambda_i}.
}
```

This formula remembers the fixed start, unlike an isolated macro link.  But
after removing the controlled power of $2$, it still does not put $w_m$ in a
fixed finite-rank multiplicative group.  It identifies the location of the
missing information without yet estimating it.

## 10. An explicit statement of the missing theorem

Here is a sufficient orbit-level statement in a form that exactly matches the
reduction.

### Candidate fixed-start macro-chain theorem — open

Fix a one-expanding-residue admissible map with prime-power multiplier, a
starting integer $n$, and constants $\delta\gt0$ and $R\ge1$.  Then there should
exist a bound

```math
Q=Q(n,\delta,R)
```

such that the orbit of $n$ has no chain of more than $Q$ indices

```math
j_1\lt j_2\lt\cdots\lt j_q
```

satisfying both

```math
j_{i+1}-j_i\le R
```

and

```math
L_{j_i}\ge\delta\tau_{j_i}-1
```

for every $i$, where $q\gt Q$.

Equivalently, for every fixed orbit and every $\delta\gt0$, the proportional-gap
indices are not piecewise syndetic.  Under the affine upper recurrence for
division times, this theorem would contradict the proved consequence of
failure and therefore establish

```math
D_K(n)=\omega(\log K).
```

The genuinely new arithmetic content would be a bound on the length of an
**orbit-compatible, fixed-start** system of macro equations.  The same claim
without the fixed-start condition is false because every finite itinerary is
realizable.

No theorem of this form is currently known, even for the $4/3$ diagnostic
map.

## 11. Plausible ways around the blocker

1. **A fixed-start Diophantine theorem.**  Combine the global anchor with all
   macro links at once, so that the ordinary integer $X_0$ replaces the
   independent endpoint variables.  This would require a growing-chain
   extension of present fixed-rank $S$-unit or Subspace-Theorem methods.

2. **A prime-growth or height budget along one orbit.**  Show that repeatedly
   creating the coprime parts needed by proportional gaps forces the endpoint
   heights, radicals, or new-prime content to grow faster than the exact
   global recurrence permits.  Pairwise gcd control alone is insufficient.

3. **A rationality-versus-lacunarity theorem.**  In the $B$-adic itinerary
   coding, every infinite word exists, but ordinary starting integers form a
   very special subset.  A theorem excluding exponentially sparse division
   symbols for rational or ordinary-integer inputs would bypass direct core
   estimates.

4. **More interacting fixed primes.**  Composite bases or several
   multiplicatively independent expansion multipliers might reset or compare
   more valuations.  Merely controlling any fixed finite list of primes is
   not enough; a successful construction must force interaction that also
   constrains the remaining moving core.

5. **A different admissible map with a global invariant.**  The project is not
   committed to the prime-power family or to the $4/3$ example.  Another map
   could provide monotonicity, an order structure, or a global representation
   that prevents long bounded-spacing chains.  Because every finite itinerary
   remains realizable, that invariant must distinguish one fixed ordinary
   start globally rather than forbid a finite residue pattern.

## Supporting context

This note is the canonical detailed derivation of the prime-power macro-chain
obstruction.  The broader baseline reductions, candidate families, and
proof-status summary are consolidated in the
[research state](../progress/research_state.md).

## Bottom line

The prime-power choice successfully removes the multiplier-prime valuations,
and macro elimination successfully removes all boundedly many intervening
blocks.  What remains is a chain of fixed-rank corrections joined by endpoint
cores of unrestricted size and prime support.

The next theorem cannot be another local congruence, LTE calculation, bounded
pattern exclusion, or direct fixed-rank $S$-unit citation.  It must exploit
that arbitrarily long chains would recur along one fixed ordinary integer
orbit—or it must use a different admissible map whose global structure avoids
moving endpoint cores altogether.
