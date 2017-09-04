---
title: "Dämpning, Rotort"
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "teaching"
---

## Rotort
Vi har tidigare (uppgift 3.1, exempelsamling) sett hur storleken på återkopplingen kan påverka polernas placering. Nu ska vi mer formellt titta på detta samband med hjälp av _rotorter_[^1]. 

Detta görs genom att betrakta polekvationen under olika återkopplingar. Anta att vi återkopplat vårt system

$$
G(s) = \frac{20}{s^2+10s + 29}
$$

med regulatorn $F(s) = k_P + \frac{1}{s}k_I.$ Polekvationen blir då: 
\begin{align}
1 + F(s)G(s) &= 0 \implies\nonumber \\\\ s^3+10s^2 + (29+20k_P)s + 20k_I &= 0 \nonumber 
\end{align}
Vi är intresserade av hur polernas placering beror på $k_P$ och $k_I$. Vi börjar med att kolla på hur de beror på $k_P$. Därför delar vi upp ekvationen i två polynom: 

$$
\underbrace{s^3+10s^2 + 29s + 20k_I}_{P(s)} + k_P\cdot\underbrace{20s}_{Q(s)} = 0.
$$
Vi kan nu skriva ekvationen som:
\begin{equation}\label{eq:root_locus1}
P(s) + K \cdot Q(s) = 0 \implies \frac{P(s)}{Q(s)} = -K
\end{equation}
där $P(s)$ är ett polynom av $n$:te graden och $Q(s)$ är ett polynom av $m$:te graden. Det är rötterna till denna ekvation som vi plottar som en funktion av $K$ när vi ritar en rotort. 

__Exempel: Att rita en rotort__

Vi ritar ut varje pols förflyttning som en ``gren''. Totalt finns $n$ st grenar. 
* Ändpunkter: Rötterna till $Q(s)$ motsvarar $K = \infty$ [$m$ st]
* Startpunkter: Rötterna till $P(s)$ motsvarar $K = 0$ [$n$ st] 
* $a_1 = \sum{startpunkter}$, $b_1 = \sum{\ddot andpunkter}$
* Asymptoter: Om $m<n$ kommer $(n-m)$ grenar gå mot oändligheten. \\ De utgår från $-\frac{a_1-b_1}{n-m}$ i riktningarna $\frac{\pi}{n-m}(1+2k)$ då $k=0,\ldots,n-m-1$
* Vi skär den imaginära axeln då $P(i\omega) + KQ(i\omega) = 0$

## Övningsuppgifter
3.3, 3.6, 3.7


[^1]: [https://en.wikipedia.org/wiki/Root_locus](https://en.wikipedia.org/wiki/Root_locus)
