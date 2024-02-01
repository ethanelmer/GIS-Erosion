clear;close all;clc

for siteFlag = 24

if siteFlag==1;a=kmz2struct('SiteBreton1.kmz');end
if siteFlag==2;a=kmz2struct('SiteBreton2.kmz');end
if siteFlag==3;a=kmz2struct('SiteBreton3.kmz');end
if siteFlag==4;a=kmz2struct('SiteBarat1.kmz');end
if siteFlag==5;a=kmz2struct('SiteBarat2.kmz');end
if siteFlag==6;a=kmz2struct('SiteBarat3.kmz');end
if siteFlag==7;a=kmz2struct('SiteTerre1.kmz');end
if siteFlag==8;a=kmz2struct('SiteTerre2.kmz');end
if siteFlag==9;a=kmz2struct('SiteTerre3.kmz');end
if siteFlag==10;a=kmz2struct('SiteTerre4.kmz');end 
if siteFlag==11;a=kmz2struct('TerreMarsh2.kmz');end
if siteFlag==12;a=kmz2struct('TerreMarsh3.kmz');end 
if siteFlag==13;a=kmz2struct('SiteDerniere1.kmz');end
if siteFlag==14;a=kmz2struct('SiteDerniere2.kmz');end
if siteFlag==15;a=kmz2struct('SiteDerniere3.kmz');end
if siteFlag==16;a=kmz2struct('SiteBreton4.kmz');end
if siteFlag==17;a=kmz2struct('SiteTerreMarsh5.kmz');end
if siteFlag==18;a=kmz2struct('SiteTerreMarsh6.kmz');end
if siteFlag==19;a=kmz2struct('SiteTerreMarsh7.kmz');end
if siteFlag==20;a=kmz2struct('SiteTerre5.kmz');end
if siteFlag==21;a=kmz2struct('SiteTerre6.kmz');end
if siteFlag==22;a=kmz2struct('SiteTerre7.kmz');end
if siteFlag==23;a=kmz2struct('SiteTerre8.kmz');end
if siteFlag ==24;a=kmz2struct('SiteTerre9.kmz');end

%GetPTS(a); %Function to display lines and select points for transects
%These points must be manually input into pointValues.m function 
visPTS(a, siteFlag);%Function to display the lines with transects determined from points in pointValues.m
wavePower = WavePowerSites(siteFlag) %Function containing the fetch and calculating the average wavepower of each site

waveFlag = 1; %1 = Wave, 2 = No Wave
erosionPlotGiulio(waveFlag, siteFlag, a, wavePower);%Function that graphs either the wave normalized or the raw erosion plots
%Also gives matrix(es) with erosion rates of the form [Average Mangrove Marsh]

end