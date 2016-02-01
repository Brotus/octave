% Berechnet fuer alle Spalten bi von b A\bi
% Eingabe: A = Matrix
%          b = Matrix der rechten Seiten
% Ausgabe: x = A\b
function x = solve (A,b)
  [R,y]=gauss(A,b);
  x=backward(R,y);
