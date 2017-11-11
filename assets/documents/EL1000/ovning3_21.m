% Övning 3.21
% Linnea Persson 2017
% laperss@kth.se

s = tf('s');
G = 0.2/((s^2 + s + 1)*(s+0.2));

Gt = 0.2;                     % Täljaren
Gn = ((s^2 + s + 1)*(s+0.2)); % Nänmaren

%% a) P-regulator
% Med P-regulator fås:
% G(s) = Q(s)/P(s)
% 1 + F(s)*G(s) = 0 => P(s) + K*Q(s) = 0

rlocus(G)

% SVAR: Instabilt för omega > 1.10 rad/s med förstärkning K = 6.2


%% b) PI-regulator
% G(s) = A(s)/B(s)
% 1 + F(s)*G(s) = 0 => B(s) + (Ki*1/s) + Kp)*A(s) = 0
%                   => B(s) + Ki/s*A(s)+ A(s) = 0
%                   => s(B(s)+ A(s)) + Ki*A(s) = 0
%  P(s) = s*(B(s)+ A(s)), Q(s) = A(s) = 0

P = s*(Gt + Gn);
Q = Gt;

rlocus(minreal(Q/P))

% SVAR: Instabilt för omega > 0.595 rad/s med förstärkning K = 1.55
%% c) PID-regulator

P = (0.1*s+1)*(Gt*(1+s) + Gn*s);
Q = Gt*s^2;

rlocus(minreal(Q/P))
% SVAR: Instabilt för omega > 3.61 rad/s med förstärkning K = 67

