% Övning 2.7
% Linnea Persson 2017
% laperss@kth.se

clear all;
s = tf('s');

FigHandle = figure('Position', [100, 100, 1049, 895]);
; hold on;
coeff = [];
alpha = -10:2:10;alpha = fliplr(alpha);
coeff = cell(1,length(alpha));
%%
for i = 1:length(alpha)
    G = (alpha(i)*s + 1)/(s^2+2*s+1);
    step(G);
    coeff{i} = ['\alpha = ',int2str(alpha(i))];
end

legend(coeff)
