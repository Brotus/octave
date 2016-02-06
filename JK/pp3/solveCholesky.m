function x = solveCholesky(A,b)
[L,D] = cholesky(A);
G = L*sqrt(D);
y = forward(G,b);
x = backward(G.',y);
end