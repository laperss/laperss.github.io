---
title: "Datorövning 2: Rotort, Nyqvist, Bode"
permalink: /teaching/EL1000/computer_exercise2/
author_profile: false
share: false
comments: true
use_math: true
sidebar:
  nav: "teaching"
---

## Matlabkommandon rotort
Givet att ditt system är 

$$
G(s) = \frac{0.2}{(s^2+s+1)(s+0.2)}
$$

och du vill återkoppla med ett varierande _K_, så är kommandot:

```matlab
  s = tf('s');
  sys = 0.2/((s^2 + s + 1)*(s+0.2));
  rlocus(sys);
```
d.v.s. systemet du vill återkoppla proportionellt är argumentet i funktionen [rlocus](http://se.mathworks.com/help/control/ref/rlocus.html). 

Om du är intresserad av en annan återkoppling (än proportionell) måste du börja med att skriva om systemet på rätt form. Du måste då lösa ut $P(s)$ och $Q(s)$ och sedan köra
```matlab
  s = tf('s');
  Q = 0.2
  P = s*((s^2 + s + 1)*(s+0.2) + 0.2);
  rlocus(Q/P);
```
## Övningsuppgifter
3.21, 3.22, 3.23, 4.5
