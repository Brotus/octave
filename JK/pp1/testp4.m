% (a)
% ai=[1]
cia=[1];
xia=[0];


% (b)
% ai=[1,2]
cib=[1,2];
xib=[0,1];


% (c)
% ai=[1,-1,4]
cic=[1,3,4];
xic=[0,1,2];


AufgabeA = newton_to_monomial(cia,xia)
AufgabeB = newton_to_monomial(cib,xib)
AufgabeC = newton_to_monomial(cic,xic)