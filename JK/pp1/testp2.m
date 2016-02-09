% (a)
% Rechnung: 	1 = c0
%
% ci = [1], xi = [0]
disp('a')
[ci,xi] = compute_newton_poly([0],[1])

% (b)
% Rechnung: 	1 = c0
%			      2 = c0 + c1 		=>  1 = c1
% 
% ci = [1,1], xi = [0,1]
disp('b')
[ci,xi] = compute_newton_poly([0,1],[1,2])

% (c)
% Rechnung: 	1 = c0
%				      2 = c0 + c1 		=>  1 = c1
%				      1 = c0 + 2c1 + 2c2 	=> -1 = c2
% 
% ci = [1,1,-1], xi = [0,1,2]
disp('c')
[ci,xi] = compute_newton_poly([0,1,2],[1,2,1])

% Komplexität des Algorithmus 
% #(ops) = 1/2*(n^2-n)
% wobei n =	 Anzahl der Stützstellen