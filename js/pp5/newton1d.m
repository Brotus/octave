function [x,xk]=newton1d(f,df,x0,tol,maxit)
  xk=x0;
  xi=x0;
  for i=1:maxit
    x=xi-f(xi)/df(xi);
    xk=[xk;x];
    if norm(x-xi)<tol
      break;
    end
    xi=x;
  end
  