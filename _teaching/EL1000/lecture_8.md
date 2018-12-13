---
title: Lead-lag, Känslighet
permalink: /teaching/EL1000/leadlag/
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "el1000"
---

Vi kan ta hjälp av Bodediagram när vi designar vår regulator. Vi vet sedan innan att Bodediagramet beskriver bland annat följande egenskaper
* Snabbhet (via bandbredd, skärfrekvens)
* Översläng (via resonanstoppen eller fasmarginalen)
* Statiska förstärkningen

Vi kan påverka Bodediagramet genom återkoppling. Exempelvis flyttar en proportionell regulator på beloppkurvan. Detta kan användas för att få önskade egenskaper hos systemet. 

Idén med lead-lag är att använda återkoppling för att _forma_ hur bodediagrammet ser ut. Vi kommer att använda oss av två huvudkomponenter:

* __Lead-länk__. Vi använder oss av en fasavancerande (lead) länk för att uppnå önskad skärfrekvens $\omega_c$ och samtidigt öka fasmarginalen:

$$
	F_{lead}(s) = K\frac{\tau_Ds+1}{\beta \tau_D s + 1}
$$

* __Lag-länk__. Vi använder oss av en fasretarderande (lag) länk för att påverka det stationära reglerfelet: 

$$
	F_{lag}(s) = \frac{\tau_I s + 1}{\tau_I s + \gamma}
$$

Genom att kombinera dessa två komponenter (i vissa fall kan vi behöva mer än en av varje!) kan vi forma vårt Bodediagram för att uppnå de specifikationer vi har på vårt system.

## Övningsuppgifter
5.10 or 5.20, 6.3, 6.1 
