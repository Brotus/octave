function B = inverse(A)
%Berechnet die (rechts) Inverse einer Matrix A
%   Eingabe:    A...Eingabe Matrix
%   Ausgabe:    B...A^(-1)
B = solve(A,eye(length(A)));
end