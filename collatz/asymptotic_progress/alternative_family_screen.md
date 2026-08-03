# Screening alternative admissible families

This note records why the project is not tied to the original `28/3` map and
which structural alternatives have actually been checked.  Labels have their
same meaning as in [`research_state.md`](research_state.md).

## Proved: the shifted `an+1` family is already contained in the search

Take `B=2`, `E={1}`, an odd `a>2`, and

```math
c=\frac{a+1}{2}.
```

Then the admissible map is

```math
T(n)=
\begin{cases}
n/2,&n\equiv0\pmod2,\\[1mm]
(an+1)/2,&n\equiv1\pmod2.
\end{cases}
```

The centered coordinate from the one-expanding-residue normal form is

```math
X(n)=(a-2)n+1,
```

and it satisfies

```math
2X(T(n))=
\begin{cases}
aX(n),&n\text{ odd},\\
X(n)+1,&n\text{ even}.
\end{cases}
```

Thus the clean singleton-coefficient alternative is not a new elementary
system: it is the generalized `an+1` problem.  For `a=3` it is exactly the
shortcut Collatz map.

The exact sparse series becomes

```math
X(n)=-\sum_{m\ge1}
a^{m-1}\left(\frac2a\right)^{\tau_m}
\qquad\text{in }\mathbb Q_2,
```

where `\tau_m` are the even (division) times.  The minus sign is a `2`-adic
identity and is not an Archimedean sign contradiction.

**Conclusion.**  This family is an excellent normal form for a new sparse
series theorem, but choosing a different odd `a` does not by itself evade the
parity-vector rationality obstruction.

## Proved: a wider negative-center family

Let `M` be a positive odd integer and choose any odd `a>2`.  Set

```math
c=\frac{a(M+1)}2-M.
```

This is a nonnegative integer, and in the coordinate `y=n+M` the map is

```math
y'=
\begin{cases}
ay/2,&y\text{ even},\\[1mm]
(y+M)/2,&y\text{ odd}.
\end{cases}
```

Expansion therefore occurs on even `y`, and an expansion run has exact length
`v_2(y)`.  If

```math
y_{\tau_m+1}=2^{L_m}u_m,
\qquad u_m\text{ odd},
```

then the block chain is

```math
2^{L_m+1}u_m=a^{L_{m-1}}u_{m-1}+M.
```

The ceiling/Collatz recurrence is the special case `M=1`, `a=3`.

**Conclusion.**  Varying the negative center supplies a real extra parameter
and can impose useful congruences, but it leaves the same variable-unit Pillai
chain.  No choice of fixed `M` found so far makes the units finite or bounded.

## Proved no-go: deterministic finite-state affine centers

One might try to replace the failed common-center construction by finitely many
states.  A state `s` carries a rational center `p_s`; reading a residue `r`
moves to a state `\delta(s,r)` and is required to satisfy

```math
f_r(p_s)=p_{\delta(s,r)},
```

so that distance from the moving center evolves homogeneously.  Allow the
deterministic transition function to be partial and allow the initial state to
depend on the entire itinerary.  Even with those freedoms, no finite system of
this kind can cover every residue itinerary.

To see this, let `F_s` be the set of infinite residue words readable from state
`s`.  Each `F_s` is closed in the full-shift topology.  If the finitely many
`F_s` cover the full shift, the Baire category theorem says that some `F_s`
contains a cylinder `[w]`.  After reading `w`, one reaches a state `t` from
which **every** infinite continuation is readable.  Let `U` be the nonempty
set of all such states.  Every residue transition is defined on every state in
`U`, and its successor is again in `U`.  Therefore the finite nonempty set

```math
P_U=\{p_s:s\in U\}
```

is invariant under every branch extension `f_r`.

Indeed, each branch extension is an invertible affine map

```math
f_r(x)=\alpha_rx+\beta_r,
```

with `\alpha_r=1/B` on a division branch and `\alpha_r=a_r/B>1` on an
expansion branch.  If a finite nonempty set `P` is invariant under `f_r`, then
iteration of `f_r` on `P` eventually enters a cycle.  An affine map with
positive slope different from `1` has no finite cycle other than its unique
fixed point.  Invertibility then forces every preperiodic point that lands on
that fixed point to have been the fixed point already.  Hence

```math
P=\{\text{the fixed point of }f_r\}.
```

It follows that all branch extensions have the same fixed point.  This is
impossible in every case:

