function y = evalPP (s, x)
  [n,k]=size(s.a); k=k-1;
  for l=1:length(x)
    for i=1:n
      if x(l)<x(i+1), break;
    end
    y(l)=horner(aij(i,:),x(l)-xi(i));
  end