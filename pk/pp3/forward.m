function x=forward(R,y)
% berechnent Loesung x zu Rx=y 
% Eingabe:  R...regulare linke untere nxn Dreiecksmatrix
%           y...rechte Seite, nx1 Vektor
% Ausgabe:  x...Loesung, nx1 Vektor
x=flipud(backward(rot90(R,2),flipud(y)));