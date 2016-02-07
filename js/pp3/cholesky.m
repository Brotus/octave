% berechnet die Cholesky-Zerlegung A=LDL^T
% Eingabe:  A = symmetrische positiv-definite Matrix
% Ausgabe:  L = linke untere Dreiecksmatrix
%           D = Diagonalmatrix
function [L,D]=cholesky(A)
  n=size(A,1); D=zeros(n); L=eye(n);

  D(1,1) = A(1,1);
  for i=2:n
    L(i,1)=A(i,1)/D(1,1);
  end
  for k=1:n
    for j=1:k-1
      dlj=D(j,j)*L(k,j);
      A(k,k)=A(k,k)-L(k,j)*dlj;
      D(k,k)=A(k,k);
      % Berechnung von L(i,k)
      for i=k+1:n
        A(i,k)=A(i,k)-L(i,j)*dlj;
        L(i,k)=A(i,k)/D(k,k);
      end
    end
  end