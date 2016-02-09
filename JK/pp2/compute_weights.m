%Eingabe
%			ti = Stuetzstellen
%Ausgabe
%			wi = Gewichte 



function wi = compute_weights (ti)

A=[];
y=[];
  for i = 1:length(ti)
    for j = 1:length(ti)
      A(i,j) = ti(j)^(i-1);
    end
    y(i)=1/i;
  end
wi = A\y.';
wi=wi.';
end
	