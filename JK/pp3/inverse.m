function B = inverse(A)
n = size(A,1);
b = eye(n);
solve(A,b)