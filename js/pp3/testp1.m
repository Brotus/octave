clc

% Teilaufgabe (a)
'Teilaufgabe (a)'
A=[2,1;1,2]; b=[3,4;3,1];
[R,y]=gauss(A,b)
% korrektes Ergebnis

[R,y]=gauss(A,[]);
y
% Es werden keine Zeilen vertauscht, da die Matrix bereits im pivotisierten
% Zustand ist. (-1)^0=1.


% Teilaufgabe (b)
'Teilaufgabe (b)'
A=[0,1;1,1]; b=[1:10;2:11];
[R,y]=gauss(A,b)
% korrektes Ergebnis

[R,y]=gauss(A,[]);
y
% Die beiden Zeilen müssen ein mal vertauscht werden. Dann hat A Zeilenstufenform. (-1)^1=-1


% Teilaufgabe (c)
'Teilaufgabe (c)'
A=-ones(10)+11*eye(10); b=[1:10]';
[R,y]=gauss(A,b)
% korrektes Ergebnis

[R,y]=gauss(A,[]);
y
% Auf der Diagonalen stehen bereits die groessten Elemente also muss nicht
% pivotisiert werden. (-1)^0=1