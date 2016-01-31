A1=[2,1;1,2];
[L1,D1]=cholesky(A1);
norm(A1-L1*D1*(L1'))

A2 = -ones(10)+11*eye(10);
[L2,D2]=choleskytest(A2);
norm(A2-L2*D2*(L2'))