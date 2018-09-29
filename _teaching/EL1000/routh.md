---
title: "Routh-Hurwitz stabilitetskriterium"
layout: single
author_profile: false
share: false
use_math: true
comments: true
sidebar:
  nav: "el1000"
---


Routh-Hurwitz-kriteriet[^1] kan användas om vi vill beräkna stabilitet av ett polynom $P(s)$ för hand. 

Det är särskilt enkelt för polynom av andra och tredje ordningen. 

### Andra ordningens polynom

\begin{equation}
P_2(s) = s^2 + a_1 s + a_0
\end{equation}

Rouths algoritm säger att systemet är stabilt om 
\begin{align\*} a_1>0 \\\\ a_0>0 \end{align\*}

### Tredje ordningens polynom

\begin{equation}
P_3(s) = s^3 + a_2 s^2 + a_1 s + a_0 
\end{equation}

Rouths algoritm säger att systemet är stabilt om 
\begin{align\*} a_2>0 \\\\ a_1>0 \\\\ a_2a_1>a_0 \end{align\*}


[^1]: [https://en.wikipedia.org/wiki/Routh%E2%80%93Hurwitz_stability_criterion](https://en.wikipedia.org/wiki/Routh%E2%80%93Hurwitz_stability_criterion)
