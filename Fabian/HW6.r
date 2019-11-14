
# AUFGABE 1

load("~/_Studium/Sem3/SW/Statistik-R/dist.Rdata")
E = 500
sig = 200
alpha = 0.05
# a)
hist(distanz)

# b)
m = mean(distanz)
n = length(distanz)
z = (m-E)/(sig/(sqrt(n)))
z

# c)
p = 2*pnorm(z, lower.tail = FALSE)
p 

# ablehnen, es ist sehr unwahrscheinliche (P = 0.00126, dass ein Ergebniss auftritt das mindestens gleich extrem ist)





# AUFGABE 2

z = (4/3-2/3)*3
z
# a) nicht ablehnen
# b) nicht ablehnen
# c) ablehnen
# d) ablehnen



# AUFGABE 3
# a) ja, definition
# b) nicht unbedingt
# c) ja, mit halb so kritische, lehnen wir es auch ab
# d) max
# e) wtf
# f) nicht wirklich, wir können nur sagen, dass es unwahrscheinlich ist,
#    dass so eine Stichprobe (wie die Daten) aus so einer Verteilung gezogen werden
# g) nicht wirklich



# AUFGABE 4







# AUFGABE 6
# E = EY - EX
# var = vary/ny + varx/nx
# dif = _X - _Y
# stddif = (dif-E)/sqrt(var) ist  N(0,1)

# AUFGABE 7
n = 200
lambda = 0.5
m = c(1,5,100,1000)
er = matrix(0,length(m),n)

for (i in seq(1,length(m))) {
  er[i,]= replicate(n,mean(rexp(m[i],lambda)))
}
boxplot.matrix(er,FALSE)

hist(er[1,])
hist(er[2,])
hist(er[3,])
hist(er[4,])
