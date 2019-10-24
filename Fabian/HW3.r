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
