function [x,xk]=newton(F,DF,x0,tol,maxit)
  if(isrow(x0))
    x0=x0';
  end
  xk=x0;
  xi=x0;
  for i=1:maxit
    %x=xi-(DF(xi)^(-1))*F(xi);
    x=xi+DF(xi)\(-F(xi));
    if(isrow(x))
      x=x';
    end
    xk=[xk,x];
    
    if norm(x-xi)<tol
      break;
    end
    
    xi=x;
  end