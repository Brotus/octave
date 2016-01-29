function [x,xk] = regulaFalsi (f,a,b,tol,maxit)
  xk=[];
  for i=1:maxit
    fa=f(a); fb=f(b);
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
    fc=f(c);
    xk=[xk;c];
    if norm(fc)<tol
      x=c;
      break;
    end
    if fa*fc>0
      a=c;
    else %fb*fc>0
      b=c;
    end
  end
