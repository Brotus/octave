function [A,b] = leastSquareSystem(x,y,n)
% Berechnet Stützstellen und -werte zu m und f
% Eingabe:  x... Vektor der Stützstellen
%           y... Vektor der Stützwerte
%           n... Grad des Polynoms
% Ausgabe:  A... Matrix des Gleichungssystems
%           b... Lösung des Gleichungssystems
A=x'.^0;
b=y';
for i=1:n
  a=x'.^i;
  A=[A a];
end
end