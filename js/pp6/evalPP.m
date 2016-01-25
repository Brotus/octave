function y = evalPP (s, x)
  A=s.a;
  X=s.x;
  [n,k]=size(A); k=k-1;
  for l=1:length(x)
    for i=1:n
      if x(l)<X(i+1), break;
    end
    y(l)=polyval(A(i,:),x(l)-X(i));
    %y(l)=horner(A(i,:),x(l)-X(i));
  end