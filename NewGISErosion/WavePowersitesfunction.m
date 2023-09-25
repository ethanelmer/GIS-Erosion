function Pw=getwavepower(fi);
load TidetimeseriesWINDbarataria;TidetimeseriesWIND=TidetimeseriesWINDbarataria;
TidetimeseriesWIND(5,:)=mod(TidetimeseriesWIND(5,:),360);
t_WINDspeed=TidetimeseriesWIND(4,:);
t_WINDdir=TidetimeseriesWIND(5,:);
%figure; wind_rose(t_WINDdir+180,t_WINDspeed,'ci',[1 2 7],'dtype','meteo'); 

h=2;
df=30;
di=0:df:330;
% %flag = 9;
% 
% if flag == 1 %Breton 1 Result = 76.8149
%     %   0 | 30 |60 |90|120|150|180|210|240|270|300|330
%     fi=[10  10  60  40  40  40  0   0  0    0   0   0 ]*1000; end
% 
% if flag == 2 %Breton 2 Result = 36.4042 
%      %   0 | 30 |60 |90|120|150|180|210|240|270|300|330
%     fi=[ 6   60  60  0  0   0   0   0    0   0   5   4]*1000; end
% 
% if flag == 3 %Breton 3 Result = 50.2539
%      %   0 | 30 |60 |90|120|150|180|210|240|270|300|330
%     fi=[ 0   7    50 40  30  0   0   0   0   0   0   0  ]*1000; end
% 
% if flag == 4 %Barat 1         %? Result = 16.5815
%      %   0 | 30 |60 | 90 |120|150|180|210|240|270|300|330
%     fi=[ 9   6   0.5  0.5 0.5 1.5 0    0   0   0   0  0.5]*1000; end
% 
% if flag == 5 %Barat 2 Result = 32.8695
%      %   0 | 30 |60 | 90 |120|150|180|210|240|270|300|330
%     fi=[ 6   10   7   7    5   0   0   0   0  0.5 1.5  1.7]*1000; end
% 
% if flag == 6 %Barat 3 Result = 18.1005
%      %   0 | 30 |60 |90|120|150|180|210|240|270|300|330
%     fi=[0.5  9   6    3  2   1   2   0   0   0   0   0]*1000; end
% 
% if flag ==7 %Terre 1 Result = 13.3185
%      %   0 | 30 |60 |90|120|150|180|210|240|270|300|330 
%     fi=[ 0   0   0   0   2   4   5   5  10   0   0  0   0]*1000; end
% 
% if flag == 8 %Terre 2 Result = 14.1865
%      %   0 | 30 |60 |90|120|150|180|210|240|270|300|330
%     fi=[1.7  0   0   0   0   0   0   1  1.5  12  42  3]*1000; end
% 
% if flag == 9 %Terre 3 Result = 11.5472
%      %   0 | 30 |60 |90|120|150|180|210|240|270|300|330
%     fi=[2.5 1.2   0  0   0   0   0   0   0  0.5 42   4]*1000; end

ft=t_WINDdir;
for i=1:length(ft)
    ft(i)=fi(floor(t_WINDdir(i)/df)+1);
end

[Hs,Tp]=YeV(ft, t_WINDspeed, h);
k=wavek(1./Tp,h);
cg=(2*pi./k./Tp)*0.5.*(1+2*k.*h./(sinh(2*k.*h)));cg(Hs==0)=0;
PW=cg*1030*9.8.*Hs.^2/16;

Pw=mean(PW);


