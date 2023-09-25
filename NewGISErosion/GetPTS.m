function points = GetPTS(a)

N=length(a);
yr=[];for i=1:N;yr(i)=str2double(a(i).Name(end-3:end));end
dt=yr(1:end-1)-yr(2:end);

for i=1:N
    x=a(i).Lat;    y=a(i).Lon;
    [x, y]=deg2utm(x,y);
    hold on;plot(x,y)
end

[xi,yi] = getpts;[xi' yi'];
points = [xi' yi']

