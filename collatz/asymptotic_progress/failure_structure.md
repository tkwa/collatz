# What failure of the target must look like

This note sharpens the elementary consequence of a hypothetical failure of

```math
D_K(n)=\omega(\log K).
```

The statements below are proved.  They apply to any fixed orbit whose division
times have a uniform affine upper recurrence, including every candidate family
currently recorded in this folder.

## Division-time formulation

Let

```math
0\le \tau_1<\tau_2<\cdots
```

be the zero-based division times of one orbit.  If there are only finitely many
division times, the target already fails in the strongest possible way, so in
what follows the sequence is assumed infinite.  As recorded in
[`research_state.md`](research_state.md),

```math
D_K(n)=\omega(\log K)
\quad\Longleftrightarrow\quad
\frac{\log\tau_m}{m}\longrightarrow0.
```

## Positive-density proportional-gap lemma

Assume that, for constants `A>1` and `C`,

```math
\tau_{m+1}\le A\tau_m+C
```

for every sufficiently large `m`.  If the target fails, then there are
constants `\delta>0` and `\eta>0`, and arbitrarily large `M`, for which

```math
\left|\{1\le m<M:\tau_{m+1}\ge(1+\delta)\tau_m\}\right|\ge \eta M.
```

Thus failure does not merely produce infinitely many proportional gaps.  It
produces a positive upper density of them among the division blocks.

### Proof

Failure gives a number `c>0` and arbitrarily large `M` such that

```math
\log\tau_M\ge cM.
```

After increasing the starting index, the affine upper recurrence gives

```math
1\le\frac{\tau_{m+1}}{\tau_m}\le A+1
```

for all remaining `m`.  Put

```math
x_m=\log\frac{\tau_{m+1}}{\tau_m},
\qquad H=\log(A+1).
```

The `x_m` lie in `[0,H]`, and telescoping shows, after absorbing the fixed
initial segment, that for arbitrarily large `M`,

```math
\sum_{m<M}x_m\ge\frac c2M.
```

Set `h=c/4`.  If `N_M` of the first `M` values satisfy `x_m\ge h`, then

```math
\frac c2M
\le N_MH+(M-N_M)h.
```

Consequently

```math
N_M\ge
\frac{c/2-h}{H-h}M
=\frac{c}{4H-c}M.
```

Taking

```math
\delta=e^h-1,
\qquad
\eta=\frac{c}{4H-c}
```

proves the claim (with a harmless reduction of `\eta` if a finite initial
segment was discarded).  `\square`

## Piecewise-syndetic long-gap corollary

Under the same hypotheses, there is a fixed integer `R` such that, for every
`q\ge1`, there are long-gap indices

```math
m_1<m_2<\cdots<m_q
```

with

```math
m_{j+1}-m_j\le R
```

for every `j<q`.  Moreover these chains can be chosen arbitrarily far out.

This is the standard piecewise-syndetic consequence of positive upper
density.  Let

```math
S=\{m:\tau_{m+1}\ge(1+\delta)\tau_m\}.
```

The positive-density lemma gives positive upper asymptotic, hence positive
upper Banach, density for `S`.  The piecewise-syndetic lemma says that a set of
integers with positive upper Banach density has a finite set `F` for which
`S+F` contains arbitrarily long intervals.  Translate `F` so that
`\min F=0` and put `R=2\max F+1`.  If a long interval is covered by `S+F`,
then, on ordering the points of `S` used in the cover, consecutive distinct
points are at most `R` apart.  Taking longer intervals supplies chains of
arbitrary length.  Discarding any fixed initial segment first makes the chains
arbitrarily far out.

The earlier bounded-spacing-pair statement is the case `q=2`.  The stronger
conclusion makes an unbounded-rank argument conceivable: one may accumulate
information through arbitrarily many proportional gaps along the same orbit.
It is not yet a proof, because finite-itinerary realizability permits every
finite chain for a suitably chosen starting integer, and the endpoint units
remain unrestricted.

## Refuted: a purely finite-cluster contradiction

The piecewise-syndetic corollary cannot be finished by proving that some fixed
finite pattern of proportional gaps is impossible.  For a one-expanding-residue
map, every finite residue itinerary is realizable by an ordinary nonnegative
integer.  In particular, fix `\delta>0`, define recursively

```math
L_m=\lfloor\delta\tau_m\rfloor
```

(with any harmless positive initial time), and form a finite word consisting
of `L_m` expansion symbols followed by one division symbol for each
`1\le m\le M`.  For every finite `M`, some nonnegative integer realizes that
whole word.  Its first `M` gaps all have the proportional-growth pattern.

Therefore no bound involving only a fixed number of adjacent blocks, with
constants independent of the starting value and of the location in the orbit,
can contradict failure.  A successful use of the bounded-chain certificate
must accumulate information anchored at the **same fixed starting integer** as
the number of clusters tends to infinity.  The unrestricted endpoint units in
[`bounded_chain_certificate.md`](bounded_chain_certificate.md) are not a
technical nuisance that can be discarded locally; finite-itinerary
realizability shows why they must carry the missing global information.

## Consequence for the ceiling-division family

For the ceiling family, write

```math
L_m=\tau_{m+1}-\tau_m-1.
```

The exact suffix certificate in
[`ceiling_gap_certificate.md`](ceiling_gap_certificate.md) says that the
division-state value ends in

```math
(B-1)^{L_m}(B-d_m)
```

in base `B`.  Hence failure of the target would force, at a positive upper
density of division indices, terminal blocks of `B-1` digits of length

```math
L_m\ge\delta\tau_m-1.
```

The piecewise-syndetic corollary sharpens this further: for one fixed `R`, the
orbit contains arbitrarily long chains of such proportional suffixes with at
most `R` division blocks between successive members.  It still falls short of
a contradiction because the short intervening blocks carry unrestricted
endpoint units, and every finite chain is locally realizable.
