---
title: Frekvenssvar, Bodediagram
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "el1000"
---
# Frekvensbeskrivning
Funktioner kan via Fouriertransformen beskrivas med hjälp av sinus- och cosinusfunktioner genom att funktionens frekvensinnehåll summeras (eller integreras). 
Det är därför intressant att studera hur ett system påverkar dessa olika frekvenser. 

För ett linjärt, tidsinvariant system $G(s)$ gäller att:

$$
u(t) = A\sin(\omega_0t) \implies y(t) = |G(i\omega)| \sin(\omega t + \phi)
$$

där $\phi$ är $\arg G(i\omega_0)$.

Vi har alltså att frekvensen för utsignalen är densamma som för insignalen men att amplituden och fasförskjutningen ändras. 

# Bodediagram
Bodediagram är likt Nyquistkurvan ett sätt att visualisera ett systems frekvenssvar. Istället för att representera $G(i\omega)$ i det komplexa talplanet delar vi här upp frekvenssvaret i två diagram, ett för beloppet (beloppskurvan) och ett för argumentet (faskurvan). Bodediagram har fördelen att de:
* Är relativt lätta att läsa av
* Logskalan gör att de enkelt kan seriekopplas


## Steg för att skissa ett Bodediagram

__1) Faktorisera $G(s)$__

Skriv om överföringsfunktionen som:

$$G(s) = \frac{K(1+\frac{s}{z_1})(1+\frac{s}{z_2})\ldots(1+\frac{s}{z_m})}{s^p(1+\frac{s}{p_1})(1+\frac{s}{p_2})\ldots(1+\frac{s}{p_n})}$$

__2) Hög- och lågfrekvensasymptoter__
\begin{align}G_{lf}(i\omega) &= \lim_{\omega\to0}G(i\omega)\nonumber \\\\G_{hf}(i\omega) &= \lim_{\omega\to\infty}G(i\omega) \nonumber \end{align}

__3) Brytpunkter__

Brytpunkterna är där $\omega=z_1,\ldots,z_m, p_1, \ldots, p_n$. Poler motsvarar $-1$ dekad, nollställen motsvarar $+1$ dekad. 

__4)  Utvärdera belopp och argument__

För att veta hur vi ska kunna skissa beloppskurvan och argumentskurvan måste vi utvärdera dessa vid ett par punkter. 

## Intressanta storheter hos ett Bodediagram

| Öppna systemet|                |       |
| ------------ |----------------| ------|
| $\omega_c$  | Skärfrekvens    | Den frekvens där beloppskurvan skär 1 (=0 dB) |
| $\omega_p$  | Fasskärfrekvens | Den frekvens där faskurvan skär -180°|
| $\phi_m$    | Fasmarginal     | Faskurvans avstånd till -180° vid $\omega=\omega_c$|
| $A_m$       | Amplitudmarginal| Beloppkurvans avstånd till 1 vid $\omega=\omega_c$ |
| $e_0$       | Statiskt fel    | $(1+G_o(0))^{-1}$|

| Slutna systemet|              |       |
| ------------ |----------------| ------|
| $\omega_B$   | Bandbredd        | Den frekvens där beloppet blir mindre än $1/\sqrt{2}$ (=3 dB)|
| $\omega_r$   | Resonansfrekvens | Den frekvens där resonanstoppen förekommer|
| $M_p$        | Resonanstopphöjd | Maxamplitud för resonanstopp |

## Övningsuppgifter
4.1, 4.2, 5.8a, 4.4, 5.2ab
