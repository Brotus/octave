function v = mvp_ut(A,b)
	if size(A)(2) == length (b)
	for i = 1:size(A)(1)
		u = A(i,1:end);
		n=1;
		for j = n:length (b)
			g(j) = u(j) * b(j);
			n = n + 1 ;
		endfor
	v(i) =  sum(g);
	endfor
	else error("Dimensions don´t match");
	endif
endfunction