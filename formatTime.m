function [years days h min sec milsec] = formatTime(seconds) 
tmp = seconds;
 years = floor(tmp/(365*24*60*60))
 tmp = tmp - years*(365*24*60*60);
 days = floor(tmp/(60*60*24))
 tmp = tmp - days*(60*60*24);
 h = floor(tmp/(60*60))
 tmp = tmp - h*60*60;
 min = floor(tmp/60)
 tmp = tmp - min*60;
 sec = floor(tmp)
 tmp = tmp - sec;
 milsec = tmp*1000
end