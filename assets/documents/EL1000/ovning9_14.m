% Övning 9.14ab
% Linnea Persson 2017
% laperss@kth.se

clear all;
s = tf('s');
Gtf = 1/(s*(s+1));

[A, B, C, D] = tf2ss(Gtf.num{1}, Gtf.den{1});
Gss = ss(A, B, C, D);

% STATE SPACE REPRESENTATION:
%   A = 
%        x1  x2
%    x1  -1   0
%    x2   1   0
%  
%   B = 
%        u1
%    x1   1
%    x2   0
%  
%   C = 
%        x1  x2
%    y1   0   1

% We know that Y = x2 => x2 is the motor angle. 
% dot(x2) = x1        => x1 is the angular velocity.  

%% Poles at (-2.1,-2.2)
% (s+2.2)*(s+s.1) = s^2 + 4.3 s + 4.62
% eig(A-B*L) = lambda^2 + (1+l1)lambda + l2
L1 = [3.3, 4.62]

% Or just use: 
% L = place( A, B, [ -2.2 -2.1 ] );

Gc1 = ss(A-B*L1, B, C, 0 );
l0_1 = 1 / dcgain(Gc1);
Gc1 = Gc1*l0_1;

%% Poles at -1 +- i
L2 = place( A, B, [-1+i, -1-i] );

Gc2 = ss(A-B*L2, B, C, 0 );
l0_2 = 1 / dcgain(Gc2);
Gc2 = Gc2*l0_2;

[y1, t1, x1] = step(Gc1, 10);
[y2, t2, x2] = step(Gc2, 10);

u1 = l0_1 - L1*x1';
u2 = l0_2 - L2*x2';
%% Plot to show the difference 
figure; 
subplot(2,1,1);
plot(t2,y2);
hold on;
plot(t1,y1);
legend('p = {-2.2,-2.1}','p = {-1+i,-1-i}')
title('Output')

subplot(2,1,2);
plot(t1,u1);
hold on;
plot(t2,u2);
legend('p = {-2.2,-2.1}','p = {-1+i,-1-i}')
title('Input')

% The second system has a smaller input but similar performance!
