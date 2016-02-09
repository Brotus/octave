% Berechnet Lösung des Gauss-Newton-Verfahren
% Eingabe:  F..... Funktion
%           DF.... Jacobimatrix
%           x0.... Startvektor
%           tol... Abbruchstoleranz
%           maxit. Maximale Anzahl an Iterationen
% Ausgabe:  x..... Approximation
%           xk.... Matrix aller Approximationen


function [x, xk] = gaussNewton(F, DF, x0, tol, maxit)

x = x0;
xk(:,1) = x;
for k=2:maxit
  x = xk(:,k-1) - inverse(DF(xk(:,k-1)).' * DF(xk(:,k-1))) * DF(xk(:,k-1)).' * F(xk(:,k-1));
  xk(:,k) = x;
  if norm(xk(:,k) - xk(:,k-1)) < tol
    break;
  end
end