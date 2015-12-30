% (a)
% Ergebnis sollte ci = [1], xi = [0] sein
% Rechnung: 	1 = c0
a = compute_newton_poly([0],[1])

% (b)
% Ergebnis sollte ci = [1,1], xi = [0,1] sein
% Rechnung: 	1 = c0
%				      2 = c0 + c1 		=>  1 = c1
b = compute_newton_poly([0,1],[1,2])

% (c)
% Ergebnis sollte ci = [1,1,-1], xi = [0,1,2] sein
% Rechnung: 	1 = c0
%				      2 = c0 + c1 		=>  1 = c1
%				      1 = c0 + 2c1 + 2c2 	=> -1 = c2
c = compute_newton_poly([0,1,2],[1,2,1])

% Komplexität:	#(ops) = 1/2*(n^2-n)
%			        	n ... Anzahl der Stützstellen