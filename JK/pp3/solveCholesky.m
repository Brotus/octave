%Eingabe
%			A =  Matrix
%			b =  rechte Seite der Gleichung 
%Ausgabe
%			x = Lösung von A\b


function x = solveCholesky(A,b)
[L,D] = cholesky(A);
G = L*sqrt(D);
y = forward(G,b);
x = backward(G.',y);
end