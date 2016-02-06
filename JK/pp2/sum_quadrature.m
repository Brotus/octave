function r = sum_quadrature (f, z, ti, wi)
	r = 0
	for k = 1:length(z)-1
		r = r + quadrature(f, z(i), z(i+1) , ti, wi);
	end