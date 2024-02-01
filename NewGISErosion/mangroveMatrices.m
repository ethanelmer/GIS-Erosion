function mangroveMatrix = mangroveMatrices(siteFlag)

%Matrix to identify marsh-mangrove

% 2 = Unsure; 1 = Mangrove; 0 = Marsh

%Breton 1
if siteFlag == 1 
mangroveMatrix=[%Recent -------------> Oldest
   1    1    1    1    1     1     1     1     2     2 %Transection 1
   1    1    1    1    1     1     1     1     2     2 %Transection 2
   1    1    1    1    1     1     1     1     2     2 %Transection 3
   1    1    1    1    1     1     1     1     2     2 %Transection 4
   1    1    1    1    1     1     1     1     2     2 %Transection 5
   1    0    0    0    0     0     0     0     0     0 %Transection 6
   0    0    0    0    0     0     0     0     0     0 %Transection 7
   0    0    0    0    0     0     0     0     0     0 %Transection 8
   1    1    1    0    0     0     0     0     0     0 %Transection 9
   1    0    0    0    0     0     0     0     0     0 %Transection 10
   0    0    0    0    0     0     0     0     0     0 %Transection 11
];end

%Breton 2
if siteFlag == 2 
mangroveMatrix=[ 
   1    1    1    0    0     0     0     0      %Transection 1
   1    1    1    1    0     0     0     0      %Transection 2
   1    1    1    1    1     1     1     0      %Transection 3
   1    1    1    1    1     1     1     1      %Transection 4
   1    1    1    1    1     1     1     1      %Transection 5
   1    1    1    1    0     0     0     0      %Transection 6
]  ;  end

%Breton 3
if siteFlag == 3 
mangroveMatrix=[%COME BACK TO THIS. HARD TO DIFFERENTIATE MANGROVES FROM USUAL VEGETATION? - NO MANGROVE
   1    1    1    0    0     0     0     0     0 %Transection 1
   1    1    1    1    1     0     0     0     0 %Transection 2
   0    0    0    0    0     0     0     0     0 %Transection 3
   0    0    0    0    0     0     0     0     0 %Transection 4
   0    0    0    0    0     0     0     0     0 %Transection 5
   0    0    0    0    0     0     0     0     0 %Transection 6
   1    1    1    0    0     0     0     0     0 %Transection 7
]  ;end

%BARAT SITES%

%Barat 1
if siteFlag == 4 
mangroveMatrix=[%ASK DR. MARIOTTI ABOUT THIS DUE TO VERY SCATTERED NATURE OF MANGROVES
   1    1    1    1    1     1     1     1     2 %Transection 1
   1    1    1    1    1     1     1     1     2 %Transection 2
   1    1    1    1    1     1     1     1     2 %Transection 3
   1    1    1    1    1     1     1     1     2 %Transection 4
   0    0    1    1    0     0     0     0     2 %Transection 5
   0    0    1    1    0     0     0     0     2 %Transection 6
] ;end

%Barat 2
if siteFlag == 5 
mangroveMatrix=[
   1    1    1    1    1     1     1     1     1 %Transection 1
   1    1    1    1    1     1     1     1     1 %Transection 2
   1    1    1    1    1     1     1     1     1 %Transection 3
   1    1    1    1    1     1     1     1     1 %Transection 4
   1    1    1    1    1     1     1     1     1 %Transection 5
   1    1    1    1    1     1     1     1     1 %Transection 6
];end

if siteFlag == 6 %Barat 3
mangroveMatrix=[
   1    1    1    1    1     1     1     1 %Transection 1
   1    1    1    1    1     1     1     1 %Transection 2
   1    1    1    1    1     1     1     1 %Transection 3
   1    1    1    1    1     1     1     1 %Transection 4
   1    1    1    1    1     1     1     1 %Transection 5
   1    1    1    1    1     1     1     1 %Transection 6
   1    1    1    1    1     1     1     1 %Transection 7
];end

%Terre 1
if siteFlag == 7 
mangroveMatrix=[
   1    1    1    1    1     1     1     1 %Transection 1
   1    1    1    1    1     1     1     1 %Transection 2
   1    1    1    1    1     1     1     1 %Transection 3
   1    1    1    1    1     1     1     1 %Transection 4
   1    1    1    1    1     1     1     1 %Transection 5
   1    1    1    1    1     1     1     1 %Transection 6
   1    1    1    1    1     1     1     1 %Transection 7
];end

%Terre 2
if siteFlag == 8 
mangroveMatrix=[
   1    1    1    1    1     1     1     2     2 %Transection 1
   1    1    1    1    1     1     1     2     2 %Transection 2
   1    1    1    1    1     1     1     2     2 %Transection 3
   1    1    1    1    1     1     1     2     2 %Transection 4
   1    1    1    1    1     1     1     2     2 %Transection 5
   1    1    1    1    1     1     1     2     2 %Transection 6
   1    1    1    1    1     1     1     2     2 %Transection 7
] ;end

