# Asymptotic progress

This folder contains work toward proving a universal superlogarithmic lower
bound

```math
D_K(n)=\omega(\log K)
```

for an admissible Collatz-like map.

Completed proofs must clearly distinguish proved lemmas from conjectural
steps, identify the map being studied, and include enough supporting
calculations or formal checks to audit every transition.

Current proved partial progress includes an explicit family with logarithmic
lower-bound constants tending to infinity with the base; see
[`unbounded_logarithmic_constants.md`](unbounded_logarithmic_constants.md).
This is a near miss, not a proof of the superlogarithmic target for one map.

The search is not committed to that family.  See
[`alternative_family_screen.md`](alternative_family_screen.md) for checked
alternatives and [`failure_structure.md`](failure_structure.md) for a sharpened
description of what any counterexample to the target would have to do.  The
resulting fixed-length block identity is in
[`bounded_chain_certificate.md`](bounded_chain_certificate.md).
The exact fixed-start Archimedean normalization and its remaining adelic
obstruction are recorded in
[`global_normalization.md`](global_normalization.md).
The failure of finite-state coding shortcuts for both the full residue
itinerary and its binary expansion/division projection is proved in
[`finite_state_coding_obstruction.md`](finite_state_coding_obstruction.md);
the projected case uses affine deleted-digit rigidity and Furstenberg's
topological multiplicative-independence theorem.  Meanwhile,
[`prime_factor_reset.md`](prime_factor_reset.md) records what structured
prime-power multipliers do and do not remove from the endpoint-unit problem.
The corresponding macro elimination across arbitrary short intervening blocks
is proved for the full prime-power family in
[`prime_power_macro_chains.md`](prime_power_macro_chains.md).
For the smallest prime-power candidate, the exact residual chain between odd
endpoint cores is in [`odd_core_chain.md`](odd_core_chain.md).
The exact arithmetic progression of possible endpoints after any fixed
itinerary, and the resulting freedom to prescribe all non-multiplier-prime
valuations locally, is proved in
[`endpoint_arithmetic_progressions.md`](endpoint_arithmetic_progressions.md).
The [`nearby_prime_family.md`](nearby_prime_family.md) construction combines
unbounded logarithmic constants across maps with endpoint cores coprime to
both a prime base and a prime expansion multiplier.
The exact subexponential dependence required from a growing-rank valuation
theorem, and its staircase-polynomial formulation for the ceiling family, are
recorded in
[`uniform_rank_valuation_target.md`](uniform_rank_valuation_target.md).
