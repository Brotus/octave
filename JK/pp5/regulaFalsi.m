% Berechnet eine Approximation der Nullstelle von f
% Eingabe:  f....... Funktion
%           a,b..... Intervallgrenzen mit a < b und f(a)*f(b) < 0
%           tol..... Toleranz zum Abbruch
%           maxit... Maximale Iterationszahl
% Ausgabe:  x....... Approximation
%           xk...... Vektor aller Approximationen


function [ x, xk ] = regulaFalsi ( f, a, b, tol, maxit)

m = (f(b)-f(a))/(b-a);
c = f(a) - m*a;
s = @(x) m*x + c;
x = -c/m;
xk(1) = x;
for i =2:maxit
  if f(a)*f(x) > 0
    a = x;
  else
    b = x;
  end
  m = (f(b)-f(a))/(b-a);
  c = f(a) - m*a;
  s = @(x) m*x + c;
  x = -c/m;
  xk(i) = x;
  if abs(f(x)) <= tol
    break;
  end
end
end