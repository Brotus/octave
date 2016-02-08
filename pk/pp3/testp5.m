% Initialisiere
aA=[2,1;1,2];             ab=[3,4;3,1];
cA=-ones(10)+11*eye(10);  cb=[1:10]';

% forward-Test
disp('forward-test')

disp('a')
[aL,aD]=cholesky(aA);
forward(aA,ab)

disp('c')
[cL,cD]=cholesky(cA);
forward(cA,cb)

% solveCholesky-Test
disp('solveCholesky-test')

disp('a) solveCholesky b1 b2 | solve b2 b2 | A\b b1 b2')
[solveCholesky(aA,ab), solve(aA,ab), aA\ab]


disp('c) solveCholesky | solve | A\b')
[solveCholesky(cA,cb), solve(cA,cb), cA\cb]

% Komplexität von forward: #(ops) = 1/2mn^2+1/2mn
%                          n... Größe von L
%                          m... Spaltenzahl von b