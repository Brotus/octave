% linke UNTERE dreiecksmatrix

function x = forwardAltern (L,y)
  n = size(L,1); x=0.*y;
  for i = 1:n
    for j = 1:(i-1)
      y(i,:)=y(i,:)-L(i,j).*x(j,:);
    end
    x(i,:)=y(i,:)/L(i,i);
  end