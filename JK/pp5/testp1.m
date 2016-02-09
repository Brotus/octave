%(a)
xs = pi/2;
a = 1;
b = 2;
f = @(x) cos(x);
tol = 10^-8;

disp('Bisection')
[x,xk] = bisection(f,a,b,tol)
for i=1:length(xk)
  errBi(i) = abs(xk(i)-xs);
end

disp('RegulaFalsi')
[x,xk] = regulaFalsi(f,a,b,tol,20)
for i=1:length(xk)
  errRF(i) = abs(xk(i)-xs);
end

%Die gegebene Abschätzung kann durch die Konvergenz des Verfahrens angenommen werden

%(b)
format short e
tableBi = [[1:length(errBi)].' errBi.']
tableRF = [[1:length(errRF)].' errRF.']
format short

% (c)
% regulaFalsi konvergiert besser,  als das Bisektionsverfahren, jedoch schlechter als Newton