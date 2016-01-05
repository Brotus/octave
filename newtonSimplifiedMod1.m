function xneu=newtonSimplifiedMod1(f,df,xalt,maxit,tol)
  M=df(xalt(1),xalt(2));
  M=M^(-1);
  for it=1:maxit
    xneu=xalt-M*f(xalt(1),xalt(2));
    if norm(xneu-xalt)<tol
      break;
    end
    xalt=xneu;
    xneu
  end
end