function visPTS(a, siteFlag)

pointVals = pointValues(siteFlag);

N=length(a);

M=length(pointVals(2,:));
px=NaN*zeros(N,M);py=NaN*zeros(N,M);
transectFig = figure(1);
for i=1:N
    x=a(i).Lat;    y=a(i).Lon;
    [x, y]=deg2utm(x,y);
    hold on
    plot(x,y)
    for j=1:M
    [ppx,ppy]=polyxpoly(pointVals(1:2,j),pointVals(3:4,j),x,y);
    if isfinite(ppx);px(i,j)=ppx(1);py(i,j)=ppy(1);end
    end
end

for j=1:M
hold on;plot(pointVals(1:2,j),pointVals(3:4,j),'--k')
hold on;plot(px(:,j),py(:,j),'o')
end


for i=1:N-1
    for j=1:M
    d(i,j)=sqrt((px(i+1,j)-px(i,j)).^2+(py(i+1,j)-py(i,j)).^2);
    end

end

