% forward-Test
disp('Test von forward')
aA=[2,1;1,2];
ab=[3,4;3,1];
cA=-ones(10)+11*eye(10);
cb=[1:10]';

disp('Erste Matrix')
[aL,aD]=cholesky(aA);
ay = forward(aL,ab)

disp('Dritte Matrix')
[cL,cD]=cholesky(cA);
cy = forward(cL,cb)

disp('  ')

% solveCholesky-Test
disp('Test von solveCholesky')

disp('Erste Matrix')
ax = solveCholesky(aA,ab)

disp('Dritte Matrix')
cx = solveCholesky(cA,cb)

% Komplexität von forward: #(ops) = 1/2mn²+1/2mn
%                          n... Größe von L
%                          m... Spaltenzahl von b