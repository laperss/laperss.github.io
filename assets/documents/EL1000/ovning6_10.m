% Övning 6.10
% Linnea Persson 2017
% laperss@kth.se

% Use the same system as in the previous exercise
% G0 = G*(1/(s+1)) = G*(1-s/(s+1)) => DeltaG = -s/(s+1)

clear all;
s = tf('s');
G = 725/((s+1)*(s+2.5)*(s+25));
deltaG = -s/(s+1);


%% F(s) = 1
figure(1)
F = 1; 
T = F*G/(1+F*G);

bode(1/deltaG)
hold on
bode(T)
legend('DeltaG', 'T')

%% F(s) = lead lag
figure(2)

F = 0.46*(0.45*s+1)/(0.09*s+1)*(2*s+1)/(2*s);
T = F*G/(1+F*G);

bode(1/deltaG)
hold on
bode(T)
legend('DeltaG', 'T')