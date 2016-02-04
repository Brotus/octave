function [x,xk] = bisection(f,a,b,tol)
% Berechnet eine Approximation der Nullstelle von f
% Eingabe:  f.... Funktion
%           a,b.. Intervallgrenzen mit a < b und f(a)*f(b) < 0
%           tol.. Toleranz zum Abbruch
% Ausgabe:  x.... Approximation
%           xk... Vektor aller Approximationen
i = 1;
x = (a+b)/2;
xk(i) = x;
while 1
  if abs(f(x)) <= tol
    break;
  end
  
  i = i + 1;
  if (f(a) < 0 && f(x) < 0) || (f(a) > 0 && f(x) > 0) 
    a = x;
  else
    b = x;
  end
  x = (a+b)/2;
  xk(i) = x;
end
end