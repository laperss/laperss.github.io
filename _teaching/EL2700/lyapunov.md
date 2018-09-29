---
title: "Lyapunov stability"
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
