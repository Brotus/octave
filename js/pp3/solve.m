function x = solve (A,b)
  [R,y]=gauss(A,b);
  x=backward(R,y);
endfunction
