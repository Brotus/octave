disp('a)')
A=[2,1;1,2]; b=[3,4;3,1];
[R,y]=gauss(A,b);
fprintf('Für A, b ')
disp(A, b)
fprintf('erhalten wir ')
disp(R, y)
[~,y]=gauss(A,[]);
disp('Für leeres b');
disp(y);
% Keine Zeilenvertauschungen (Matrix bereits pivotisiert d.h. b=(-1)^0=1.


disp('b)')
A=[0,1;1,1]; b=[1:10 ; 2:11];
[R,y]=gauss(A,b);
disp('R');
disp(R);
disp('y');
disp(y);

[~,y]=gauss(A,[]);
disp('Für leeres b');
disp(y);
% Die beiden Zeilen müssen ein mal vertauscht werden. D.h. b=(-1)^1=-1

disp('Teilaufgabe (c)')
A=-ones(10)+11*eye(10); b=(1:10)';
[R,y]=gauss(A,b);
disp('R');
disp(R);
disp('y');
disp(y);

[~,y]=gauss(A,[]);
disp('y, b=[]');
disp(y);
% Auf der Diagonalen stehen erneut die groessten Elemente also muss nicht
% pivotisiert werden. b=(-1)^0=1
% Komplexität:  Sei n die Dimension von A und m die Anzahl spalten von b, 
% dann #(ops) = 1/6 * (2n^3 + 3nm^2 + 3n^2 - 3nm -5n)