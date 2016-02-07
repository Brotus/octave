A1=[2,1;1,2];
[L1,D1]=cholesky(A1);
disp(['err = ', num2str(norm(A1-L1*D1*(L1')))]);

A2 = -ones(10)+11*eye(10);
[L2,D2]=cholesky(A2);
disp(['err = ', num2str(norm(A2-L2*D2*(L2')))]);