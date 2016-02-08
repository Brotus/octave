A=[2,1;1,2]; b=[3,4;3,1];
disp(['solve err = ', num2str(norm(solve(A,b)-(A\b)))]);
disp(['inv err =   ', num2str(norm(inverse(A)-inv(A)))]);
disp(['det err =   ', num2str(abs(determinant(A)-det(A)))]);

A=[0,1;1,1]; b=[1:10;2:11];
disp(['solve err = ', num2str(norm(solve(A,b)-(A\b)))]);
disp(['inv err =   ', num2str(norm(inverse(A)-inv(A)))]);
disp(['det err =   ', num2str(abs(determinant(A)-det(A)))]);

A=-ones(10)+11*eye(10); b=[1:10]';
disp(['solve err = ', num2str(norm(solve(A,b)-(A\b)))]);
disp(['inv err =   ', num2str(norm(inverse(A)-inv(A)))]);
disp(['det err =   ', num2str(abs(determinant(A)-det(A)))]);
% Bei einer groesseren Matrix wird der Fehler groesser.