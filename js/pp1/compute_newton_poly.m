% Eingabe: x...Stutzstellen   [x0,x1,...,xn]
%          y...Stutzwerte     [y0,y1,...,yn]
% Ausgabe: c...Koeffizienten  [c0,c1,...,cn]
% Indizierung: x(1)=x0, x(2)=x1, usw

function [ci,xi] = compute_newton_poly (xi,yi)
  [ci,xi]=[divdiff(xi,yi),xi];
endfunction

% Komplexität: Ist n die Länge der Eingabevektoren, so werden so viele Operationen benötigt, wie divdiff
% benötigt.  Nach dem Skript S. 26 (unten) sind dies
% #(ops) = O(n^2)