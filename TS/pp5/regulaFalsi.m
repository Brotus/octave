function [x,xk] = regulaFalsi(f,a,b,tol,maxit)
% Berechnet eine Approximation der Nullstelle von f
% Eingabe:  f....... Funktion
%           a,b..... Intervallgrenzen mit a < b und f(a)*f(b) < 0
%           tol..... Toleranz zum Abbruch
%           maxit... Maximale Iterationszahl
% Ausgabe:  x....... Approximation
%           xk...... Vektor aller Approximationen
i = 1;
m = (f(b)-f(a))/(b-a);
c = f(a) - m*a;
s = @(x) m*x + c;
x = -c/m;
xk(i) = x;
while abs(f(x)) > tol && i < maxit
  i = i + 1;
  if (f(a) < 0 && f(x) < 0) || (f(a) > 0 && f(x) > 0) 
    a = x;
  else
    b = x;
  end
  m = (f(b)-f(a))/(b-a);
  c = f(a) - m*a;
  s = @(x) m*x + c;
  x = -c/m;
  xk(i) = x;
end
end