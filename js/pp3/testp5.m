A1=[2,1;1,2]; b1=[3,4;3,1];
[L1,D1]=cholesky(A1,b1);

y1a=forward(L1,b1);
y1b=solve(L1,b1);
norm(y1a-y1b)

x1a=solveCholesky(A1,b1);
x1b=solve(A1,b1);
norm(x1a-x1b)



A2=-ones(10)+11*eye(10); b2=[1:10]';
[L2,D2]=cholesky(A2,b2);

y2a=forward(L2,b2);
y2b=solve(L2,b2);
norm(y2a-y2b)

x2a=solveCholesky(A2,b2);
x2b=solve(A2,b2);
norm(x2a-x2b)