function [M, ci, xi] = newton_to_monomial (ci,xi) 
  xi = xi;
  M=zeros(length(ci),length(ci));
  for i = 1:length(ci);
   for j = 1:length(ci);
    if (i == j)
     M(i,j) =1;
    elseif (i < j)
      if (rem(i+j,2) == 0)
        sign = 1;
      else
        sign =-1;
      M(i,j)=sign*aux_newtomon((j-1)-(i-1),xi(1:j-1));
      end
    end
   end
  end
  M
  ci = M*ci';
end