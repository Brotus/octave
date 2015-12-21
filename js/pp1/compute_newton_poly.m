% Eingabe: x...Stützstellen   [x0,x1,...,xn]
%          y...Stützwerte     [y0,y1,...,yn]
% Ausgabe: c...Koeffizienten  [c0,c1,...,cn]
% Indizierung: x(1)=x0, x(2)=x1, usw

function [ci,xi] = compute_newton_poly (xi,yi)
  ci=divdiff(xi,yi);
endfunction

% Komplexität: Ist n die Länge der Eingabevektoren, so werden so viele Operationen benötigt, wie divdiff
% benötigt.  Nach dem Skript S. 26 (unten) sind dies
% #(ops) = O(n^2)