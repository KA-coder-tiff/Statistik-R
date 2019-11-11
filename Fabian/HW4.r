# AUFGABE 1

# a) 
diff(pnorm(c(84,116),100,16))

# b)
qnorm(0.025,100,16)
qnorm(0.025,100,16, lower.tail = FALSE)



# AUFGABE 2
p = 3/4
n = 600
# a) 
pbinom(460,n,p) - pbinom(439,n,p)

# b)
E = n*p
Var = p*(1-p)
sumvar = Var * n
sumstd = sqrt(sumvar)
pnorm(460,E,sumstd)- pnorm(439,E,sumstd)
# Bei 600 tries sind wir schon recht gut angenaehert
# Die Wahrscheinlichkeit wuerde sich minimal aendern, da man quasi von 460,5 bis 439,5 integriert



# AUFGABE 3
# a)
ppois(62,50) - ppois(53,50)
# b)
pnorm(62.5,50,sqrt(50)) - pnorm(53.5,50,sqrt(50))
# erstaunlich gut dafür, dass es nur 1 Versuch ist
# pois ist schon ursprünglich recht normal verteilt



# AUFGABE 4
E = 320
std = 20
E2 = 150
std2 = 12
# a)
# Sn = N(n*E,n*std^2)
n = 6
1- pnorm(2000,n*E,sqrt(n)*std)

# b)
# P he sells x eur for coffee a day= N(0.5*E,(0.5*std)^2)
# P he sells x eur for doughnut a day= N(0.4*E2,(0.4*std2)^2)
# E(x+Y) = E(X) + E(Y) 
# VAR(X+Y) = VAR(X)+VAR(Y)
# P he sellx x eur of coffee and doughnout = N(0.5*E+0.4*E2, (0.5*std)^2+(0.4*std2)^2)
E3 = 0.5*E+0.4*E2
std3 = sqrt((0.5*std)^2+(0.4*std2)^2)
1-pnorm(300,E3, std3)
E3
std3




# AUFGABE 5
n = 50
E = 5
std = 2
# a)
x = seq(0,10,0.01)
y = dnorm(x,5,2)
plot(x,y,type='l')
y = pnorm(x,5,2)
plot(x,y,type='l')

# b)
Emean = E
stdmean = std/sqrt(n)
Emean 
stdmean

Esum = n*E
stdsum = std*sqrt(n)
Esum 
stdsum

# c)
y = rnorm(50,E,std)
hist(y)
y = rnorm(500,E,std)
hist(y)




# AUFGABE 6
# a)
x = replicate(10000, sum(rexp(10,0.2)))
hist(x)

# b)
x = replicate(10000, max(rle(rbinom(50,1,0.5))$lengths))
hist(x, xlim = c(2,15))



# AUFGABE 7
# a)
hist(rexp(1000))
# b)
hist(replicate(1000, mean(rexp(2))), probability = TRUE)
# c)
m = matrix(data = rexp(50*10000),  nrow = 50)
x = colMeans(m)
hist(x, probability = TRUE, breaks = seq(min(x),max(x)+0.1,0.1))
x = seq(min(x),max(x),0.001)
lines(x,dnorm(x,1,1/sqrt(50)))
