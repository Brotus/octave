function [x,xk] = bisection(f,a,b,tol)
% Berechnet eine Approximation der Nullstelle von f
% Eingabe:  f.... Funktion
%           a,b.. Intervallgrenzen mit a < b und f(a)*f(b) < 0
%           tol.. Toleranz zum Abbruch
% Ausgabe:  x.... Approximation
%           xk... Vektor aller Approximationen
xk = [];
x = (a+b)/2;
xk = [xk,x];
while 1
  if f(a)*f(x) > 0
    a = x;
  else
    b = x;
  end
  x = (a+b)/2;
  xk = [xk,x];
  
  if abs(f(x)) <= tol
    break;
  end
end
end