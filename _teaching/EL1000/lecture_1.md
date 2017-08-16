---
title: "Terminologi, Stegsvar & Poler"
layout: single
author_profile: false
share: false
use_math: true
comments: true
sidebar:
  nav: "teaching"
---

## Innehåll

* Dynamiska system/Differentialektationer
* Poler och nollställen - varifrån kommer de och hur spelar de roll?
* Stegsvar - hur kan vi relatera ett system till dess stegsvar?

## Differentialekvationer
Vi behandlar linjära differentialekvationer på formen:

\begin{align}
\frac{d^ny(t)}{dt^n} &+ a_1 \frac{d^{n-1}y(t)}{dt^{n-1}} + \ldots + a_n y(t) \nonumber \\\\ &= b_0  \frac{d^{n}u(t)}{dt^{n}} + b_1 \frac{d^{n-1}u(t)}{dt^{n-1}} + \ldots + b_n  u(t)
\end{align}

Svaret till en sådan ekvation kan vi räkna ut från en  homogen lösning och en en partikulärlösning. Den homogena lösningen fås genom att vi löser det karakteristiska polynomet: 
\begin{equation}
(\lambda^n + a_1 \lambda^{n-1} + \ldots + a_n) = 0
\end{equation}
vi får genom att lösa denna ut $n$ rötter, som antingen kan vara 
* reella tal: $\lambda = p$
* komplexa talpar: $\lambda_1 = a+bi,~~\lambda_2 = a-bi$

I klassisk reglerteknik löser vi ofta problem i { frekvensdomänen}. Med hjälp av {Laplacetransformen} får vi ut överföringsfunktionen för systemet:

\begin{align}
Y(s) = \underbrace{\frac{b_0s^n + b_1s^{n+1} + \ldots + b_n}{s^n + a_1 s^{n-1} + \ldots +a_n}}_{G(s)} U(s)
\end{align}
Rötterna till täljaren hos överföringsfunktionen $G(s)$ är systemets nollställen, och rötterna till nämnaren är systemets poler. Notera hur polerna motsvaras av lösningarna till den karakteristiska ekvationen.


### Exempel: första ordningens system
\begin{align\*}
T \dot y(t) &+  y(t) = K u(t) \\\\ &\implies G(s) = \frac{b}{s+a}
\end{align\*}
Har en reell pol i $s=-a$


### Exempel: andra ordningens system
Systemet givet av: 
\begin{align\*}
\ddot y(t) &+ 2\zeta \omega_0 \dot y(t)  + \omega_0^2 y(t) = \omega_0^2 u(t)  \\\\ &\implies G(s) = \frac{\omega_0^2}{s^2+2\zeta\omega_0 s + \omega_0^2}
\end{align\*}

har två poler som ligget i $s = \omega_0(-\zeta \pm i\sqrt{1-\zeta^2})$. Polerna kan anta reella vörden eller bilda ett komplext talpar beroende på värdet på den relativa dämpningen $\zeta$. 


## Pol/nollställe-diagram
Beteendet hos ett dynamiskt system kan beskrivas med positionen på systemets poler och nollställen. Om vi vet hur polerna och nollställena är placerade kan vi avgöra stabiliteten hos systemet, och även om det oscillerar, är snabbt, m.m. Några tumregler är:
* De poler som är närmast origo kommer att dominera över de långt borta. Alternativt kan vi uttrycka detta som att snabba poler (stor realdel)  försvinner snabbare än långsamma poler (liten  realdel). 
* Den odämpade egenfrekvensen $\omega_0$ mäts från vinkeln mellan realaxeln och polen. Man vill oftast att polerna ska ligga innanför en kon enligt figur \ref{fig:pn} för att systemet inte ska bete sig för oscillerande.

## Stegsvar
Stegsvar kan användas både för att karakterisera beteendet hos ett system, och även för att identifiera parametrar hos ett okänt system. Svegsvaret är den utsignal vi får när vi som insignal ger:

$$
u(t) = \left\{ 
\begin{array}{lr}
1,  &\text{if } t \geq \tau  \\
0,  &\text{if } t < \tau 
\end{array}
\right.
$$

När vi betraktar stegsvaret kan vi observera flera karaktärsdrag i svaret, bland dessa kan nämnas:
* stabilitet
* oscillationer 
* slutvärde
* översläng 
* tidsfördröjning
* snabbhet

## Övningsuppgifter
2.5, 2.10, 2.11

