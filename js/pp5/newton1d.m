% Fuehrt den eindimensionalen reellen Newtonalgorithmus durch
% Eingabe: f = function handle der Funktion
%          df = function handle der Ableitung von f
%          x0 = Startwert
%          tol = Abbruchkriterium
%          maxit = maximale Anzahl an Iterationen
% Ausgabe: x = Naeherung fuer f(x)=0
%          xk = Zeilenvektor der Iterierten
function [x,xk]=newton1d(f,df,x0,tol,maxit)
  xk=x0;
  for k=1:maxit
    x=x0-f(x0)/df(x0);
    xk=[xk,x];
    if norm(x-x0)<tol
      break;
    end
    x0=x;
  end
  