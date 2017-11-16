---
title: "Överföringsfunktioner, PID"
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "el1000"
---

## Innehåll

* Reglering av system
* Delarna i en PID
    * Proportionell
    * Integrerande
    * Deriverande

## Att reglera system
Förra veckan betraktade vi (mestadels) system utan styrning. Nu lägger vi även till styrning, genom att ge systemet insignaler. 

__Öppen styrning:__ När vi påverkar ett system med en insignal, utan att ta hänsyn till tillståndet hos systemet. Till exempel mikrovågsugn, diskmaskin, eller torktumlare. 

$$
G_o(s) = F(s)G(s)
$$

![Figure: Step response for the differential equation.]( {{ site.url }}{{ site.baseurl }}/assets/images/öppen_styrning.png ){:width="350px" .center-image}

__Med återkoppling:__ När insignalen beror på tillståndet hos systemet, eller på en mätbar utsignal. Exempelvis bilkörning, segway, flygplan.

\begin{eqnarray}
Y(s) = G(s)F(s)\left( Y_{ref}-Y)\right) \nonumber \\\\ \implies Y(s)\left(1+G(s)F(s)\right) = G(s)F(s)Y_{ref}\nonumber \\\\ \implies Y(s) = \frac{G(s)F(s)}{1+G(s)F(s)}Y_{ref} \nonumber
\end{eqnarray}

![Figure: Step response for the differential equation.]( {{ site.url }}{{ site.baseurl }}/assets/images/stängd_styrning.png ){:width="350px" .center-image}

## PID-regulatorn

En PID-regulator består av tre delar. De tre delarna är: 
* __Proportionell:__   Agerar direkt på det nuvarande felet. För stor P-del kan leda till instabilitet.
* __Integrerande:__  Tar felhistoriken i hänsyn.  Effekten av en integrator i återkopplingen är att det statiska felet försvinner. Integrator kan leda till svängiga system eller oönskade signaler. 
* __Deriverande:__ Derivatadelen ger ett positivt bidrag när felet ökar, och mindre då felet minskar. Detta ger en dämpande effekt på systemet. 

## Övningsuppgifter
3.25, 3.1
