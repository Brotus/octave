function wi = compute_weights (ti)

for i = 0:length(ti)-1
	for j = 1:length(ti)
		A(i,j) = ti(j)^(i);
	end
	y(i) = 1/i;
	end
	wi = A\y
	wi=wi.'
	