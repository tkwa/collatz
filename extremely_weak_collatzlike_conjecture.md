# An Extremely Weak Collatz-like Conjecture

Let $\mathbb N_0=\lbrace 0,1,2,\ldots\rbrace$.

Choose an integer $B\ge 2$, a nonempty set

```math
E\subseteq\lbrace 1,\ldots,B-1\rbrace,
```

and, for each $r\in E$, integers $a_r,c_r$ satisfying

```math
a_r>B,\qquad \gcd(a_r,B)=1,\qquad c_r\in\mathbb N_0,
```

together with the negative-drift condition

```math
\prod_{r\in E} a_r < B^B.
```

For $n\in\mathbb N_0$, write uniquely

```math
n=Bq+r,\qquad 0\le r<B,
```

and define

```math
T(n)=
\begin{cases}
q, & r\notin E,\\[2mm]
a_rq+c_r, & r\in E.
\end{cases}
```

## Conjecture

There exist choices of $B$, $E$, and $\lbrace(a_r,c_r)\rbrace_{r\in E}$ satisfying the conditions above such that

```math
\forall n\in\mathbb N_0\;\exists k\ge 0:\qquad T^{\,k}(n)=0.
```

Equivalently: some nontrivial relatively-prime residue-affine map with negative geometric-mean drift has every nonnegative integer orbit terminate at $0$.
