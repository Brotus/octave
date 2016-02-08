%Initialisiere
aA=[2,1;1,2];
cA=-ones(10)+11*eye(10);

disp('a) A == LDL''')
[aL,aD]=cholesky(aA);
disp(norm(aL*aD*aL.' - aA) < 1e-12)
disp('c) A==LDL''')
[cL,cD]=cholesky(cA);
disp(norm( cL*cD*cL.' -cA) < 1e-12)