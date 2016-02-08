disp('a)')
A=[2,1;1,2]; b=[3,4;3,1];
[R,y]=gauss(A,b);
x=backward(R,y);
disp(norm((A\b)-x)<1e-14);

disp('b)')
A=[0,1;1,1]; b=[1:10;2:11];
[R,y]=gauss(A,b);
x=backward(R,y);
disp(norm((A\b)-x)<1e-14);

disp('c)')
A=-ones(10)+11*eye(10); b=[1:10]';
[R,y]=gauss(A,b);
x=backward(R,y);
disp(norm((A\b)-x)<1e-13);

% Komplexitaet:
% Sei y \in R^m, backward muss Algo. 7.11 für jede Spalte in y ein mal ausführen,
% D.h. #(ops)=m*(n^2/2+O(n))=O(n*m)