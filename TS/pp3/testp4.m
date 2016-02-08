aA=[2,1;1,2];
cA=-ones(10)+11*eye(10);

disp('Erste Matrix')
[aL,aD]=cholesky(aA)
if norm(aL*aD*aL.' - aA) < 1e-12
  true
else 
  false
end

disp('Dritte Matrix')
[cL,cD]=cholesky(cA)
if norm(cL*cD*cL.' - cA) < 1e-12
  true
else
  false
end