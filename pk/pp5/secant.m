function [x,xk]=secant(f,x0,tol,maxit)
% Loese f(x)=0
% Eingabe:  f ... function handle
%           x0 ... Startwert der Iteration
%           maxit ... maximale Anzahl von Iterationen
%           tol ... Abbruchgenauigkeit
% Ausgabe:  x ... Loesung von f(x)=y falls konvergiert,
% sonst letzte Naeherung
x=x0;
xk = [x0+1e-6 x];
for k=1:maxit
    gk = (f(xk(k+1))-f(xk(k)))/(xk(k+1)-xk(k));
    x = xk(k) - (f(xk(k)))/gk;
    if norm(x-xk(k)) < tol, break; end
    xk = [xk x];
end
xk=xk(2:length(xk));