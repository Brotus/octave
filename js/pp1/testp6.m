z=0:0.1:5;
xi=0:5;
% y der Lagrange-Polynome
y=eye(6);
newtonci=zeros(6);
newtonxi=newtonci;

% l_j(x_j)=1, l_j(x_i)=0 fuer i~=j
for j=0:5
	[newtonci(j+1,:), newtonxi(j+1,:)] = compute_newton_poly(xi,y(j+1,:));
end

yval=zeros(6,51);
for j=1:6
    yval(j,:)=eval_newton_poly(newtonci(j,:),newtonxi(j,:),z);
end

plot(z,yval(1,:),'-b',z,yval(2,:),'-g',z,yval(3,:),'-c',z,yval(4,:),'-m',z,yval(5,:),'-k',z,yval(6,:),'-y')
legend('l_0', 'l_1', 'l_2', 'l_3', 'l_4', 'l_5', 'Location', 'eastoutside')
xlabel('x')
ylabel('l(x)')

% Octave:
%figure
%plot(z,eval_newton_poly(newtonci(1,:),newtonxi(1,:),z),'r',
%z,eval_newton_poly(newtonci(2,:),newtonxi(2,:),z),'b',
%z,eval_newton_poly(newtonci(3,:),newtonxi(3,:),z),'g',
%z,eval_newton_poly(newtonci(4,:),newtonxi(4,:),z),'c',
%z,eval_newton_poly(newtonci(5,:),newtonxi(5,:),z),'m',
%z,eval_newton_poly(newtonci(6,:),newtonxi(6,:),z),'k')
%legend('l_0(x)', 'l_1(x)', 'l_2(x)', 'l_3(x)', 'l_4(x)', 'l_5(x)', 'Location', 'northwest')
