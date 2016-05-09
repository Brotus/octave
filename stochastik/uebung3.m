disp('G2 b');
X=[8100,6600,8700,8700,9900,8800];
Y=[17.9,18.8,19.6,19,20.9,16.5];
XM=mittelwert(X)
YM=mittelwert(Y)
a=kovarianz(X,Y)/kovarianz(X,X)

disp('G2 c');
X2=[8100,6600,8700,8700,8800];
Y2=[17.9,18.8,19.6,19,16.5];
XM2=mittelwert(X2)
YM2=mittelwert(Y2)
a2=kovarianz(X2,Y2)/kovarianz(X2,X2)

disp('G3 a')
r=kovarianz(X,Y)/sqrt(kovarianz(X,X)*kovarianz(Y,Y))
r2=kovarianz(X2,Y2)/sqrt(kovarianz(X2,X2)*kovarianz(Y2,Y2))