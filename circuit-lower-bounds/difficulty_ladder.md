# A Difficulty Ladder for Unrestricted Circuit Lower Bounds

The [folder overview](README.md) fixes the circuit model.  Exact statements,
sources, implications, and quantifier caveats are in the [source and
implication audit](sources_and_implications.md).  Rows marked `draft` remain
under frontier red-team and are not yet asserted to be calibrated.

## Milestones

| Score | Milestone |
|---:|---|
| **0** | **Current rigorous frontier.** Some explicit family in $P$ has $C_{B_2}(f_n)\ge 3.1n-o(n)$. |
| draft | **[The Weakest unrestricted-circuit improvement](weakest_unrestricted_circuit_improvement.md).** A strict asymptotic improvement over the exact score-`0` theorem, with the hidden loss and length quantifier fixed rather than suppressed. |
| draft | Some language in $P$ requires $\omega(n)$-size $B_2$ circuits. |
| draft | Some language in $NP$ has no polynomial-size $B_2$ circuits. |
| draft | Some language in $NP$ requires $2^{n^{\Omega(1)}}$-size $B_2$ circuits. |
| draft | Some language in $NP$ requires $2^{\Omega(n)}$-size $B_2$ circuits. |

## Effort and skip annotation

Scores, cumulative expert-year estimates, and integer skip probabilities are
withheld until the weakening and strengthening audits determine a valid
chain.  In particular, the middle rows above are not assumed to be evenly
spaced: a proof may bypass a nominal growth regime, and an infinitely-often
bound does not automatically imply an almost-everywhere row.
