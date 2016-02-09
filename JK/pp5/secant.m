% Berechnet eine Nullstelle mit dem Sekantenverfahren
% Eingabe:  f..... Funktion
%           x0.... Startwert
%           tol... Abbruchstoleranz
%           maxit. Maximale Anzahl an Iterationen
% Ausgabe:  x..... Approximation
%           xk.... Vektor aller Approximationen


function [x, xk] = secant(f, x0, tol, maxit)

xneg1 = x0 + 1e-6;
xk = [xneg1, x0];
for k=3:maxit
	x = xk(k-1) - f(xk(k-1))*(xk(k-1)-xk(k-2))/(f(xk(k-1))-f(xk(k-2)));
	xk(k) = x;
	if norm(xk(k)-xk(k-1)) < tol
		break ;
	end
end