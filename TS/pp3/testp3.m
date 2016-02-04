% Daten aus der Aufgabe
aA=[2,1;1,2];             ab=[3,4;3,1];
bA=[0,1;1,1];             bb=[1:10;2:11];
cA=-ones(10)+11*eye(10);  cb=[1:10]';

disp('solve-Test: Erst A\b, dann solve')
disp('(a)')
aA\ab
solve(aA,ab)
disp('(b)')
bA\bb
solve(bA,bb)
disp('(c)')
cA\cb
solve(cA,cb)
disp('  ')

disp('inverse-Test: Erst inv, dann inverse')
disp('(a)')
inv(aA)
inverse(aA)
disp('(b)')
inv(bA)
inverse(bA)
disp('(c)')
inv(cA)
inverse(cA)
disp('  ')

disp('determinant-Test: Erst det, dann determinant')
disp('(a)')
det(aA)
determinant(aA)
disp('(b)')
det(bA)
determinant(bA)
disp('(c)')
det(cA)
determinant(cA)