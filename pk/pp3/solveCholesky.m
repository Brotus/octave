function x = solveCholesky( A, b )
%Loest das lineare Gleichungssystem Ax=b f�r eine symmetrische positiv
%definite Matrix A 
%   Eingabe:    A...Koeffizientenmatrix
%               b...Matrix mit mehreren rechten Seiten als Spalten
%   Ausgabe:    x...L�sung von Ax=b
 [L,D]=cholesky(A);
 %L�se Lx=b f�r alle b
  y=forward(L,b); 
  %Teile die Eintr�ge jedes Vektors der rechten Seite durch die Eintr�ge
  %der Diagonalen von D.
  for i=1:size(y,2)
    y(:,i)=y(:,i)./diag(D);
  end
  %L�se L'x=y f�r alle y
  x=backward(L',y);

