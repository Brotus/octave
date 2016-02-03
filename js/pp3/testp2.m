clc
A=[2,1;1,2]; b=[3,4;3,1];
[R,y]=gauss(A,b);
x=backward(R,y);
norm((A\b).-x)<1e-14

A=[0,1;1,1]; b=[1:10;2:11];
[R,y]=gauss(A,b);
x=backward(R,y);
norm((A\b).-x)<1e-14

A=-ones(10)+11*eye(10); b=[1:10]';
[R,y]=gauss(A,b);
x=backward(R,y);
norm((A\b).-x)<1e-14

% Komplexitaet:
% Für eine Spalte betraegt der Aufwand O(n^2) Operationen. Sind m Spalten gegeben,
% so benoetigt backward O(m*n^2) Operationen. Der aufwand ist also linear in m.