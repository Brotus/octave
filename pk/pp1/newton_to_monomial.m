% Diese Funktion transformiert ein Polynom in Lagrange-Darstellung in die Monom-Darstellung.
% Eingabe:  ci=[c0,...,cn]    sind die Newton-Koeffizienten
%           xi=[x0,...,xn-1]  sind die Stützstellen des Newton-Interpolationspolynoms
% Ausgabe:  a =[a0,...,an]    sind die Koeffizienten der Monom-Darstellung
function a = newton_to_monomial(ci,xi)
  [L,U]=lu(fliplr(vander(xi)).');
  a=(((L.')^(-1))*(ci.')).';

% siehe https://www.inf.ethz.ch/personal/gander/papers/changing.pdf