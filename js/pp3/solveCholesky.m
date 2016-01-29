
% Ax=b iff LDL'x=b:
% y1=forward(L,b);  (Ly1=b, DL'x=y1)
% y2=diagsolve(D,y1); (Dy2=y1)
% x=backward(L',y2);  (L'x=y2)
function x=solveCholesky(A,b)
  [L,D]=cholesky(A);
  y1=forwardAltern(L,b);
  
  d=diag(D);
  y2=y1;
  for i=1:size(y1,1)
    y2(i,:)=y1(i,:)./d(i);
  end
  
  x=backward(L',y2);
  
  