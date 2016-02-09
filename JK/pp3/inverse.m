%Eingabe
%			A = Matrix
%Ausgabe
%			B = Inverse von A



function B = inverse(A)
n = size(A,1);
b = eye(n);
B = solve(A,b);