function [x,y] = generateData (m,f)
  x=((1:m).-1)./(m-1);
  y=f(x);
