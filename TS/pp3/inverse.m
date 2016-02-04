function B=inverse(A)
% berechnet das Inverse zu A
% Eingabe: A...invertierbare nxn-Matrix
% Ausgabe: B...Inverse von A
n=size(A,1);
[R,y]=gauss(A,eye(n));
B=backward(R,y);
end