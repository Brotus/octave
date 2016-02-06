function [x, xk] = bisection(f,a,b,tol)

i = 1;
x = (a+b)/2;
xk(i) = x;
while 1
  if abs(f(x)) <= tol
    break;
  end
  i = i + 1;
  if (f(a) < 0 && f(x) < 0) || (f(a) > 0 && f(x) > 0) 
    a = x;
  else
    b = x;
  end
  x = (a+b)/2;
  xk(i) = x;
end
end