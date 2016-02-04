function xneu=newton(f,b,df,xalt,maxit,tol)
  for it=1:maxit
    xneu=xalt+df(xalt)\(b-f(xalt));
    if norm(xneu-xalt)<tol
      break;
    end
    xalt=xneu;
  end
end