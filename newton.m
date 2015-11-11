function x = newton(f,df,y,x0,maxit,tol)
% loese f(x)=y
% y = rechte Seite
% x = Lösung von f(x)=y falls konvergiert, sonst näherung

xk = x0;
for k =1:maxit
	x = xk + df(xk) \ (y-f(xk));
	if norm(x-xk) < tol, break; end
	xk=x;
end
