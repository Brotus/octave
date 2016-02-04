A=[2,1;1,2]; b=[3,4;3,1];
norm(solve(A,b).-(A\b))
norm(inverse(A).-inv(A))
abs(determinant(A)-det(A))

A=[0,1;1,1]; b=[1:10;2:11];
norm(solve(A,b).-(A\b))
norm(inverse(A).-inv(A))
abs(determinant(A)-det(A))

A=-ones(10)+11*eye(10); b=[1:10]';
norm(solve(A,b).-(A\b))
norm(inverse(A).-inv(A))
abs(determinant(A)-det(A))