function x = solveCholesky( A, b )
%Loest das lineare Gleichungssystem Ax=b für eine symmetrische positiv
%definite Matrix A 
%   Eingabe:    A...Koeffizientenmatrix
%               b...Matrix mit mehreren rechten Seiten als Spalten
%   Ausgabe:    x...Lösung von Ax=b
 [L,D]=cholesky(A);
 %Löse Lx=b für alle b
  y=forward(L,b); 
  %Teile die Einträge jedes Vektors der rechten Seite durch die Einträge
  %der Diagonalen von D.
  for i=1:size(y,2)
    y(:,i)=y(:,i)./diag(D);
  end
  %Löse L'x=y für alle y
  x=backward(L',y);

