% Övning 4.5
% Linnea Persson 2017
% laperss@kth.se

%% a) Plotta bodediagram
s = tf('s');
GA = 1/(s^2 + 2*s + 1);
margin(GA)
[Gma,Pma,Wca,Wpa] = margin(GA) 

%%
s = tf('s');
GB = 1/(s^2 + 0.4*s + 1);
margin(GB)
[Gmb,Pmb,Wcb,Wpb] = margin(GB) 

%% 
s = tf('s');
GC = 1/(s^2 + 5*s + 1);
margin(GC)
[Gmc,Pmc,Wcc,Wpc] = margin(GC) 

%% 
s = tf('s');
GD = 1/(s^2 + 1*s + 1);
margin(GD)
[Gmd,Pmd,Wcd,Wpd] = margin(GD) 

%% 
s = tf('s');
GE = 4/(s^2 + 2*s + 4);
margin(GE)
[Gme,Pme,Wce,Wpe] = margin(GE) 

%% b) Beskriv förhållandet mellan parametrar
% 1/Tr är ungefär proportionell mot omega_B
% En stor resonanstopp ger stor översläng -> dämpning omvänt proportionell
% mot resonanstoppen