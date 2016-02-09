function [x, xk] = newton1d(f,df,x0,tol,maxit)
% Loese f(x)=0
% Eingabe:  f ... function handle
%           df ... function handle fuer Ableitung
%           x0 ... Startwert der Iteration
%           maxit ... maximale Anzahl von Iterationen
%           tol ... Abbruchgenauigkeit
% Ausgabe:  x ... Loesung von f(x)=y falls konvergiert,
% sonst letzte Naeherung
xk1=x0;
xk = x0;
for k=1:maxit
    x = xk1 - df(xk1)\f(xk1);
    xk = [xk x];
if norm(x-xk1) < tol, break; end
    xk1 = x;
end