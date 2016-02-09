clc;
f=@(x) cos(2*pi*x);

disp('Teilaufgabe (a)');
m=20;
[x,y]=generateData(m,f);

n=0:6;
approx = zeros(7);
for i = n
    [A,b]=leastSquareSystem(x',y',i);
    C=A'*A;
    B=A'*b;
    approx(1:(i+1),i+1)=C\B;
end
disp(approx);
% je groesser der Grad des polynom, desto mehr Stuetzstellen

disp('Teilaufgabe (b)');
% feines Gitter
g=(0:100)'/100;
p0=@(x)  x.^0*approx(1,1);
p1=@(x) [x.^0,x]*approx(1:2,2);
p2=@(x) [x.^0,x,x.^2]*approx(1:3,3);
p3=@(x) [x.^0,x,x.^2,x.^3]*approx(1:4,4);
p4=@(x) [x.^0,x,x.^2,x.^3,x.^4]*approx(1:5,5);
p5=@(x) [x.^0,x,x.^2,x.^3,x.^4,x.^5]*approx(1:6,6);
p6=@(x) [x.^0,x,x.^2,x.^3,x.^4,x.^5,x.^6]*approx(:,7);

plot(g,p0(g),'b.',g,p1(g),'g.',g,p2(g),'r.',g,p3(g),'c.',g,p4(g),'m.',g,p5(g),'y.',g,p6(g),'k.',g,f(g),'o')
legend('p0','p1','p2','p3','p4','p5','p6','f','Location','eastoutside')
xlabel('x')
ylabel('y')

disp('Teilaufgabe (c)');
en=n;

en(1)=sum(abs(f(g)-p0(g)).^2);
en(2)=sum(abs(f(g)-p1(g)).^2);
en(3)=sum(abs(f(g)-p2(g)).^2);
en(4)=sum(abs(f(g)-p3(g)).^2);
en(5)=sum(abs(f(g)-p4(g)).^2);
en(6)=sum(abs(f(g)-p5(g)).^2);
en(7)=sum(abs(f(g)-p6(g)).^2);
en=en/m;
disp('err');
disp(en);
figure
semilogy(n,en,'*')
% (1/10)-lineare konvergenz
