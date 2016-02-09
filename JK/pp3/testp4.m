aA=[2,1;1,2];
ab=[3,4;3,1];

cA=-ones(10)+11*eye(10);
cb=[1:10]';

[aL, aD] = cholesky(aA);
disp( norm ( (aL*aD*aL') - aA) < 1e-12 )

[cL, cD] = cholesky(cA);
 disp( norm ( (cL*cD*cL') - cA) < 1e-12 )