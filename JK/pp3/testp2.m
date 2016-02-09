aA=[2,1;1,2];
ab=[3,4;3,1];

bA=[0,1;1,1];
bb=[1:10;2:11];

cA=-ones(10)+11*eye(10);
cb=[1:10]';

b=[];

[aR,ay]=gauss(aA,ab);
[bR,by]=gauss(bA,bb);
[cR,cy]=gauss(cA,cb);

disp('(a)')
ax = backward(aR, ay)

disp('(b)')
bx = backward(bR,by)

disp('(c)')
cx = backward(cR, cy)