function [x,xk]=bisection(f,a,b,tol)
% Eingabe:  f ... function handle
%           a, b ... Intervallgrenzen
%           tol ... Schranke fuer Abbruch
% Ausgabe:  x ... Naeherung fuer Loesung von f(x)=0
%           xk ... Vektro aller Approximationen
x = .5*(a+b);
fx = f(x);
xk = x;
fa=f(a);
while abs(f(x)) > tol
    if fx*fa<0
        b=x;
    else
        a=x; fa=fx;
    end
    x=(a+b)/2; fx=f(x);
    xk = [xk, x];
end