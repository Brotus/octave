function [A,b] = leastSquareSystem (x,y,n)
  m=length(x);
  A=zeros(m,n+1);
  if(isrow(x))
    x=x';
  endif
  for i=1:(n+1)
    A(:,i)=x.^(i-1);
  endfor
  if(isrow(y))
    b=y';
  else
    b=y;
  endif
endfunction
