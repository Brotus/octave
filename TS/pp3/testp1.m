% Daten aus der Aufgabe
aA=[2,1;1,2];             ab=[3,4;3,1];
bA=[0,1;1,1];             bb=[1:10;2:11];
cA=-ones(10)+11*eye(10);  cb=[1:10]';
b=[];
disp('Mit gegebenem b')
[aR,ay]=gauss(aA,ab)
[bR,by]=gauss(bA,bb)
[cR,cy]=gauss(cA,cb)
disp('Mit leerem b')
[aR,ay]=gauss(aA,b)
[bR,by]=gauss(bA,b)
[cR,cy]=gauss(cA,b)

% Komplexität:  #(ops) = 1/6 * (2n^3 + 3nm^2 + 3n^2 - 3nm -5n)
%               n...Größe von A
%               m...Anzahl Spalten b