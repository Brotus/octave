xstar = [0.171333648176476,0.021321814151372];
F = @(x) [6*x(1) - cos(x(1)) - 2*x(2); 8*x(2) - x(1)*x(2)^2 + sin(x(1))];
DF = @(x) [6+sin(x(1)), -2; -x(2)^2-cos(x(1)), 8-2*x(1)*x(2)];
x0 = [0;0];
tol = 10^-10;

[x,xk] = newton(F,DF,x0,tol,30)

for i=1:size(xk,2)
  err(i) = norm(xstar-xk(:,i));
end
format short e
Error = [[1:size(xk)(2)].', err.']
format short