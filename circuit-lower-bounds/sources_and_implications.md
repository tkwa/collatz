# Sources and Implication Audit

This audit is under active construction.  It separates published theorems
from logical implications and subjective calibration.

## Fixed circuit model

The primary model is nonuniform, single-output, fan-in-at-most-two Boolean
circuits over the complete basis $B_2$, with arbitrary fan-out and size equal
to the number of non-input gates.  Function families have one function on
exactly $n$ input bits for each $n$.  Language bounds refer to characteristic
functions under the ordinary bit-length encoding; padding changes the input
length and is therefore not silently allowed.

## Current theorem

**[proved]** Jiatu Li and Tianqi Yang prove a $3.1n-o(n)$ lower bound for
affine dispersers, a class with explicit constructions in $P$, over the
complete fan-in-two basis.  Primary publication: “$3.1n-o(n)$ Circuit Lower
Bounds for Explicit Functions,” *STOC 2022*,
[doi:10.1145/3519935.3519976](https://doi.org/10.1145/3519935.3519976).

**[proved/current-status evidence]** Carmosino, Dang, and Jackman describe
Li--Yang as the state of the art and gate elimination as the only known method
for explicit lower bounds against general Boolean circuits in 2026:
[arXiv:2604.23958](https://arxiv.org/abs/2604.23958).

The exact affine-disperser dimension, uniform construction, lower-order loss,
and “all sufficiently large lengths” wording must be copied from the primary
theorem before the Weakest row is finalized.

## Implication checks still required

1. A lower bound for a language in $P$ is also one for a language in $NP$,
   but changing the witness language between rungs is harmless only when the
   higher existential statement still supplies a witness for the lower one.
2. An eventual lower bound $2^{\Omega(n)}$ implies an eventual
   $2^{n^{\Omega(1)}}$ bound, which implies superpolynomial size and hence
   $NP\nsubseteq P/poly$ when the witness language lies in $NP$.
3. $NP\nsubseteq P/poly$ is equivalent to the existence of an $NP$ language
   without polynomial-size circuit families.  It does not select one fixed
   polynomial exponent that fails at every sufficiently large length.
4. $P\ne NP$ does not presently imply $NP\nsubseteq P/poly$; the reverse
   implication holds because $P\subseteq P/poly$.
5. An infinitely-often lower bound need not imply the corresponding eventual
   lower bound.  No arrow may change this quantifier without an explicit
   padding or completeness argument that preserves the model and encoding.

## Open-status rule

Every positive row needs a primary or authoritative source supporting its
open status in the exact model.  Absence of a known proof is not recorded as
certification.  Where the literature only supports a nearby statement, this
folder will state that limitation rather than strengthen it by paraphrase.
