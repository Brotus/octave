aA=[2,1;1,2];
cA=-ones(10)+11*eye(10);

disp('Erste Matrix')
[aL,aD]=cholesky(aA)
if aL*aD*aL.' == aA
  true
else 
  false
end

disp('Dritte Matrix')
[cL,cD]=cholesky(cA)
if cL*cD*cL.' == cA
  true
else
  false
end