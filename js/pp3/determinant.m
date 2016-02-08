% Berechnet det(a)
% Eingabe: A = Matrix
% Ausgabe: d = det(A)
function d = determinant (A)
  [R,y]=gauss(A,[]);
  d=y;
  for i=1:size(A)
    d = d * R(i,i);
  end
