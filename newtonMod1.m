function xneu=newtonMod1(f,b,df,xalt,maxit,tol)
  for it=1:maxit
    xneu=xalt+df(xalt(1),xalt(2))\(b-f(xalt(1),xalt(2)));
    if norm(xneu-xalt)<tol
      break;
    end
    xalt=xneu;
    xneu
  end
end