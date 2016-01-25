% Berechnet maxit Richardsoniterationen von A'*Ax=A'*b
% Eingabe:  A: die Matrix der Problemstellung
%           b: die rechte Seite
%           tol: ein Schwellwert, der die Iteration abbricht, sobald  resk<tolres0
%           omega: die Schrittweite
% Ausgabe:  z: die letzte Iterierte
%           res: Vektor der Normen der Residuen
function [z,res]=richardsonNormal(A,b,tol,maxit,omega)
  z = 0; D=A'*A; d=A'*b;
  res0=norm(d); % weil x0=0
  res=res0;
  for i=1:maxit
    r=d-D*z;
    resk=norm(r);
    if(resk<tol*res0)
      break;
    endif
    res=[res, resk]; % aufwaending aber wir koennen es uns leisten
    z=z+omega.*r;
  endfor    
endfunction