N=zeros(1,5);
yN=h13a();
eoc=zeros(1,5);
for i=1:5
  N(i)=1/2^i;
  if i==1
    eoc(i)=0;
  else
    eoc(i)=log(yN(1,i-1)/yN(1,i))/log(N(1,i-1)/N(1,i));
  end
end
N
yN
eoc