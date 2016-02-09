% init
xstar = pi/2;
a = 1;
b = 2;
f = @(x) cos(x);
tol = 10^-8;
disp('a)')
disp('Bisection')
[x,xk] = bisection(f,a,b,tol)
for i=1:length(xk)
  errBi(i) = abs(xk(i)-xstar);
end
disp('RegulaFalsi')
[x,xk] = regulaFalsi(f,a,b,tol,20)
for i=1:length(xk)
  errRF(i) = abs(xk(i)-xstar);
end
% Aufgrund der Konvergenz der Verfahren kann gegebene Abschätzung erwartet werden

% b)
disp('b) bisection k | Fehler')
[[1:length(errBi)]' errBi']
disp('b) regula falsi k | Fehler')
[[1:length(errRF)]' errRF']

% c): RF konvergiert besser als Bisection (r-linear), aber schlechter als Newton (quadratisch).