% Aufgabe (a)
xstar = pi/2;
a = 1;
b = 2;
f = @(x) cos(x);
tol = 10^-8;
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

% Aufgabe (b)
format short e
tableBi = [[1:length(errBi)].' errBi.']
tableRF = [[1:length(errRF)].' errRF.']
format short
% Aufgabe (c): RF konvergiert besser als Bisection, aber schlechter als Newton.