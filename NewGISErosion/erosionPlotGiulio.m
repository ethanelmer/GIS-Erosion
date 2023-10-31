function erosionPlot(waveFlag,siteFlag, a, wavePower)

N=length(a);
xo = pointValues(siteFlag);
M=length(xo(2,:));
px=NaN*zeros(N,M);
py=NaN*zeros(N,M);
for i=1:N
    x=a(i).Lat;   
    y=a(i).Lon;
    [x, y]=deg2utm(x,y);
    %hold on;plot(x,y)
    for j=1:M
        [ppx,ppy]=polyxpoly(xo(1:2,j),xo(3:4,j),x,y);
        if isfinite(ppx)
            px(i,j)=ppx(1);
            py(i,j)=ppy(1);
        end
    end
end
yr=[];
for i=1:N
    yr(i)=str2num(a(i).Name(end-3:end));
end
dt=yr(1:end-1)-yr(2:end);
mangroveMatrix = mangroveMatrices(siteFlag);

d=[];
    for i=1:N-1
        for j=1:M
        d(i,j)=sqrt((px(i+1,j)-px(i,j)).^2+(py(i+1,j)-py(i,j)).^2);
        end
    end

R=d'./dt;
Rn = R/wavePower;
Vp=mangroveMatrix(:,1:end-1); %Take off from the end
%Vp=mangroveMatrix(:,2:end);    %Take off from the start
yrp=ones(M,1)*yr(1:end-1);

%Breton sites
if siteFlag==1
R(:,end-2)=NaN;%Katrina in 2005
end
if siteFlag ==2
    R(:,end-2)=NaN;%Katrina in 2005
end
if siteFlag ==3
    R(:,end-2)=NaN;%Katrina in 2005
end

if waveFlag == 1 %Wave Only Plotting
    figure(2)
    p0 = plot(yrp(Vp==0),Rn(Vp==0),'ob','DisplayName','Marsh'); hold on;
    p1 = plot(yrp(Vp==1),Rn(Vp==1),'*r','DisplayName', 'Mangrove'); hold on;
    p2 = plot(yrp(Vp==2),Rn(Vp==2),'+g','DisplayName', 'Unsure'); hold on;
    p3 = plot(yrp(Vp==3),Rn(Vp==3),'^c','DisplayName', 'Test'); hold on;
    %legend([p0 p1 p2 p3], 'Marsh', 'Mangrove', 'Unsure', 'Test');
    xlim([1995 2023]);ylim([0 2])
    title('Wave Normalized Plot')
    %NormalizedErosionRates=[ mean(Rn(:)) mean(Rn(Vp==1))  mean(Rn(Vp==0)) ]

end

if waveFlag == 2 %No Wave Only Plotting
    figure(2)
    p0 = plot(yrp(Vp==0),R(Vp==0),'ob','DisplayName','Marsh'); hold on;
    p1 = plot(yrp(Vp==1),R(Vp==1),'*r','DisplayName', 'Mangrove'); hold on;
    p2 = plot(yrp(Vp==2),R(Vp==2),'+g','DisplayName', 'Unsure'); hold on;
    p3 = plot(yrp(Vp==3),R(Vp==3),'^c','DisplayName', 'Test'); hold on;
    %legend([p0 p1 p2 p3],'Marsh', 'Mangrove', 'Unsure','Test')
    xlim([1995 2023]);ylim([0 30])
    title('No Wave Normalization Plot')
    %ErosionRates=[ nanmean(R(:)) nanmean(R(Vp==1))  nanmean(R(Vp==0)) ]

    Ri=R;
    Ri(Vp~=1)=NaN;
    Ri=nanmean(Ri,1);dti=dt;dti(isnan(Ri))=NaN;%average over transects
    Rmngr=nansum(Ri.*dti)/nansum(dti);%weighted average over years
    
    Ri=R;
    Ri(Vp~=0)=NaN;
    Ri=nanmean(Ri,1);dti=dt;dti(isnan(Ri))=NaN;%average over transects
    Rmrsh=nansum(Ri.*dti)/nansum(dti);%weighted average over years
    
    [Rmrsh Rmngr]
end


R1=R;R1(Vp~=1)=NaN;
R2=R;R2(Vp~=0)=NaN;
hold on;plot(yrp,nanmean(R1),'-r',yrp,nanmean(R2),'-b')
