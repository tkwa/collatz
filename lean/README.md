# Lean statement library

The Lean project formalizes the quantifier structure and mathematical objects
in the repository's conjecture statements.  A declaration such as
`ClassicalCollatz : Prop` is a statement, not an axiom or a proof.

The checked verification route is Docker, because native downloaded Lean
executables are blocked by Santa on the development Mac:

```sh
docker build --file lean/Dockerfile --tag collatzbench-lean .
```

The project is pinned by `lean-toolchain` and `lakefile.toml`.  The coverage
manifest tracks each in-scope statement to its Lean declaration and
distinguishes exact definitions from intentionally typed schemas.
