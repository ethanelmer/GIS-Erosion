function wavePower = WavePowerSites(siteFlag)

%[0 0 0 0 0 0 0 0 0 0 0 0]*1000 - template

%Breton 1
if siteFlag == 1 
    fi=[10  10  60  40  40  40  0   0  0    0   0   0 ]*1000;end

%Breton 2
if siteFlag == 2 
    fi=[ 6   60  60  0  0   0   0   0    0   0   5   4]*1000;end

%Breton 3
if siteFlag == 3 
    fi=[ 0   7    50 40  30  0   0   0   0   0   0   0  ]*1000;end

%Barat 1
if siteFlag == 4 
    fi=[ 9   6   0.5  0.5 0.5 1.5 0    0   0   0   0  0.5]*1000;end

%Barat 2
if siteFlag == 5 
    fi=[ 6   10   7   7    5   0   0   0   0  0.5 1.5  1.7]*1000;end

%Barat 3
if siteFlag == 6 
    fi=[0.5  9   6    3  2   1   2   0   0   0   0   0]*1000;end

%Terre 1
if siteFlag == 7 
    fi=[ 0   0   0   0   2   4   5   5  10   0   0  0   0]*1000;end

%Terre 2
if siteFlag == 8 
    fi=[1.7  0   0   0   0   0   0   1  1.5  12  42  3]*1000;end

%Terre 3
if siteFlag == 9 
    fi=[2.5 1.2   0  0   0   0   0   0   0  0.5 42   4]*1000;end

%Terre 4
if siteFlag ==10 
    fi=[0 0 0 0 0 0 0 3 4.5 12 10 12]*1000;end

%Terre Marsh 2
if siteFlag ==11 
    fi=[0 0 0 0 0 0.7 3.66 13.2 28 13 12.6 0]*1000;end

%Terre Marsh 3
if siteFlag ==12 
    fi = [0 0 0 0 0 0.4 1.9 1.9 2.09 8 14.2 1.3]*1000;end

%Derniere 1
if siteFlag==13 %270 is just open sea
    fi = [0 0 0 0 0 2 4 5.5 8.5 0 1 0]*1000; end

%Derniere 2
if siteFlag==14 %270 is just open sea
    fi = [0 0 0 0 2.8 2 1.8 1.8 2.6 0 0 0]*1000; end

%Derniere 3
if siteFlag==15 
    fi = [1.57 4.1 12 14.4 0.9 2 0 0 0 0 0 0]*1000; end

%Derniere 4
if siteFlag==16 
    fi = [5.5 9 44 0 0 0 0 0 0 7 4.5 0]*1000;end

%Terre Marsh 5
if siteFlag==17 
    fi = [0 0 0 0 0.66 0.83 8.7 13.7 23.65 35.5 0 0]*1000;end

%Terre Marsh 6
if siteFlag==18 
    fi = [0 0 0 0 2.6 1.93 1.75 11.12 7.7 40 0 0]*1000;end

%Terre Marsh 7
if siteFlag==19
    fi = [0 0 0 0 0 0 0 2 5.4 10.57 12.76 1.11]*1000;end

%Terre 5
if siteFlag==20
    fi = [0 0 0 0 4.1 4.18 4.88 9.42 8.23 40.93 0 0]*1000;end

%Terre 6
if siteFlag==21
    fi = [3.3 0 0 0 0 0 0 0 0.38 11.86 41 4]*1000;end

%Terre 7
if siteFlag==22
    fi = [0 0 0 0 0 0 3.44 5 10.26 12.75 0 0]*1000;end

%Terre 8
if siteFlag==23
    fi = [0 0 0 0 0 0 3 4.11 9.38 11 1.65 0]*1000;end

%Terre 9
if siteFlag==24
    fi = [0  0   0   0   0   0   0   1.22  2  11  13  2.9]*1000;end
wavePower=WavePowersitesfunction(fi);