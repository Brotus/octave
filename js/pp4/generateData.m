% Berechnet Stuetzstellen und Stuetzwerte im Interval [0,1]
% Eingabe: m = Anzahl der Stellen
%          f = function handle der Funktion
% Ausgabe: x = Stuetzstellen
%          y = Stuetzwerte
function [x,y] = generateData (m,f)
  x=(0:(m-1))/(m-1);
  y=f(x);