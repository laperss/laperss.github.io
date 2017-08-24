---
title: "Förkunskapskrav"
layout: single
author_profile: false
share: false
use_math: true
comments: true
sidebar:
  nav: "teaching"
---

## Innehåll
Innan kursen påbörjas förväntas studenten ha vissa förkunskaper. Några bitar som ska kunnas men ofta behövs repeteras är:

* [Imaginära tal](#imaginära-tal)
* [Differentialekvationer](#differentialekvationer)
* [Exempel: Första ordningens system](#exempel-första-ordningens-system)
* [Linjärisering](#linjärisering)

## Imaginära tal
Ett imaginärt tal består av en realdel och en imaginärdel. De två vanligaste representationerna för imaginära tal är __rektangulär form__ och __polär form__, se [figur](#imaginary_figure).

$$
z = \underbrace{a + bi}_{Rektangulär} = \underbrace{re^{i\theta}}_{Polär}
$$

Båda representationer har sina fördelar. Rektangulär form är smidig vid addition av imaginära tal, och polär form har fördelen att vi direkt kan räkna ut både belopp (storlek) och argument (vinkel):

\begin{align}
|z| & = \sqrt{a^2+b^2}=r \nonumber \\\\\arg(z) & = \arctan{\frac{b}{a}}~=\theta \nonumber
\end{align}

<a name="imaginary_figure"></a>
![Figure: Imaginary number definition]( {{ site.url }}{{ site.baseurl }}/assets/images/imaginary_fig.png ){:width="500px" .center-image}


## Differentialekvationer
I denna kurs behandlar vi linjära differentialekvationer på formen:

\begin{align}
\frac{d^ny(t)}{dt^n} &+ a_1 \frac{d^{n-1}y(t)}{dt^{n-1}} + \ldots + a_n y(t) \nonumber \\\\ &= b_0  \frac{d^{n}u(t)}{dt^{n}} + b_1 \frac{d^{n-1}u(t)}{dt^{n-1}} + \ldots + b_n  u(t) \nonumber
\end{align}

Lösningen beräknas som summan av en  __homogen lösning__[^1] (även kallad _allmän lösning_) och en en __partikulärlösning__[^2]:

$$
y = y_h + y_p
$$

__Homogen lösning__

Den homogena lösningen  är lösningen till motsvarande homogena differentialekvation, och fås från lösningen till det karakteristiska polynomet:
\begin{equation}
(\lambda^n + a_1 \lambda^{n-1} + \ldots + a_n) = 0 \nonumber
\end{equation}
Denna ekvation har  $n$ stycken rötter, som antingen är:
* reella tal: $\lambda = p$
* komplexa talpar: $\lambda_1 = a+bi,~~\lambda_2 = a-bi$

__Partikulärlösning__

Partikulärlösningen hittas ofta genom att man ansätter att en lösning ska ha en viss form, för att därefter lösa ut konstanterna. 

### Exempel: första ordningens system
Lös följande differentialekvation:
\begin{align}\label{eq:ex1}
10 \dot y(t) &+  y(t) = 2 u(t) 
\end{align}
med insignal $u(t) = 1$ då y(0) = 0.

Den homogena lösningen fås av:
\begin{align}
 \dot y(t) &+  \frac{1}{10}y(t) = 0 \nonumber  
\end{align}
Koeffecienteren är således $a_1 = \frac{1}{10}$ och det karakteristiska polynomet ger:

$$
\lambda + \frac{1}{10} = 0 \nonumber \implies \lambda = -\frac{1}{10} \implies y_h = Ce^{-1/10t}
$$

För partikulärlösningen ses direkt lösningen $ y_p = 2 $. Från detta vet vi att differentialekvationen har formen $ y(t) = Ce^{-1/10t} + 2$. Den sista konstanten löser vi ut från begynnelsevilkoret:

$$
 y(0) = Ce^{0} + 2 = 0 \implies C = -2 
$$

![Figure: Step response for the differential equation.]( {{ site.url }}{{ site.baseurl }}/assets/images/step_response.png ){:width="500px" .center-image}


__Svar:__   $ y(t) = 2\left(1-e^{-1/10t} \right)$


## Linjärisering
I verkligheten är de flesta system icke-linjära, men i denna kurs behandlar vi enbart linjära system. För att uppskatta en linjär funktion från från en icke-linjär använder vi oss av linjärisering. 


[^1]: Sätt högerledet till noll så fås den homogena differentialekvationen. 
[^2]: Partikulärlösningen är en specifik lösning på differentialekvationen. 
