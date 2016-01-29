function [x,xk] = secant (f,x0,tol,maxit)
  xk=x0;
  xi=x0;
  xalt=x0+1e-6;
  for i=1:maxit
    fxi=f(xi);
    x=xi-fxi*(xi-xalt)/(fxi-f(xalt));
    xalt=xk(i);
    xk=[xk;x];
    if norm(x-xi)<tol
      break;
    end
    xi=x;
  end