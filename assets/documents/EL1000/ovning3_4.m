% övning 3.4
% Linnea Persson 2017
% laperss@kth.se

clear all;
s = tf('s');

G = 0.2/((s^2+s+1)*(s+0.2));
% Y = GU = G*K(R-Y) => Y(1+GK) = GK => y = GK/(1+GK)

%% a) P-controller
Kp = [0.1, 0.5, 1, 2, 3, 4, 6, 10];

FigHandle = figure('Position', [110, 110, 1649, 895]);
for i = 1:length(Kp)
    subplot(2,n/2,i)
    Gc = minreal(Kp(i)*G/(1+Kp(i)*G));
    step(Gc);
    legend(['Kp = ', num2str(Kp(i))])
end

%% b) PI-controller
Kp = 1;
Ki = [0, 0.1, 0.3, 0.5, 0.7, 1, 1.4, 2];
FigHandle = figure('Position', [110, 110, 1649, 895]);
for i = 1:length(Ki)
    subplot(2,n/2,i)
    F = (Kp + Ki(i)/s);
    Gc = minreal(F*G/(1+F*G));
    step(Gc);
    legend(['Ki = ', num2str(Ki(i))])
end

%% c) PID-controller
Kp = 1;
Ki = 1;
T = 0.1;
n = 8;
Kd = linspace(0,3,n);

FigHandle = figure('Position', [110, 110, 1649, 895]);
for i = 1:length(Kd)
    subplot(2,n/2,i)
    F = (Kp + Ki/s + Kd(i)*s/(1+s*T));
    Gc = minreal(F*G/(1+F*G));
    step(Gc);
    legend(['Kp = ', num2str(Kd(i))])
end
