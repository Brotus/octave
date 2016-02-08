function d = determinant(A)
%Berechnet die Determinante von A
%   Detailed explanation goes here
[R,sign] = gauss(A, []);
d = sign*prod(diag(R));
end