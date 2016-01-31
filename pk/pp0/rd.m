function r=rd(x,m)
% function r=rd(x,m)
%    Runde auf m Dezimalstellen Genauigkeit
%    Eingabe: x ... reelle Zahl
%             m ... Anzahl der signifikanten Stellen
%    Ausgabe: r ... gerundetes Ergebnis

% Bestimme Exponenten in der normierten Dezimaldarstellung

% bei 0 ist nichts zu machen
if x==0, r=0; return; end

% vorzeichen
s=1;
if x<0, x=-x; s=-1; end
  
% bringe x auf standard form x=0.#### * 10^n
n=0;
while x>=1
   x=x/10; 
   n=n+1; 
end
while x<0.1
   x=x*10; 
   n=n-1;
end

% Shifte Dezimalstellen von x, runde, und shifte zurück
r=x*10^m;
r=round(r);     % rundet auf nächsten integer
r=r*10^(n-m);
r=r*s;
