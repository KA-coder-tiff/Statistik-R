# (1) Basketball free throws
dbinom(7, 10, 0.8) #(a)
sum(dbinom(8:10, 10, 0.85)) #(b)
sum((dbinom(0:10,10,0.8))*(dbinom(0:10,10,0.85))) #(c)

# (2) Train
(60+0)/2 #Erwartungswert 
sqrt((60-0)^2/12) #Standart Abweichung

#P(57 <= X <= 60)
3/60

# (3) Hurricane Insurance
#(a)
dpois(0, 27/22) #(1)
dpois(1, 27/22) #(2)
1-sum(dpois(0:2, 27/22)) #(3)
#(b)
qpois(0.995, 27/22) 

#(6)
#(d)
0.675*2500+32000 - (-0.675)*2500+32000

#(7)
#(a)
x = seq(50,300, 0.1)
plot(x, dnorm(x, 188, 24), type = 'l', main = "cholesterol", xlab = "mg/dL", ylab = "pdf")
#(b)
pnorm(200, 188, 24, lower.tail = FALSE)
1-pnorm(200, 188, 24)

#(c)
pnorm(170, 188, 24) - pnorm(150, 188, 24)

#(d)
(0.675*24+188) - (-0.675*24+188) #mit Werten aus Tabelle
qnorm(0.75, 188, 24) - qnorm(0.25, 188, 24) 

#(e)
qnorm(0.85, 188, 24 )
qnorm(0.15, 188, 24, lower.tail = FALSE)

