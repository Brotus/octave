function s0=piecewiseConstantApproximation(xi,f)
  n=length(xi);
  s0.a=zeros(n-1,1);
  for i=2:n
    s0.a(i-1)=quad(f,xi(i-1),xi(i))/(xi(i)-xi(i-1));
    %s0.a(i-1)=integral(f,xi(i-1),xi(i))/(xi(i)-xi(i-1)); integral in MATLAB = quad
  end
  s0.x=xi;