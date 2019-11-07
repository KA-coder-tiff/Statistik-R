#(1) Human resource testing
pnorm(116, 100, 16) - pnorm(84, 100, 16) #(a)
#(b)
qnorm(0.975, 100, 16)
qnorm(0.025, 100, 16)

#(2) Coin throws
pbinom(260, 600, 3/4) - pbinom(239, 600, 3/4) #(a)
Ex = 1*3/4 #np
Ex
VarX = 1*3/4*(1-3/4) #np(1-p)
VarX

pnorm(260, 600*Ex, sqrt(600*VarX)) - pnorm(239, 600*Ex, sqrt(600*VarX)) #(b)

#(3) Cars arrivals
ppois(62, 50) - ppois(53, 50) #(a)

pnorm(62.5, 50, sqrt(50)) - pnorm(53.5, 50, sqrt(50)) #(b) mit stetigkeitskorrektur

#(4) Coffee and doughnuts
1-pnorm(2000, 6*320, sqrt(6*400)) #(a)

CofEx = 0.5*320
CofVar = (0.5*20)^2
DougEx = 0.4*150
DougVar = (0.4*12)^2

1 - pnorm(300, CofEx + DougEx, sqrt(CofVar + DougVar)) #(b)

#(5) Sum and averag

