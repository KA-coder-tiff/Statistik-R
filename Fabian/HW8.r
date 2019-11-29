# AUFGABE 1

x = rnorm(10)
y = rnorm(10)-1

mx = mean(x)
my = mean(y)
sem2x = var(x)/10
sem2y = var(y)/10

t = (my-mx)/sqrt(sem2x+sem2y)
t


t.test(x,y)



# AUFGABE 2
load("~/_Studium/Sem3/SW/Statistik-R/waitingtimes2.Rdata")
x = wt[[1]]
y = wt[[2]]
par(mfrow=c(2,1))
hist(x)
hist(y)
par(mfrow=c(1,1))


mx = mean(x)
my = mean(y)
sem2x = var(x)/length(x)
sem2y = var(y)/length(y)

t = (my-mx)/sqrt(sem2x+sem2y)
t
2*(1-pnorm(t))

t.test(x,y,conf.level = 0.99)


# AUFGABE 4

# I = [(y-x)+q(alpha/2)*sqrt(SEMX^2+SEMY^2), (y-x)+q(1-alpha/2)*sqrt(SEMX^2+SEMY^2)]

# (y-x)  = 40-20 = 20
# SEMX^2 = 16
# SEMY^2 = 9

# 10 = 20 - q*sqrt(1659)  => 10/sqrt(16+9) = 2 = q 

# => I = [10, 30]


# AUFGABE 5

# a) true

# b) don't know

# c) doubled; t = x-y/sqrt(semx^2+semy^2); 
#            semx = s/sqrt(n)

# d) true

# e) true

# AUFGABE 6

#my = 10
#mx = 20

#sy = 10
#sx = 20

#semy = 2
#semx = 2,8


#((10-20)-(7,5))/sqrt(4+2,8^2)
#= -2,5/3 < 1 



# AUFGABE 7
d = seq(-5,5,0.5)

# a)
n = 10
s = 3

# b)
n = 20
s = 3

# c)
n = 20
s = 1


i = 1
x = c()
for (d in seq(-5,5,0.5)) {
  p = replicate(1000, t.test(rnorm(n,0,s), rnorm(n,d,s))$p.value)
  x[i] = sum(p<=0.05)/1000
  i=i+1
}
plot(seq(-5,5,0.5),x,type = 'l')
x
