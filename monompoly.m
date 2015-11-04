function a = monompoly(x,y)
	A = [];
	for i=0:length(x)-1
		A = [A, (x.^i)']
	endfor
	a = A\y';
end