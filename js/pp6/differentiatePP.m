function sd = differentiatePP (s)
  A=s.a;
  [n,m]=size(A);
  B=zeros(n,m-1);
  for i = 1:n
    v=A(i,:);
    v=v(1:m-1);
    u=m:-1:1;
    v=v.*u;
    B(i,:)=v;
  end
  sd.x=x;
  sd.a=B;
