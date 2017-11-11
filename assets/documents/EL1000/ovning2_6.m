% Övning 2.6
% Linnea Persson 2017
% laperss@kth.se

clear all;
s = tf('s');

% The 5 systems
GA = 1/(s^2+2*s+1);
GB = 1/(s^2+0.4*s+1);
GC = 1/(s^2+5*s+1);
GD = 1/(s^2+s+1);
GE = 4/(s^2+2*s+4);


FigHandle = figure('Position', [100, 100, 1049, 895]);
disp('GA:')
disp(pole(GA))

disp('GB:')
disp(pole(GB))

disp('GC:')
disp(pole(GC))

disp('GD:')
disp(pole(GD))

disp('GE:')
disp(pole(GE))

% Plot the step responses
subplot(2,1,1);
step(GA); 
hold on;
step(GB);
step(GC);
step(GD);
step(GE);

legend('GA','GB','GC','GD','GE')
a = findobj(gca,'type','line')
for i = 1:length(a)
    set(a(i), 'linewidth',2)  %change linewidth
end

% Plot the pole placement
subplot(2,1,2);
pzplot(GA);
hold on;
pzplot(GB);
pzplot(GC);
pzplot(GD);
pzplot(GE);

a = findobj(gca,'type','line')
for i = 1:length(a)
    set(a(i),'markersize',12) %change marker size
    set(a(i), 'linewidth',2)  %change linewidth
end

legend('GA','GB','GC','GD','GE','Location','northwest')
