# Lean statement library

The Lean project formalizes the quantifier structure and mathematical objects
in the repository's conjecture statements.  A declaration such as
`ClassicalCollatz : Prop` is a statement, not an axiom or a proof.

Run:

```sh
lake exe cache get
lake build
```

The project is pinned by `lean-toolchain` and `lakefile.toml`.  The coverage
manifest will track each Markdown source to its Lean declaration and will
distinguish exact executable definitions from intentionally abstract schemas
for conjectures whose Markdown statement is itself schematic.
