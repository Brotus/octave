% Berechnet die Koeffizienten des Newtonpolynoms bei gegebenen Stuetzstellen und Stuetzwerten.
% Eingabe: xi sind die Stuetzstellen   [x0,x1,...,xn]
%          yi sind die Stuetzwerte     [y0,y1,...,yn]
% Ausgabe: ci sind die Koeffizienten   [c0,c1,...,cn]
%          xi sind erneut die Stuetzstellen

function [ci,xi] = compute_newton_poly (xi,yi)
  m=length(xi);
  ci=yi;
  for i=1:m-1
    for j=m:-1:i+1
      ci(j)=(ci(j)-ci(j-1))/(xi(j)-xi(j-i));
    end
  end
endfunction