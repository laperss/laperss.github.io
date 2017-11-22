---
title: Robusthet, Tillståndsform
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "el1000"
---
## Robusthet
När vi undersöker stabiliteten hos ett system antar vi att vi känner till en modell av systemet. I verkligheten kan vi aldrig helt säkert veta modellen. Vår modell är alltid en förenkling av verkligheten. Vi kan beskriva detta matematiskt som 

$$
G^0(s) = G(s)(1+\Delta_G(s))
$$

Där $G^0(s)$ är det verkliga systemet, $G(s)$ är vår modell, och $\Delta_G(s)$ är det relativa modellfelet. 

-------
>__Robusthetsprincipen.__ 
>_Givet en återkoppling $F(s)$ som stabiliserar en modell $G(s)$, antag att det verkliga systemet $G^0(s)$ och modellen $G(s)$  har samma antal poler i höger halvplan inklusive origo, samt att $F(s)G(s)$ och $F(s)G^0(s)$ båda går mot noll då $|s|$ går mot oändligheten. 
>Om då:_ 
	$$
		\mid \Delta_G(i\omega)\mid < \frac{1}{\mid T(i\omega)\mid} ~ \forall \omega
	$$
>_så är även det verkliga slutna systemet som erhålls då $G^0(s)$ återkopplas med $F(s)$ stabilt._>


---------


## Tillståndsform
Hittills har vi betraktat system i form av differentialekvationer och överförings-funktioner.
Ett tredje sätt att modellera ett system på är på tillståndsform. Tillståndsformen består av ett antal tillståndsvariabler, som tillsammans helt beskriver systemets dynamik med hjälp av ett system av första ordningens differentialekvationer. 

\begin{eqnarray}
\dot x &= Ax + B u \nonumber \\\\y &= Cx + Du.
\end{eqnarray}


## Linjärisering 
I denna kurs betraktar vi linjära system. Om ett system är ickelinjärt kan vi ändå betrakta det som linjärt lokalt. Detta görs genom linjärisering. 
Det icke-linjära systemet har generellt formen: 

\begin{equation}\label{eq:nonlinear}
\begin{array}{ll}
\dot x = f(x, u) \\\\y = g(x, u)
\end{array}
\end{equation}

för $x\in \mathbb{R}^n$, $u,y\in \mathbb{R}$. Vi vill skriva om denna ekvation på formen (1). För att hitta matriserna $A$, $B$, $C$, och $D$ vid linjärisering utvärderar vi Jacobimatriserna i linjäriseringspunkten:

$$
A = \begin{bmatrix}
\frac{df_1}{dx_1} & \ldots & \frac{df_1}{dx_n} \\\vdots & \ddots & \vdots\\\frac{df_n}{dx_1} & \ldots & \frac{df_n}{dx_n} \end{bmatrix},~~~B = \begin{bmatrix}\frac{df_1}{du} \\\vdots \\\frac{df_n}{du} \end{bmatrix}
$$
$$
C = \begin{bmatrix}
\frac{dg}{dx_1} & \ldots &\frac{dg}{dx_n} \end{bmatrix},~~~D = \frac{dg}{du}
$$


## Övningsuppgifter
6.7, 8.2, 8.3, 8.6, 8.4
