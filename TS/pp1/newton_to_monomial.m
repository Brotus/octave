function a = newton_to_monomial(ci,xi)
% Berechne die ai der Monom-Darstellung aus den ci und xi der Newton-Darstellung
% Eingabe:  ci... Koeffizienten
%           xi... Stützstellen
% Ausgabe:	a.... ai der Monom-Darstellung
% Quelle: https://www.inf.ethz.ch/personal/gander/papers/changing.pdf
[L,U] = lu(fliplr(vander(xi)).');
a = (((L.')^(-1))*(ci.')).';
end