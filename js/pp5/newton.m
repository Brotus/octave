% mehrdimensionales Newtonverfahren
% Eingabe: F = function handle (Vektor -> Spaltenvektor)
%          DF = function handle der Ableitung von F
%          x0 = Startwert (Spaltenvektor)
%          tol = Abbruchkriterium
%          maxit = maximale Anzahl an Iterationen
function [x,xk]=newton(F,DF,x0,tol,maxit)
  xk=x0;
  for i=1:maxit
    %x=x0-(DF(x0)^(-1))*F(x0);
    x=x0+DF(x0)\(-F(x0));
    xk=[xk,x];
    
    if norm(x-x0)<tol
      break;
    end
    x0=x;
  end