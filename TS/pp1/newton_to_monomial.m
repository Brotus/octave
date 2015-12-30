% Quelle: https://www.inf.ethz.ch/personal/gander/papers/changing.pdf
function a = newton_to_monomial(ci,xi)
% Berechne die ai der Monom-Darstellung aus dn ci und xi der Newton-Darstellung
% Eingabe:	ci, xi ... Daten aus der Newton-Darstellung
% Ausgabe:	a      ... ai der Monom-Darstellung
[L,U] = lu(fliplr(vander(xi)).');
a = (((L.')^(-1))*(ci.')).';
end