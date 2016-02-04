function [x,xk]=gaussNewton(F,DF,x0,tol,maxit)
  xk=x0;
  w=1; % omega wird nicht als parameter übergeben...
  for k=1:maxit
    dfx0=DF(x0);
    x=x0-w*(dfx0'*dfx0)^(-1)*dfx0'*F(x0);
    xk=[xk,x];
    if (norm(x-x0)<tol)
      return;
    end
    x0=x;
  end