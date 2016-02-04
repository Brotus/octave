% Aufgabe (a)
xstar = pi/2;
f = @(x) cos(x);
df = @(x) -sin(x);
tol = 10^-8;
disp('Newton1D')
[x,xk] = newton1d(f,df,1,tol,20)
for i=1:length(xk)
  errNE(i) = abs(xk(i)-xstar);
end
disp('Secant')
[x,xk] = secant(f,1,tol,20)
for i=1:length(xk)
  errSE(i) = abs(xk(i)-xstar);
end

% Aufgabe (b)
format short e
tableNE = [[1:length(errNE)].' errNE.']
tableSE = [[1:length(errSE)].' errSE.']
format short
% Die theoretischen Aussagen zu Newton bestätigen sich (quadratisch); secant konvergiert langsamer.