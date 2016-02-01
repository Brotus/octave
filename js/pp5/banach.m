% Fuehrt die banachsche Fixpunktiteration mehrfach aus
% Eingabe:  phi = function handle der Kontraktion (vektor -> spaltenvektor)
%           x0 = Startwert (Spaltenvektor)
%           tol = Abbruchkriterium
%           maxit = maximale Anzahl an Iterationen
% Ausgabe:  x = Approximation fuer phi(x)=x
%           xk = Vektor/Matrix der Iterierten
function [x,xk]=banach(phi,x0,tol,maxit)
  xk=x0;
  for k=1:maxit
    x=phi(x0);
    xk=[xk,x];
    if(norm(x-x0)<tol)
      break;
    else
      x0=x;
    end
  end