function [L,D] = cholesky (A)
  n=size(A,1); D=zeros(n,n); L=eye(n); dlj = zeros(n,n);
  for k=1:n
    
    for j=1:k-1
      dlj(k,j)=D(j,j)*L(k,j);
      A(i,k)=A(i,k)-L(i,j)*dlj(k,j);
    end
    D(k,k)=A(k,k);
    for i=k+1:n
      for j=1:k-1
        A(k,k)=A(k,k)-L(k,j)*dlj(k,j);
      end
      L(i,k)=A(i,k)/D(k,k);
    end
  end
