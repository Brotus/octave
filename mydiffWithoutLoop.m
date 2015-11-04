function d = mydiffWithoutLoop(x) 
v = x(2:end);
u = x(1:end-1);
d= u-v;