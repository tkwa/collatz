# An Extremely Weak Collatz-like Conjecture

Let \(\mathbb N_0=\{0,1,2,\ldots\}\).

Choose an integer \(B\ge 2\), a nonempty set
\[
E\subseteq\{1,\ldots,B-1\},
\]
and, for each \(r\in E\), integers \(a_r,c_r\) satisfying
\[
a_r>B,\qquad \gcd(a_r,B)=1,\qquad c_r\in\mathbb N_0,
\]
together with the negative-drift condition
\[
\prod_{r\in E} a_r < B^B.
\]

For \(n\in\mathbb N_0\), write uniquely
\[
n=Bq+r,\qquad 0\le r<B,
\]
and define
\[
T(n)=
\begin{cases}
q, & r\notin E,\\[2mm]
a_rq+c_r, & r\in E.
\end{cases}
\]

## Conjecture

There exist choices of \(B\), \(E\), and \(\{(a_r,c_r)\}_{r\in E}\) satisfying the conditions above such that
\[
\forall n\in\mathbb N_0\;\exists k\ge 0:\qquad T^{\,k}(n)=0.
\]

Equivalently: some nontrivial relatively-prime residue-affine map with negative geometric-mean drift has every nonnegative integer orbit terminate at \(0\).
