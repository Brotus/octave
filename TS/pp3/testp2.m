% Daten aus der Aufgabe
aA=[2,1;1,2];             ab=[3,4;3,1];
bA=[0,1;1,1];             bb=[1:10;2:11];
cA=-ones(10)+11*eye(10);  cb=[1:10]';

[aR,ay]=gauss(aA,ab);
[bR,by]=gauss(bA,bb);
[cR,cy]=gauss(cA,cb);

disp('Aufgabe (a)')
ax=backward(aR,ay)
disp('Aufgabe (b)')
bx=backward(bR,by)
disp('Aufgabe (c)')
cx=backward(cR,cy)

% Komplexität:  #(ops) = 1/2 * (mn^2 + nm)
%               n...Größe von A
%               m...Anzahl Spalten b