f1=@(x) 1.*x;
f2=@(x) 1.+x;
f3=@(x) x.^2;

[x1,y1]=generateData(2,f1);
[x2,y2]=generateData(5,f1);
[x3,y3]=generateData(10,f1);

[A1,b1]=leastSquareSystem(x1,y1,2)
[A2,b2]=leastSquareSystem(x2,y2,5)
[A3,b3]=leastSquareSystem(x3,y3,10)

[x1,y1]=generateData(2,f2);
[x2,y2]=generateData(5,f2);
[x3,y3]=generateData(5,f2);

[A1,b1]=leastSquareSystem(x1,y1,2)
[A2,b2]=leastSquareSystem(x2,y2,5)
[A3,b3]=leastSquareSystem(x3,y3,10)

[x1,y1]=generateData(2,f3);
[x2,y2]=generateData(5,f3);
[x3,y3]=generateData(10,f3);

[A1,b1]=leastSquareSystem(x1,y1,2)
[A2,b2]=leastSquareSystem(x2,y2,5)
[A3,b3]=leastSquareSystem(x3,y3,10)
