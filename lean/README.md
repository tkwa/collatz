# Lean statement library

The Lean project formalizes the quantifier structure and mathematical objects
in selected repository conjecture statements.  A declaration such as
`ClassicalCollatz : Prop` is a statement, not an axiom or a proof.

The supported Santa-safe validation path is Docker, because native downloaded
Lean executables are blocked on the development Mac:

```sh
docker build --progress=plain --file lean/Dockerfile --tag collatzbench-lean .
```

The Dockerfile fetches the pinned toolchain, mathlib sources, and compiled
dependency cache first. Its final `lake build` layer then runs with networking
disabled, so compiling this library neither fetches code nor exposes files
outside the Lean-only Docker context.

On a machine where native Lean executables are permitted, the corresponding
commands may instead be run directly:

```sh
lake update
lake exe cache get CollatzBench.lean
lake build
```

The project is pinned by `lean-toolchain` and `lakefile.toml`.  The
[coverage manifest](coverage.md) lists the included statements and explicit
exclusions.
