function m = determine_exactness_order (ti,wi)
	m = 0;
	f = @(x) x^m;
	
	while(abs(quadrature(f, 0, 1, ti, wi)-quad(f, 0,1)) < 1e-13 )
		m = m+1;
	end
	m = m-1;
end