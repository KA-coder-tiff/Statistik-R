# AUFGABE 1
x = c(25,13,7,9,44,3,2,33)
x = sort(x)
x
# a)
median(x) # => [9,13]
# b) [3,7]
# c) 25


# AUFGABE 2
load("~/_Studium/Sem3/SW/Statistik-R/algorithms.Rdata")
boxplot(runningtimes, col=c('red', 'green'), xlab='Seconds', horizontal = TRUE )
title("Running Time of two Alogrithms")

# b)
# 20seconds
# A~ 12, B~ 21 => no
# dont know
# true
# true
# dont know


# AUFGABE 3

# a)
# x ist ein Vektor mit 100 bis 200 Werte welche alle den selben
# Erwartungswert und Standardabweichung haben
# der Erwartungswert ist Uniform-Verteilt zwischen 0 und 100
# die Standardabweichung ist Exponentialverteilt mit \= 1/k 

# b)
k = 100
x = rnorm(sample(k:(2*k),1), runif(1,0,k), rexp(1, 1/k))
hist(x)
m = mean(x)
s = sd(x)
abline(v=m,col='red')
abline(v=m+s, col = 'blue')
abline(v=m-s, col = 'blue')
legend("topright", c('mean', 'sd'), fill= c('red', 'blue'))


# AUFGABE 4


# AUFGABE 5
x = c(1,1,1,2,100,100,100)
sum(abs(x-mean(x)))
sum(abs(x-median(x)))



# AUFGABE 7
# a)
x = seq(-3.5,3.5,0.1)
y = dnorm(x)
plot(x,y, type = 'l')

# b)
abline(v=qnorm(0.025), col='red')
abline(v=qnorm(0.025, lower.tail = FALSE), col = 'red')

abline(v=qnorm(0.005), col = 'blue')
abline(v=qnorm(0.005, lower.tail = FALSE), col = 'blue')

abline(v=qnorm(0.0005), col = 'green')
abline(v=qnorm(0.0005, lower.tail = FALSE), col = 'green')

