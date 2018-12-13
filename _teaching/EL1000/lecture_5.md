---
title: "Nyquistkriteriet"
permalink: /teaching/EL1000/nyquist/
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "el1000"
---

## Nyquistkriteriet
__Cauchys argumentprincip.__[^1] *Låt $f$ vara  analytisk, med undantag för ändligt många poler, i ett öppet område $\Omega$. Låt $\gamma$ omsluta alla poler och nollställen enkelt.  Då gäller:*

$$
N-P = \frac{1}{2\pi i} \oint_C \frac{f'(z)}{f(z)} dz
$$

*där $N$ är antalet nollställen och P är antalet poler innanför kurvan.*

Integralen i högerledet tolkas  som variationen av argumentet. Det är en sluten kurva, så argumentet kommer att ändras med en multipel av $2\pi i$, vilket ger att N-P blir ett heltal. 
För ett slutet system ges polerna av nollställena till $(1+G_o(s))$. Låt $\gamma$ vara en kurva som omsluter hela höger halvplan, och betrakta $\gamma'$ som då genomlöps av $G_o(s)$. 


__Nyquistkriteriet.__[^2] *Antal poler i HHP till det återkopplade systemet är lika med antalet poler i HHP för det öppna systemet, plus antalet varv som $\gamma'$ omsluter punkten -1 i positiv riktning.*


## Nyquistkurvan
För att rita upp Nyquistkurvan tittar vi på hur kurvan $\gamma$ avbildas på $G_o(s)$. 
Poler på imaginära axeln utesluts genom att bilda halvcirklar med radie $r\to0$ . 
Dessutom behövs en stor halvcirkel med radie $R\to\infty$ som omsluter högra halvplanet "i oändligheten". Figur \ref{fig:gamma} visar ett exempel då $G_0$ har ett nollställe i origo. 



## Övningsuppgifter
3.15, 3.16a, 3.17

[^1]: [https://sv.wikipedia.org/wiki/Argumentprincipen](https://sv.wikipedia.org/wiki/Argumentprincipen)
[^2]: T. Glad och L. Ljung, "Reglerteknik, grundläggande teori," Kapitel 3.8.
