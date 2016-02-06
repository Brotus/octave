function a = aux_newtomon (i, x)
  X=powerset(x);
  a=0;
  for j=1:length(X)
    if length(cell2mat(X(j))) == i
      a=a+prod(cell2mat(X(j)));
    end
  end
end