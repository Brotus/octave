aA=[2,1;1,2];
ab=[3,4;3,1];

bA=[0,1;1,1];
bb=[1:10;2:11];

cA=-ones(10)+11*eye(10);
cb=[1:10]';

disp('solve-Test: A\b == solve')
disp(norm(aA\ab - solve(aA,ab)) < 1e-12)
disp(norm(bA\bb - solve(bA,bb)) < 1e-12)
disp(norm(cA\cb - solve(cA,cb)) < 1e-12)

disp('inverse-Test: inv == inverse')
disp(norm(inv(aA)-inverse(aA)) < 1e-12)
disp(norm(inv(bA)-inverse(bA)) < 1e-12)
disp(norm(inv(cA)-inverse(cA)) < 1e-12)

disp('determinant-Test: det == determinant')
disp(norm(det(aA)-determinant(aA)) < 1e-12)
disp(norm(det(bA)-determinant(bA)) < 1e-12)
%Rundungsfehler!
disp(norm(det(cA)-determinant(cA)) < 1e-5)