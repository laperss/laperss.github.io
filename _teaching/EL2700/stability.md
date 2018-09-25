---
title: "Stable equlibria"
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
---

## Stability
The equlibrium point is:

* __Stable__ (in the sense of Lyapunov) if for each $\epsilon\geq0, \exists\delta(\epsilon)>0$ s.t:
\begin{equation}
\Vert x(0) \Vert < \delta \implies \Vert x(t) \Vert \leq \epsilon,\quad\forall t\geq 0
\end{equation}

* __Unstable__ if it is not stable

* __Asymptotically stable__ if it is stablem and $\exists \delta>0$ s.t.
\begin{equation}
\Vert x(0) \Vert < \delta \implies \lim_{t\to\infty} x(t) = 0
\end{equation}

* __Exponentially stable__ if $\exists \delta, \alpha,\beta > 0$ s.t.
\begin{equation}
\Vert x(0) \Vert < \delta \implies   \Vert x(t) \Vert  < \beta e^{-\alpha t},\quad \forall t \geq 0
\end{equation}



## Stability for MPC
The main results on stability of MPC are based on Lyapunov theory.

* A continuous function $\alpha : [0,a)\to  [0,\infty)$ is said to belong to the class $\mathcal{K}$ if it is strictly increasing, and $\alpha(0)= 0$.
* A continuous function $\alpha : [0,a)\to  [0,\infty)$ is said to belong to the class $\mathcal{K}_\infty$ if it belongs to class $\mathcal{K}$, and is unbounded. 
* A continuous function $\beta : [0,a)\times[0,\infty) \to  [0,\infty)$ is said to belong to the class $\mathcal{KL}$ if for a fixed $s\_* $, the function $\beta(r,s\_\*) $ belongs to $\mathcal{K}$, and for a fixed $r\_\* $, the function $\beta(r\_{*},s)\to 0$ as $s\to\infty$.

A state $x^\star$ is said to be asymptotically stable for $x(t+1) = f(x)$ on a forward invariant set $\mathcal{Y}$ if 
\begin{equation}
\Vert x(n) - x^\star \Vert \leq \beta(\Vert x(0) - x^\star) \Vert, n)
\end{equation}
holds for all $x\in\mathcal{Y}$ and $n\in\mathbb{N}.$
To check this condition we use Lyapunov functions. 
A function $V: Y\to \mathbb{R}$ is called a Lyapunov function if for all $x\in\mathcal{Y}$

1.  There exists functions $\alpha_1, \alpha_2 \in \mathcal{K}_\infty$ such that
$$
\alpha_1(\Vert x  - x_\star \Vert) \leq V(x)  \leq \alpha_2(\Vert x  - x_\star \Vert) 
$$
2. There exists a function $\alpha_V \in \mathcal{K}$ such that
$$
 V(x(t+1))  \leq  V(x(t)) - \alpha_V(\Vert x  - x_\star \Vert) 
$$


__Theorem__
 If there for the system $x(t+1) = f(x)$ exists a Lyapunov function $V(x)$ on a forward invariant set $\mathcal{Y}$, then $x_\star$ is an asymptotically stable equlibrium on $\mathcal{Y}$. 


Some examples of when stability can be proven: 
* For the infinite horizon case
* With terminal constraint $x(N) = x^\star$ where $x^\star$ is an equilibrium. 
  * Online optimization may become harder
  * If we want a large feasible set $\mathbb{X}_N$ we typically need a large optimization horizon $N$
  * System needs to be controllable to $x^\star$ in finite time
  * Not very often used in industrial practice

* Add local Lyapunov function $F$ for the equilibrium $x^\star$ as terminal cost, and impose a region $x(N) \in \mathbb{X}_0 $ as a terminal constraint. 
  * Yields easier online optimization problems, but additional analytical effort
  * Yields larger feasible sets, but large feasible set still needs a
large optimization horizon $N$
  * Does not need exact controllability to $x^\star$
  * Hardly ever used in industrial practice

