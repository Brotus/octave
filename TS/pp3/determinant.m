function d=determinant(A)
% berechnet die Determinante der Matrix A
% Eingabe: A... nxn Matrix
% Ausgabe: d... Determinante
d=1;
[R,y]=gauss(A,[]);
for i=1:size(A)
  d=d*R(i,i);
end
d=y*d;
end