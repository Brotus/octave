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

disp('cholesky-Test')
[solveCholesky(aA,ab), solve(aA,ab), aA\ab]
[solveCholesky(cA,cb), solve(cA,cb), cA\cb]

% Komplexität des forward Algorithmus: 
% #(ops) = 1/2mn^2+1/2mn
% wobei n = Größe von L
% und m = Spaltenzahl von b