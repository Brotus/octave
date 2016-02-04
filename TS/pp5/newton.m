function [x,xk] = newton(F,DF,x0,tol,maxit)
% Berechnet x zu F(x)=0 mit dem Newtonverfahren
% Eingabe:  F..... Funktion
%           DF.... Jacobimatrix
%           x0.... Startvektor
%           tol... Abbruchstoleranz
%           maxit. Maximale Anzahl an Iterationen
% Ausgabe:  x..... Approximation
%           xk.... Matrix aller Approximationen
x = x0;
xk(:,1) = x;
for i=2:maxit
  x = xk(:,i-1) - inverse(DF(xk(:,i-1))) * F(xk(:,i-1));
  xk(:,i) = x;
  if norm(xk(:,i) - xk(:,i-1)) < tol
    break;
  end
end
end