if siteFlag == 9 %Terre 3
mangroveMatrix=[
   1    1    1    1    1     1     1     2     2 %Transection 1
   1    1    1    1    1     1     1     2     2 %Transection 2
   1    1    1    1    1     1     1     2     2 %Transection 3
   1    1    1    1    1     1     1     2     2 %Transection 4
   1    1    1    1    1     1     1     2     2 %Transection 5
   1    1    1    1    1     1     1     2     2 %Transection 6
   1    1    1    1    1     1     1     2     2 %Transection 7
] ;end

%Terre 4
if siteFlag ==10 
mangroveMatrix=[0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0];end

%Terre Marsh 2
if siteFlag==11 
mangroveMatrix=[  
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0];end

if siteFlag ==12 %Terre Marsh 3
mangroveMatrix=[
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 ];end 

%Derniere 1
if siteFlag==13 
mangroveMatrix =[
   1  1  1  1  0  0  0  2  2  
   1  1  1  1  0  0  0  2  2   
   1  1  1  1  0  0  0  2  2  
   1  1  1  1  0  0  0  2  2   
   1  1  1  1  1  0  0  2  2  
   1  1  1  1  1  1  0  2  2  
   1  1  1  1  1  1  1  2  2  
   1  1  1  1  1  1  1  2  2  
   1  1  1  1  1  1  1  2  2];end

%Derniere 2
if siteFlag==14
mangroveMatrix =[
   1  1  1  1  0  2  2    
   1  1  1  1  0  2  2     
   1  1  1  1  0  2  2    
   1  1  1  1  0  2  2     
   1  1  1  1  0  2  2    
   1  1  1  1  0  2  2    
   1  1  1  1  0  2  2    
   1  1  1  1  0  2  2    
   1  1  1  1  0  2  2];end

%Derniere 3
if siteFlag==15
mangroveMatrix =[  
   1 1 1 1 1 
   1 1 1 1 1  
   1 1 1 1 1 
   1 1 1 1 1  
   1 1 1 1 1 
   1 1 1 1 1 
   1 1 1 1 1 ];end

%Breton 4
if siteFlag==16
mangroveMatrix=[ 
0 0 0 0 0
0 0 0 0 0
0 0 0 0 0
0 0 0 0 0
0 0 0 0 0
0 0 0 0 0
0 0 0 0 0
0 0 0 0 0];end

%Terre Marsh 5
if siteFlag==17 
mangroveMatrix =[  
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0 0 0];end

%Terre Marsh 6
if siteFlag==18 
mangroveMatrix =[  
   1 1 1 0 0 0 0 0
   1 1 1 0 0 0 0 0 
   1 1 1 0 0 0 0 0
   1 1 0 0 0 0 0 0
   0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0];end

%Terre Marsh 7
if siteFlag==19 
mangroveMatrix =[  
   1 1 1 1 0 0 0 
   1 1 1 1 0 0 0 
   1 1 1 1 0 0 0 
   1 1 1 1 0 0 0 
   1 1 1 1 0 0 0
   1 1 1 1 0 0 0
   1 1 1 1 0 0 0
   1 1 1 1 0 0 0];end

%Terre 5
if siteFlag==20 
mangroveMatrix =[  
   1 1 1 1 1 1 1
   1 1 1 1 1 1 1 
   1 1 1 1 1 1 1
   1 1 1 1 1 1 1 
   1 1 1 1 1 1 1
   1 1 1 1 1 1 1
   1 1 1 1 1 1 1
   1 1 1 1 1 1 1];end

%Terre 6
if siteFlag==21 
mangroveMatrix =[  
   1 1 1 1 1 1 1 1 1 1
   1 1 1 1 1 1 1 1 1 1
   1 1 1 1 1 1 1 1 1 1
   1 1 1 1 1 1 1 1 1 1
   1 1 1 1 1 1 1 1 1 1
   1 1 1 1 1 1 1 1 1 1
   1 1 1 1 1 1 1 1 1 1
   1 1 1 1 1 1 1 1 1 1];end

%Terre 7
if siteFlag==22 
mangroveMatrix =[  
   0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 
   1 1 1 1 1 1 1 
   1 1 1 1 1 1 1 
   1 1 1 1 1 1 1 
   0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 
   0 0 0 0 0 0 0];end

%Terre 8
if siteFlag==23 %Extremely Sparse
mangroveMatrix =[  
   0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 
   0 0 0 0 0 0 0 
   1 1 1 1 1 1 1 
   1 1 1 1 1 1 1 
   1 1 1 1 1 1 1 
   1 1 1 1 1 1 1 
   1 1 1 1 1 2 2 
   1 1 1 1 1 2 2];end

%Terre 8
if siteFlag==24 %Extremely Sparse
mangroveMatrix =[  
   1 1 1 1 1   
   1 1 1 1 1   
   1 1 1 1 1   
   1 1 1 1 1   
   1 1 1 1 1   
   1 1 1 1 1   
   1 1 1 1 1   
   1 1 1 1 1   
   1 1 1 1 1  ];end