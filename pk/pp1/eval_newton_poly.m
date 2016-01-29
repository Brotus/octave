function r = eval_newton_poly (ci, xi, x)
% function r = eval_newton_poly (ci, xi, x)
%   Evaluiere ein Polynom in Newton-Darstellung
%   Eingabe:  ci...Koeffizienten
%             xi...Stützstellen
%             x...Auswertungsstellen
%   Ausgabe:  r...Der Wert des Polynoms an den Stellen x
m=length(ci);
r = ci(m);
for i=m-1:-1:1
  r = ci(i)+r.*(x-xi(i));
end