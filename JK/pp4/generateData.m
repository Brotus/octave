% Berechnet Stützstellen und -werte zu m und f
% Eingabe:  m =Wert
%           f = Funktion
% Ausgabe:  x = Vektor der Stützstellen
%           y = Vektor der Stützwerte


function [x,y] = generateData(m,f)
x=[];
y=[];
for i=1:m
  x(i)=(i-1)/(m-1);
  y(i)=f(x(i));
end
end