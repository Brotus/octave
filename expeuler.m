function [y,t] = expeuler(f, t0, y0, h, N)
%	f function handle
%	t0 Startzeit
%	y0 Startwert
%	h Schritweite
%	N Anzahl der Scrhitte

%	y Lösungsvektor
%	t Zeitvektor

y = zeros(1, N+1);
t= zeros(1,N+1);
t(1) = t0 ; y(1) = y0 ;
for n=1:N
	y(n+1) = y(n) + h*f(t(n), y(n));
end