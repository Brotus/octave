function [L,D]=cholesky(A)
% berechnet die Cholesky-Zerlegung A=LDL^T
% Eingabe:  A... symmetrische positiv-definite Matrix
% Ausgabe:  L... linke untere Dreiecksmatrix
%           D... Diagonalmatrix
n=size(A,1); D=zeros(n,n); L=eye(n);
for k=1:n % Spalte k in Cholesky
  % Berechnung von D(k,k)
  for j=1:k-1
    A(k,k)=A(k,k)-L(k,j)*D(j,j)*L(k,j);
  end
  D(k,k)=A(k,k);
  % Berechnung von L(i,k)
  for i=k+1:n
    for j=1:k-1
      A(i,k)=A(i,k)-L(i,j)*D(j,j)*L(k,j);
    end
    L(i,k)=A(i,k)/D(k,k);
  end
end
end