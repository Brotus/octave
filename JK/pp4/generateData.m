function [x,y] = generateData(m,f)
	for i = 1:m
		x(i) = (i-1)/(m-1)
		y(i) = f(x(i))
	end
end