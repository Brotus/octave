
x=[0:0.1:5];
% (a)
cia=[1];
xia=[0];
aia=newton_to_monomial(cia,xia);
yna=eval_newton_poly(cia,xia,x);
yma=eval_monom_poly(aia,x);


% (b)
cib=[1,2];
xib=[0,1];
aib=newton_to_monomial(cib,xib);
ynb=eval_newton_poly(cib,xib,x);
ymb=eval_monom_poly(aib,x);


% (c)
cic=[1,3,4];
xic=[0,1,2];
aic=newton_to_monomial(cic,xic);
ync=eval_newton_poly(cic,xic,x);
ymc=eval_monom_poly(aic,x);


% plots
figure % neue Figur anlegen
plot1 = subplot(1,2,1);
plot2 = subplot(1,2,2);

plot(plot1, x,yna,'r', x,ynb,'b', x,ync,'g')
title(plot1,'eval newton poly')

plot(plot2, x,yma,'r', x,ymb,'b', x,ymc,'g')
title(plot2,'eval monom poly')

% Komplexität des Algorithmus 
% #(ops) = m*n
% mit n = Länge des Vektors ai
% und m = Anzahl der  auszuwertenden Stellen