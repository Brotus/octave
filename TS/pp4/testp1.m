f = @(x) 1+x+x.^2;
m = [2,5,10];
n = [0,1,2];

for i=1:length(m)
  disp(['m: ' num2str(m(i))])
  [x,y]=generateData(m(i),f)
  for j=1:length(n)
    disp(['n: ' num2str(n(j))])
    [A,b]=leastSquareSystem(x,y,n(j))
  end
end