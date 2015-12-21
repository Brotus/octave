% Eingabe: x...Stützstellen   [x0,x1,...,xn]
%          y...Stützwerte     [y0,y1,...,yn]
% Ausgabe: c...Koeffizienten  [c0,c1,...,cn]
% Indizierung: x(1)=x0, x(2)=x1, usw

function [ci,xi] = compute_newton_poly (xi,yi)
  m=length(xi);
  ci=yi;
  for i=1:m-1
    for j=m:-1:i+1
      ci(j)=(ci(j)-ci(j-1))/(xi(j)-xi(j-i));
    end
  end
endfunction

% Komplexität: Ist n die Länge der Eingabevektoren, so werden so viele Operationen benötigt, wie divdiff
% benötigt.  Nach dem Skript S. 26 (unten) sind dies
% #(ops) = O(n^2)