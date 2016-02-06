function [x, xk] = newton (F, DF, x0, tol, maxit)

x = x0;
xk(:,1) = x;
for it=2:maxit
	x = xk(:,k-1) + inverse(DF(xk(:, k-1)))*F(xk(:, k-1))
	xk(k) = x;
	if norm(x-xalt)<tol
		break; 
	end
end