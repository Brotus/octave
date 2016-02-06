function r = eval_monom_poly(ai,x)
	n = length(ai)-1;
	r = ai(n+1);
	for i = n:-1:1
		r = ai(i) + x*r;
	end
	
	
	