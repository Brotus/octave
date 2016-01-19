function d = determinant (A)
  [R,y]=gauss(A,[]);
  d=y;
  for i=1:length(A)
    d = d * R(i,i);
  endfor
endfunction
