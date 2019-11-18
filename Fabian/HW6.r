
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
# d) zweiseitig unbekannt, linksseitig max, rechtsseitig min
# e) wtf
# f) nicht wirklich, wir können nur sagen, dass es unwahrscheinlich ist,
#    dass so eine Stichprobe (wie die Daten) aus so einer Verteilung gezogen werden
# g) nicht wirklich



# AUFGABE 4
# a)
# Die Whs, dass die alternative Hypotese richtig und die Null-Hypothese falsch
# Oder die Whs links von q_alpha unter der H_A (bei linksseitigem Test)
# pnorm(qnorm(alpha,mu_0,sigma/sqrt(n)),mu,sig/sqrt(n))
# pnorm(q, mu, sig/sqrt(n)) | q = q_alpha * sig/sqrt(n) + mu_0 

# P(x<(q-mu)*sqrt(n)/sig,0,1) = P(x<(q_alpha+(mu_0-mu)*sqrt(n)/sig))







# AUFGABE 6
# E = EY - EX
# var = vary/ny + varx/nx
# dif = _X - _Y
# stddif = (dif-E)/sqrt(var) ist  N(0,1)

# AUFGABE 7
n = 200
lambda = 0.5
m = seq(1,20)

er = seq(1,n)
temp = rexp(n*max(m),lambda)
temp = matrix(temp, nrow = n)
par(mfrow=c(5,4))
for (i in seq(1,length(m))) {
  for (j in seq(1,n)) {
    er[j] = mean(temp[j,seq(1,m[i])])
  }
  hist(er)
  abline(v=1/lambda, col='red')
}
m

boxplot.matrix(er,FALSE)







er = matrix(0,length(m),n)
par(mfrow=c(5,2))
for (i in seq(1,length(m))) {
  er[i,]= replicate(n,mean(rexp(m[i],lambda)))
  hist(er[i,])
}
m

boxplot.matrix(er,FALSE)

