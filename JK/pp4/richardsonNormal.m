function [z, res] = richardsonNormal( A, b, tol, maxit, omega)

z = 0;
res(1) = norm(A.'*(A*z-b));
for k = 2:maxit
	 z = z + omega*(b-A*z);
	res(i) = norm(A.'*(A*z-b));
	if res(i) < tol*res(1)
		break;
	end
end