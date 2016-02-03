% Berechnet B, sodass B*A=I
% Eingabe: A = Matrix
% Ausgabe: B = Inverse
function B = inverse (A)
  B=solve(A,eye(length(A)));
