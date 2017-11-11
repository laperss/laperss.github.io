% Övning 3.22
% Linnea Persson 2017
% laperss@kth.se

s = tf('s');
G = 0.2/((s^2 + s + 1)*(s+0.2));

%% a) P-regulator
figure;

% Stable K<6.2
subplot(1,2,1)
K = 3;
Go = G*K;
nyquist(Go)
axis([-2 2 -4 4])

% Stable K>6.2
subplot(1,2,2)
K = 6.5;
Go = G*K;
nyquist(Go)
axis([-2 2 -4 4])

%% b) PI-regulator
figure;
% Stable Ki<1.55
subplot(1,2,1)
F = 1 + 1/s;
Go = G*F;
nyquist(Go)
axis([-5 5 -5 5])

% Stable Ki>1.55
subplot(1,2,2)
F = 1 + 2/s;
Go = G*F;
nyquist(Go)
axis([-5 5 -5 5])

%% c) PID-regulator
figure;
% Stable Kd<67
subplot(1,2,1)
F = 1 + 1/s + 30*s/(s*0.1+1);
Go = G*F;
nyquist(Go)
axis([-15 5 -15 15])

% Stable Kd>67
subplot(1,2,2)
F = 1 + 1/s + 75*s/(s*0.1+1);
Go = G*F;
nyquist(Go)
axis([-15 5 -15 15])
