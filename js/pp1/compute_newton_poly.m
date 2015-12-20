% Eingabe: x...Stutzstellen   [x0,x1,...,xn]
%          y...Stutzwerte     [y0,y1,...,yn]
% Ausgabe: c...Koeffizienten  [c0,c1,...,cn]
% Indizierung: x(1)=x0, x(2)=x1, usw

function [ci,xi] = compute_newton_poly (xi,yi)
  [ci,xi]=[divdiff(xi,yi),xi];
endfunction
