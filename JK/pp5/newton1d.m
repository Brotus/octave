function [x ,xk] = newton1d(f, df, x0, tol, maxit)
	
x = x0;
xk(1) = x;
for k=2:maxit
	x = xk(k-1) - f(xk(k-1))/df(xk(k-1));
	xk(k) = x;
	if norm(xk(k)-xk(k-1)) < tol
		break ;
	end
end
