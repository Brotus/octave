function x = solve(A,b)
%Loest das lineare Gleichunssystem Ax = b
%   Eingabe:    A...Koeffizientenmatrix
%               b...Rechte Seite (Spalten k�nnen mehrere rechte Seiten
%               enthalten)
%   Ausgabe:    x...L�sungen                   
[R,y] = gauss(A,b);
x = backward(R,y);
end

