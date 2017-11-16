---
title: "Datorövning 1: Matlab, Stegsvar"
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "el1000"
---
## Grundläggande Matlabkommandon

```matlab
  % Definera variabeln s och det slutna systemet sys
  s = tf('s');
  sys = 1/((s^2+s+1)*(s+1));
  % Stegsvar, 10 sekunder
  step(sys, 10);
  % Hitta systemets nollställen och poler
  sys_poles = pole(sys);
  sys_zeros = zero(sys);
  % Plotta poler och nollställen
  pzplot(sys);
```


## Övningsuppgifter
2.6, 2.7, 3.4
