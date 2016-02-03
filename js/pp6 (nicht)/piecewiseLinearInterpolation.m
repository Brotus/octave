function s1 = piecewiseLinearInterpolation (xi,f)
  n=length(xi);
  A=zeros(n-1,2);
  for i=2:n
    A(i-1,:)=[f(xi(i-1)),(f(xi(i))-f(xi(i-1)))/(xi(i)-xi(i-1))];
  end
  s1.a=A;
  s1.x=xi;