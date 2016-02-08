function [x,xk] = newton1d(f,df,x0,tol,maxit)
% Berechnet eine Nullstelle mit dem Newtonverfahren
% Eingabe:  f..... Funktion
%           df.... Ableitung
%           x0.... Startwert
%           tol... Abbruchstoleranz
%           maxit. Maximale Anzahl an Iterationen
% Ausgabe:  x..... Approximation
%           xk.... Vektor aller Approximationen
xk = [];
x = x0;
xk(1) = x;
for i=2:maxit
  x = xk(i-1) - f(xk(i-1))/df(xk(i-1));
  xk(i) = x;
  if abs(xk(i) - xk(i-1)) < tol
    break;
  end
end
end