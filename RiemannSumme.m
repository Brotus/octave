function S = RiemannSumme ( a, b, epsilon, k, M, f)

	m = 1;
	n = k*m;
	sOld = nthTerm ( a, b, n, f);
	
	m = m+1;
	n = k*m;
	sNew = nthTerm ( a, b, n, f);
	
	while  abs(sOld - sNew) > epsilon
		if m >= M
			error ("gewünschte genauigkeit nicht erreicht");
		endif
		
		sOld = sNew;
		m = m+1;
		n = k*m;
		sNew = nthTerm (a,b,n,f);
	endwhile
		S = sNew;
end

function fx = functionSum (f, n, a, b)
	fx = 0;
	for i = 0:(n-1)
	fx = fx + f(a + (i + (.5)) * ((b - a)/n));
	endfor
end

function Sn = nthTerm (a, b, n, f )
	Sn = ((b-a)/n) * functionSum (f, n, a, b);
end
	