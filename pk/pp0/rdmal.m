function r=rdmal(a,b,m)
% function r=rdmal(a,b,m)
%    Berechne rd(rd(a)*rd(b)) auf m Stellen Genauigkeit
%    Eingabe: a,b ... Argumente
%               m ... Genauigkeit
%    Ausgabe    r ... Ergebnis bei Gleitkommaartithmetik

r=rd(rd(a,m)*rd(b,m),m);