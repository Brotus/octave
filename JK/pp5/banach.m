function [x, xk] = banach ( phi, x0, tol, maxit)

x = x0;
xk(:, 1) = x;
for k=2:maxit
	x = phi(xk(:, k-1);
	xk(:, k) = x;
	if norm(xk(:, k)-xk(:, k-1)) < tol
		break;
	end
end