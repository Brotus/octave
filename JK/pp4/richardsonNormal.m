% Eingabe:  A = Matrix des zu lösenden Systems
%           b  = Rechte Seite des zu lösenden Systems
%           tol = Toleranz
%           maxit = Maximale Anzahl an Iterationen
%           omega = Schrittweite
% Ausgabe:  z = Lösung
%           res = Vektor der Residuen

function [z, res] = richardsonNormal( A, b, tol, maxit, omega)

z = zeros(size(A,2),1);
res(1) = norm(A.'*(A*z-b));
for k = 2:maxit
	 z = z + omega*(b-A*z);
	res(k) = norm(A.'*(A*z-b));
	if res(k) < tol*res(1)
		break;
	end
end