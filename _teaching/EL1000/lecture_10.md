---
title: Styr- och observerbarhet
permalink: /teaching/EL1000/styrbarhet/
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "teaching"
---

## Styrbarhet och Observerbarhet
>__Styrbarhet.__ _Ett tillstånd $x^\star$ kallas för styrbart om en insignal existerar s.a. den tar tillståndsvektorn $x$ från origo till $x^\star$på ändlig tid.
>Ett system kallas för styrbart om alla tillstånd är styrbara._

Styrbarhetsmatrisen ges av:

\begin{equation}
\mathcal{S} = \begin{bmatrix}
B & AB & A^2B & \ldots & A^{n-1}B
\end{bmatrix}
\end{equation}

Styrbara tillstånd ligger i $\mbox{span}(\mathcal{S})$. Systemet är styrbart om $\mbox{span}(\mathcal{S}) = \mathbb{R}^n$, vilket är ekvivalent med att $\det\mathcal{S} \neq 0$.

>__Observerbarhet.__ _Ett tillstånd $x^\star$ kallas för icke-observerbart om utsignalen är identiskt 0 då $x(0) = x^\star$ och insignalen är 0. 
>Ett system kallas för icke-observerbart om alla tillstånd är icke-observerbara._

Observerbarhetsmatrisen ges av:

\begin{equation}
\mathcal{O} = \begin{bmatrix}C\\\\ CA \\\\ \vdots \\\\ CA^{n-1}\end{bmatrix}
\end{equation}

Icke-observerbara tillstånd ligger i $\mbox{ker}(\mathcal{O})$.
Systemet är observerbart om det saknar icke-observerbara tillstånd, vilket är ekvivalent med att $\mbox{rank}(\mathcal{O}) = n$ d.v.s. om $\det(\mathcal{O}) \neq 0$.


## Övningsuppgifter
8.13, 8.10, 9.1
