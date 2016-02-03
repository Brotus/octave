function x = solveCholesky(A,b)
% Löst Ax=b über Cholesky
% Eingabe:  A... symmetrisch positiv definite Matrix
%           b... rechte Seite, nxm-Vektor
% Ausgabe:  x... Lösung, nxm-Vektor
[L,D] = cholesky(A);
G = L*sqrt(D);
y = forward(G,b);
x = backward(G.',y);
end