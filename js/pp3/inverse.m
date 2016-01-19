function B = inverse (A)
  B=solve(A,eye(length(A)));
endfunction
