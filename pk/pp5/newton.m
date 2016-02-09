function [x,xk]=newton(F,DF,x0,tol,maxit)
% Eingabe:  f ... nichtlineare Funktion (function handle)
%           DF ... Jacobimatrix (function handle)
%           xalt ... Startwert
%           tol ... Abbruchtoleranz
%           maxit... maximale Anzahl von Iterationen
% Ausgabe:  xneu ... letzte Iterierte des Newtonverfahrens
xk = x0;
for it=1:maxit
x=x0+DF(x0)\(-F(x0)); % Newton-Schritt
xk=[xk x];
if norm(x-x0)<tol, break; end % Abbruchkriterium
x0=x;
end

