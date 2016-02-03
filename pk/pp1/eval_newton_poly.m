function r = eval_newton_poly (ci, xi, x)
% function r = eval_newton_poly (ci, xi, x)
%   Evaluiere ein Polynom in Newton-Darstellung
%   Eingabe:  ci...Koeffizienten      [ci0,ci1,...,cin]
%             xi...Stützstellen       [xi0,xi1,...,xin]
%             x...Auswertungsstellen  [x0,x1,...,xn]
%   Ausgabe:  r...Die Werte des Polynoms an den Stellen x(i) [r0,r1,...,rn]
m=length(ci);
r = ci(m);
for i=m-1:-1:1
  r = ci(i)+r.*(x-xi(i));
end