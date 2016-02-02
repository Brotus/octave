phi = @(x) [1/6*(cos(x(1))+2*x(2)); 1/8*(x(1)*x(2)^2+sin(x(1)))];
x0 = [0;0];
tol = 10^-10;

[x,xk] = banach(phi,x0,tol,30)

for i=1:length(xk)
  err(i) = norm(x - xk(:,i));
end
format short e
Table = [[1:length(xk)].', err.']
format short
% Die lineare Konvergenz bestätigt sich