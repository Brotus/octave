function [L,D] = cholesky (A)
  n=size(A,1); D=zeros(n,n); L=eye(n); dlj = zeros(n,n);
  for k=1:n
     % Berechnung von L(i,k)
    for i=k+1:n
      for j=1:k-1
        dlj(k,j)=D(j,j)*L(k,j);
        A(i,k)=A(i,k)-L(i,j)*dlj(k,j);
      endfor
      L(i,k)=A(i,k)/D(k,k);
    endfor
    % Berechnung von D(k,k)
    for j=1:k-1
      A(k,k)=A(k,k)-L(k,j)*dlj(k,j);
    endfor
    D(k,k)=A(k,k);
  endfor
endfunction
