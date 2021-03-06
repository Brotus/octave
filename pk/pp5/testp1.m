% init
lsg = pi/2;
a = 1;
b = 2;
f = @(x) cos(x);
tol = 10^-8;
disp('a)')
disp('Bisection')
[x,xk] = bisection(f,a,b,tol)
for i=1:length(xk)
  errBi(i) = abs(xk(i)-lsg);
end
disp('RegulaFalsi')
[x,xk] = regulaFalsi(f,a,b,tol,20)
for i=1:length(xk)
  errRF(i) = abs(xk(i)-lsg);
end
% Aufgrund der Konvergenz der Verfahren kann gegebene Abschätzung erwartet
% werden.

% b)
disp('b) bisection k | Fehler')
[[1:length(errBi)]' errBi']
disp('b) regula falsi k | Fehler')
[[1:length(errRF)]' errRF']

% c): Regula Falsi konvergiert besser als Bisection (aber immernoch linear),
% aber schlechter als Newton (quadratisch).

%figure
%semilogy(1:length(errBi),errBi,1:length(errRF),errRF)