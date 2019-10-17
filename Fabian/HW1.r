# Aufgabe 1
#I
26^3 * 10^3
2*26*100

#II
30*15*9
30*15*9*factorial(3)
choose(54,3)*factorial(3)

# Aufgabe 2
fullHouse = 13*choose(4,3) * 12 *choose(4,2) 
fullHouse
fullHouse/choose(52,5)

4/choose(52,5)

# Aufgabe 3
# P(A´and B´) = 1-P(A or B)
#   = 1 - P(A) - P(B) + P(A and B)
#   = 1 - P(A) - P(B) + P(A)*P(B)
#   = (1-P(A))*(1-P(B)) = P(A´)*P(B´)
1-0.6*0.3
0.6+0.3-0.3*0.6*2
1-0.6*0.3-0.7*0.4

# Aufgabe 4
300/400
210/300
100/400*90/100
# P(nonAthlete) + P(notPaid) - P(nonAthlete & not paid)
300/400 + 100/400 - 90/400
# not independent p(athlete) != p(athlete|paid)
100/400 != 90/300
# athlete and non athlete are mutually exclusive whereas 
# athlete and prefers payment are not 

# Aufgabe 5
1/2 + 1/8 + 1/32 + 1/128 
p = 1/2
# p*sum((1-p)^2i,i=0,n)
p/(1-(1-p)^2)

 
# Aufgabe 6
#        1
#    /       \
# 0.56      0.44
# |    \     |    \
# 5%  95%   15%   85%  

p = 0.44*0.05 + 0.56*0.15
p
0.56*0.15/p
# Aufgabe 7
(3/7*7/8)/(3/7*7/8+4/7*1/8)
