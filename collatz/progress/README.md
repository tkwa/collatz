# Progress

This folder is the deliberately small working record for the all-start
superlogarithmic contraction target

```math
D_K(n)=\omega(\log K).
```

It contains exactly two documents:

- this overview, which fixes the scope and proof standard; and
- [`research_state.md`](research_state.md), the consolidated account of the
  baseline reductions, proved partial results, refuted shortcuts, candidate
  families, and current arithmetic frontier.

The target is existential in the map and universal in the starting value.  A
proof for any admissible parameter choice is in scope.  Finite computation,
negative average drift, or good behavior on a bounded range cannot establish
the target, because increasingly long expanding residue words may occur at
increasingly large starts.

The current conjecture statements live one level up.  In particular, see the
[all-start nonnegative conjecture](../nonnegative_superlogarithmic_contraction.md),
the [signed relaxation](../signed_superlogarithmic_contraction.md), and the
[moving weakest conjecture](../weakest_collatzlike_conjecture.md).  The main
prime-power obstruction has its own standalone derivation in
[`../blockers/moving_endpoint_core_obstruction.md`](../blockers/moving_endpoint_core_obstruction.md).

Any claimed progress must label proved statements, candidate steps, and
refuted routes separately.  A completed proof belongs here with the supporting
lemmas and checks needed to audit it; exploratory scratch work should remain
outside the committed main branch.
