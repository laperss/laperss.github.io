---
title: "Infinite-horizon LQR"
permalink: /teaching/EL2700/infinite_horizon_lqr/
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
---

### Problem statement

\begin{equation}
\mbox{minimize}\quad J_\infty(z) = \sum_{t=0}^{\infty} x_t^TQx_t + u_t^TRu_t
\end{equation}

$
\mbox{where}\quad
x_{t+1} = Ax_t + B u_t, \quad
x_0 = z
$

$
\mbox{and}\quad
Q  \succ  0,\quad
R  \succ  0
$


__Assumptions__

1. $(A,B)$ is controllable. This means that whatever the initial condition, there exists a sequence of inputs that drive the system to zero, and as a result, that the cost function is finite.
2. $(A,Q^{1/2})$ is observable. With this assumption, all states are considered in the cost function which leads to stability guarantees. 


__Theorem__

The optimal control to the system (1) is a static linear feedback

$
u_t = -L x_t
$

with

$
L = (R+B^TPB)^{-1}B^TPA
$

$
P = Q + A^TPA - A^TPB(R+B^TPB)^{-1}B^TPA
$

The closed-loop system is exponentially stable. 