

function [ci,xi] = compute_newton_poly (xi,yi)
	[ci,xi]=[divdiff(xi,yi),xi];
endfunction
