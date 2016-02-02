function [z,res] = richardsonNormal(A,b,tol,maxit,omega)
% Berechnet Lösung des Richardson-Verfahrens
% Eingabe:  A....... Matrix des zu lösenden Systems
%           b....... Rechte Seite des zu lösenden Systems
%           tol..... Toleranz
%           maxit... Maximale Anzahl an Iterationen
%           omega... Schrittweite
% Ausgabe:  z....... Lösung
%           res..... Vektor der Residuen
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