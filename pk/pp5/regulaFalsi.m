function [x,xk]=regulaFalsi(f,a,b,tol,maxit)
%Berechnet eine Nulstelle von f in Intervall (a,b) 
% Eingabe:  f ... function handle
%           a, b ... Intervallgrenzen
%           tol ... Schranke fuer Abbruch
%           maxit ... Maximale Anzahl Iterationen
% Ausgabe:  x ... Naeherung fuer Loesung von f(x)=0
%           xk ... Vektro aller Approximationen
xk = [];
for i=1:maxit
    m = (f(b)-f(a))/(b-a);
    b = f(a)-m*a;
    % 0 = mx+b <=> x=-b/m
    x=-b/m;
    if f(x) > 0
        b = x;
    else
        a = x;
    end
    xk = [xk, x];
    if abs(f(x)) <= tol
        break
    end
end