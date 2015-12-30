% Die errechneten ai zu den einzelnen Aufgaben sind
% (a) ai=[1]
% (b) ai=[1,2]
% (c) ai=[1,-1,4]

% ci und xi zu Aufgabenteil (a)
cia=[1];
xia=[0];
% ci und xi zu Aufgabenteil (b)
cib=[1,2];
xib=[0,1];
% ci und xi zu Aufgabenteil (c)
cic=[1,3,4];
xic=[0,1,2];
AufgabeA = newton_to_monomial(cia,xia)
AufgabeB = newton_to_monomial(cib,xib)
AufgabeC = newton_to_monomial(cic,xic)
% Vergleich: Die Lösungen stimmen überein.