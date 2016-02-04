function [L,D]=cholesky(A)
% berechnet die Cholesky-Zerlegung A=LDL^T
% Eingabe:  A... symmetrische positiv-definite Matrix
% Ausgabe:  L... linke untere Dreiecksmatrix
%           D... Diagonalmatrix
n=size(A,1); D=zeros(n,n); L=eye(n);
for k=1:n % Spalte k in Cholesky
  if k != 1
    l = k-1;
  else
    l = k;
  end
  % Berechnung von D(k,k)
  for j=1:l
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
end