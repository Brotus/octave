function [x,xk] = secant(f,x0,tol,maxit)
% Berechnet eine Nullstelle mit dem Newtonverfahren
% Eingabe:  f..... Funktion
%           x0.... Startwert
%           tol... Abbruchstoleranz
%           maxit. Maximale Anzahl an Iterationen
% Ausgabe:  x..... Approximation
%           xk.... Vektor aller Approximationen
x00 = x0 + 1e-6;
xk(1:2) = [x00, x0];
for i=3:maxit
  x = xk(i-1) - f(xk(i-1))*(xk(i-1)-xk(i-2))/(f(xk(i-1))-f(xk(i-2)));
  xk(i) = x;
  if abs(xk(i) - xk(i-1)) < tol
    break;
  end
end
end