- two division branches at residues `r_1\ne r_2` have distinct fixed points
  `-r_1/(B-1)` and `-r_2/(B-1)`;
- two expansion branches cannot have a common fixed point, by the
  common-center rigidity lemma in
  [`research_state.md`](research_state.md);
- if there is exactly one branch of each type, then `B=2`.  The sole division
  branch has fixed point `0`, while an expansion branch could fix `0` only if
  `h=ae-Bc=0`.  But `\gcd(a,B)=1` would then force `B\mid e`, impossible for
  `1\le e<B`.

**Conclusion.**  No deterministic finite-state choice of affine moving centers
can homogenize the full itinerary shift.  A finite transducer carrying
additional nonlinear data is not covered by this argument.

## Candidate directions that remain genuinely distinct

1. **Composite-base simultaneous valuations.**  Long gaps must be large at
   every prime dividing `B`.  This may improve a chained argument, although a
   fixed finite set of primes cannot by itself diagonalize the unbounded
   logarithmic constants.
2. **Several multiplicatively independent expansion multipliers.**  This gives
   a higher-rank `S`-unit chain rather than the singleton parity series.  It is
   only useful if the itinerary forces the ranks to interact; arbitrary finite
   words prevent a purely local argument.
3. **Balanced signed remainders.**  The family already recorded in
   [`research_state.md`](research_state.md) has bounded symmetric correction
   digits and may permit Archimedean cancellation absent from the positive
   ceiling identity.
4. **A structured valuation theorem for the entire chain.**  This remains the
   clearest route that would apply across several families rather than merely
   renaming a generalized `an+1` problem.

Neither the full residue itinerary nor its binary expansion/division
projection can be made a synchronous finite-state transform of the ordinary
base-`B` digits.  The projected case reduces to an affine symmetry of a
deleted-digit `B`-adic Cantor set and is ruled out using Furstenberg's
topological multiplicative-independence theorem; see
[`finite_state_coding_obstruction.md`](finite_state_coding_obstruction.md).
Thus changing to a higher base does not open a finite-state coding shortcut.

Choosing a prime-power multiplier gives a different exact simplification: the
prime factors of the multiplier have bounded valuations in endpoint units
following long expansion runs.  The proof and the especially small candidate
`(B,e,a,c)=(3,1,4,2)` are in
[`prime_factor_reset.md`](prime_factor_reset.md).  Prime factors outside the
multiplier remain uncontrolled, so this is not yet an `S`-unit reduction.

## Refuted shortcut: a positive multiplier with a short `B`-adic period

The inverse sparse series would become elementary if the expansion multiplier
`a` behaved like a root of unity modulo every power of `B`: its inverse powers
would then have a uniformly short coefficient pattern.  No admissible positive
integer multiplier can do this.

Fix a prime `p\mid B`.  Since `\gcd(a,p)=1`, choose an exponent `t` for which
`a^t\equiv1\pmod p` (modulo `4` in the usual exceptional `p=2` case).  The
integer `a^t-1` is nonzero because `a>B\ge2`.  Thus

```math
s=v_p(a^t-1)<\infty.
```

The lifting-the-exponent formula then gives, for all sufficiently large `k`,

```math
\operatorname{ord}_{p^k}(a)
=\operatorname{ord}_{p^s}(a)\,p^{k-s}
```

up to the standard harmless adjustment at `p=2`.  In particular the order is
exponential in the precision `k`, not polynomial in `k`.

The only rational integers that are roots of unity in every relevant `p`-adic
field are `1` and (where applicable) `-1`; neither is an admissible positive
multiplier greater than `B`.  Special choices such as `a=B+1`, a Mersenne
number, or a Fermat-type number may simplify low-order congruences, but they do
not make the inverse powers eventually periodic with a precision-independent
period.

## Refuted shortcut: an integer-base expansion after grouping steps

Grouping several expansion branches cannot turn the expanding part into an
integer-base digit shift.  If an expansion word has multipliers
`a_{r_1},\ldots,a_{r_L}`, its affine extension has slope

```math
\frac{a_{r_1}\cdots a_{r_L}}{B^L}.
```

Every numerator factor is coprime to `B`, so this fraction is already in lowest
terms and has denominator `B^L>1`.  In particular it is never an integer.  The
same observation rules out a rational Pisot shortcut: a rational algebraic
integer is an integer.

Thus no finite macro-step can inherit the elementary eventual periodicity of
ordinary integer-base expansions.  Any successful digit argument has to deal
with a genuinely rational base at every scale.
