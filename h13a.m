function v=h13a()
maxv=zeros(1,5);
for i=1:5
  A = expeuler(@(x) exp(x),0,1,1/2^i,2^i);
  expv = zeros(2^i+1,1);
  diffv = zeros(2^i+1,1);
  for j=1:(2^i+1)
    expv(j)=exp(A(j,1));
    diffv(j)=abs(expv(j)-A(j,2));
  end
  A=[A expv diffv];
  maxv(1,i)=max(A(:,4));
end
v=maxv;
end