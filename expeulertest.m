
f=@(x)exp(x)

for i=1:5
  A = expeuler(f,0,1,1/2^i,2^i);
	
	  v = zeros(2^i+1,1);
		w = zeros(2^i+1,1);
  for j=1:(2^i+1)
		w(j)=exp(A(j,1));
	  v(j)=abs(exp(A(j,1))-A(j,2));
	end
	A=[A w v]
	max(A(:,4))
end

