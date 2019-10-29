# Aufabe 1
# a)
dbinom(7,10,0.8)
# b)
sum(dbinom(8:10,10,0.85))
# c)
sum(dbinom(0:10,10,0.8)*dbinom(0:10,10,0.85))

# Aufgabe 2
#expectation
30
# deviation
sqrt(60^2/12)
# P(57<= X <= 60)
3/60

# Aufgabe 3
lambda = 27/22
# a)
# (1) no hits
dpois(0,lambda)
# (2) exactly one hit
dpois(1,lambda)
# (3) more than 2
1-sum(dpois(0:2,lambda))

# b)
qpois(0.995,lambda)


exp(1)

# Aufgabe 6
# b)
-2000/2500
# c) 
3000/2500
# d)
0.675*5000
# e)
-1.75*2500+32000


#Aufgabe 7)
x = seq(50,300, 0.1)
plot(x, dnorm(x, 188, 24), type = 'l', main = "cholesterol", xlab = "mg/dL", ylab = "pdf")
#(b)
pnorm(200, 188, 24, lower.tail = FALSE)
1-pnorm(200, 188, 24)

pnorm(170, 188, 24) - pnorm(150, 188, 24)

(0.675*24+188) - (-0.675*24+188)
qnorm(0.75, 188, 24) - qnorm(0.25, 188, 24) #(d)

qnorm(0.85, 188, 24 )
qnorm(0.15, 188, 24, lower.tail = FALSE)



# 4b
mean(1:10)
x = rexp(50000,6)
mean(x)
y = rexp(50000,3)
z = 1:50000
for (v in 1:50000) {
  z[v] = min(x[v],y[v])
}
mean(z)

