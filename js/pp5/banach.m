function [x,xk]=banach(phi,x0,tol,maxit)
  xk=[];
  for k=1:maxit
    x=phi(x0);
    if(isrow(x))
      x=x';
    end
    xk=[xk,x];
    if(norm(x-x0)<tol)
      break;
    else
      x0=x;
    end
  end