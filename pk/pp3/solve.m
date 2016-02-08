function x = solve(A,b)
%Loest das lineare Gleichunssystem Ax = b
%   Eingabe:    A...Koeffizientenmatrix
%               b...Rechte Seite (Spalten können mehrere rechte Seiten
%               enthalten)
%   Ausgabe:    x...Lösungen                   
[R,y] = gauss(A,b);
x = backward(R,y);
end

