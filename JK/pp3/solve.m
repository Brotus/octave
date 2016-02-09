%Eingabe
%			A =  Matrix
%			b =  rechte Seite der Gleichung 
%Ausgabe
%			x = Lösung von A\b

function x = solve(A,b)

[R,y] = gauss(A,b);
x = backward(R,y);