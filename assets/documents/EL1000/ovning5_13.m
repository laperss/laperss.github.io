% Övning 5.13
% Linnea Persson 2017
% laperss@kth.se

clear all;
s = tf('s');
G = 725/((s+1)*(s+2.5)*(s+25));

%% a) F(s) = 1
F = 1;
% [amplitude margin, phase margin, phase crossover freq, crossover freq]
[Am,Pm,Wp,Wc] = margin(G*F);

% ANSWER: 
% Crossover freq = 4.99
% Phase crossover freq = 9.48
% Amplitude margin = 3.45
% Phase margin = 26.6 deg

%% b)  Compute a regulator such that:
% i)   Wc = 5 [rad/s]
% ii)  Pm >= 60 [deg]
% iii) e0 = 0

Wcd = 5;

% At Wcd = 5, the phase margin is 26.6 degrees. 
% We have to raise it by approximately 40 degrees, including the 6 deg
% extra compensating for the lag regulator. 
% From the book, this gives us
beta = 0.21;
TD = 1/(Wcd*sqrt(beta));

% The gain at Wcd must be 1. From this we get that K = 0.46
K = sqrt(beta);

% The complete lead regulator is then:
Flead = K*(TD*s + 1)/(TD*beta*s + 1);

% For e0 to be 0, we need gamma to be 0. We use the given rule of thumb for
% TI.
gamma = 0;
TI = 10/Wcd;

Flag = (TI*s + 1)/(TI*s + gamma);

% The complete controller
F = Flead*Flag;
[Am,Pm,Wp,Wc] = margin(G*F)

Gc1 = feedback( F * G, 1 );
step( Gc1, 10 )

% ANSWER: 
% Crossover freq = 5.01
% Phase crossover freq = 17.26
% Amplitude margin = 6.79
% Phase margin = 61.53 deg

%% c) Plot the Bode plots of the closed loop systems together
Gc2 = feedback( G, 1 );
bode( Gc1, '-', Gc2, '-.' )
legend('F=leadlag', 'F=1')

%% d) Simulate the control error for ramp input
% E(s) = R(s) - F(s)G(s)E(s) =>
% E(s) = R(s)/(1+F(s)G(s))

S = 1/(1 + G*Flead*Flag);
t = ( 0 : 0.1 : 30 )';
r = t;

y = lsim( S, r, t );
plot(t,y);

% There is an error. This is expected since we only designed the system to 
% give zero error for a step input!
