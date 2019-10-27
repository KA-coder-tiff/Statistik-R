# Aufgabe 1

# I Car licence plates
26^3*10^3 #(a)
1*2*26*10^2*1 #(b)

# II Symphony orchestra program
30*15*9 #(a)
(30*15*9)*factorial(3) #(b)
choose(54, 3)*factorial(3) #(c)

# 2) Poker game
deck = 52
hand = 5
ranks = 13
suits = 4
A = ranks*choose(suits, 3)*(ranks-1)*choose(suits,2)
A
A/choose(deck,hand) #(a)
4/52*1/51*1/50*1/49*1/48*factorial(5) #(b)
4/choose(52, 5)

# 3) Independence
#(a)
#(A'∩B') = 1-(A∪B) = 1-(A+B)-(A∩B) = 1-A-B-A*B = (1-A)*(1-B) = (A')*(B')
#(b)
A = 0.6
B = 0.3
#i) not(A and B)
1-(A*B)
#ii) (A and notB)or(notA and B)
A*(1-B) + B*(1-A)


# 4a)
300/400 #i.
210/300 #ii.
90/400 #iii.
300/400+10/400 #iv.

# (b) P(student athlete) != P(student athlete | should be paid) and not mutally exclusive

# 5) Coin game
1/2*(1/(1-1/4)) #(a)
p=1/2
p*(1/(1-(1-p)^2)) #(b)

# 6) Computer reliability
         # 1
       # /   \
     # 0.56  0.44
    #/   \    /   \
 #0.15  0.85 0.05  0.95 #(a)

defComp = 0.56*0.15+0.44*0.05 
defComp #(b)
defLap = 0.56*0.15
defLap/defComp*100 #(c)

# 7) Coding
(3/8)/(3/8+1/14)



