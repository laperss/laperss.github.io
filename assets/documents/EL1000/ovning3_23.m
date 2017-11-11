% Övning 3.23
% Linnea Persson 2017
% laperss@kth.se

s = tf('s');
G = 0.4/((s^2 + s + 1)*(s+0.2));

%% a) P-regulator K = 1
figure;

subplot(2,1,1)
K = 1;
Go = G*K;
Gc = Go/(1+Go);
margin(Go)
subplot(2,1,2)
step(Gc)


%% b) P-regulator K = 2.5
figure;

subplot(2,1,1)
K = 2.5;
Go = G*K;
Gc = Go/(1+Go);
margin(Go)
subplot(2,1,2)
step(Gc)


%% c) P-regulator K = 6.2/2
figure;

subplot(2,1,1)
K = 3.1;
Go = G*K;
Gc = Go/(1+Go);
margin(Go)
subplot(2,1,2)
step(Gc)

