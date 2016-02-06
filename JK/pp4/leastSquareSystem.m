function [A,b] = leastSquareSystem(x,y,n)
	A=x'.^0;
	b=y';
	for i=1:n
		a=x'.^i;
		A=[A a];
	end
end