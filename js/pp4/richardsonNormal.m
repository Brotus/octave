% Berechnet maxit Richardsoniterationen von A'*Ax=A'*b
% Eingabe:  A: die Matrix der Problemstellung
%           b: die rechte Seite
%           tol: ein Schwellwert, der die Iteration abbricht, sobald  resk<tolres0
%           omega: die Schrittweite
% Ausgabe:  z: die letzte Iterierte
%           res: Vektor der Normen der Residuen
function [z,res] = richardsonNormal(A,b,tol,maxit,omega)
z = zeros(size(A,2),1);
res(1) = norm(A.'*(A*z-b));
for i=2:maxit
  z = z + omega*(b-A*z);
  res(i) = norm(A.'*(A*z-b));
  if res(i) < tol*res(1)
    break;
  end
end
end