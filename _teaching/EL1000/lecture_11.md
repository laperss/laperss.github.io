---
title: "Datorövning: Tillståndsform, Simulering"
permalink: /teaching/EL1000/computer_exercise3/
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "teaching"
---
## Bode i MATLAB
För att rita upp ett bodediagram i MATLAB, använd funktionen [bode](https://se.mathworks.com/help/ident/ref/bode.html) eller [margin](https://se.mathworks.com/help/control/ref/margin.html). Funktionen bode ger ett allmänt frekvenssvar, medans margin speciellt hittar systemets marginaler. 

För att direkt få amplitudmarginal, fasmarginal, fasskärfrekvens och skärfrekvens, använd:
```matlab
  s = tf('s');
  G = 600/((s+1.2)*(s+2)*(s+15));
  K = 1;
  Go = G*K;
  [Am,Pm,Wp,Wc] = margin(Go);
```

Observera att det är för det _öppna systemet_ Go som vi hittar marginalerna. 

## Övningsuppgifter
5.13, 6.10, 9.14 a,b
