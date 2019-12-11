# b) double check with anova
# Gruppengroessen als Vektor (k Gruppen)
ni <- c(4,4,4)
# Daten als Vektor , erst alle aus Gruppe 1, dann Gruppe 2 usw.
g1 = c(2,3,3,4)
g2 = c(3,4,4,5)
g3 = c(4,5,5,6)
x <- c(g1,g2, g3)
# Gruppen als Faktorvariable
gr <- factor(rep(1:3,ni))
# ANOVA durchfuehren (F-Test)
anova(aov(x~gr))


#(2) Processor - Part 1
#(a)
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/temperatures.Rdata")
load("~/_Studium/Sem3/SW/Statistik-R/temperatures.Rdata")
par(mfrow=c(1,1))
stripchart(temp,main="Heating of five different processors (in celsius)", method ="jitter",col=rainbow(5, alpha=0.8), pch=16)
colRain = rainbow(5, v = 0.8)
#(b)
for (i in seq(1,5)) {
  xi = temp[[i]]
  m = mean(xi)
  sem = sd(xi)/sqrt(length(xi))
  segments(m,i+0.3,m,i-0.3, col=colRain[i])
  segments(m-sem,i+0.3,m-sem,i-0.3, col="red")
  segments(m+sem,i+0.3,m+sem,i-0.3, col = "red")
}

#(3) Processor - Part 2
m = 0
n = 0
for (i in seq(1, length(temp))) {
  xi = temp[[i]]
  n = n + length(xi)
  m = m + sum(xi)
}
m = m/n
m
sum1 = 0
sum2 = 0
for (i in seq(1,length(temp))) {
  xi = temp[[i]]
  sum1 = sum1 + length(xi)*(mean(xi)-m)^2
  sum2 = sum2 + sum((xi-mean(xi))^2)
}
a = sum1/(length(temp)-1)
b = sum2/(n-(length(temp)))
f = a/b
f 

p = 1-pf(f,length(temp)-1, n-length(temp))
p 
# b) double check with anova
# Gruppengroessen als Vektor (k Gruppen)
ni <- c(13,15,24,11,14)
# Daten als Vektor , erst alle aus Gruppe 1, dann Gruppe 2 usw.
x <- c(temp[[1]],temp[[2]], temp[[3]], temp[[4]], temp[[5]])
# Gruppen als Faktorvariable
gr <- factor(rep(1:5,ni))
# ANOVA durchfuehren (F-Test)
anova(aov(x~gr))

#(4) Processor - Part 3
#(a)
m = choose(length(temp), 2)
#(b)
for (i in seq(1, length(temp)-1)) {
  for (j in seq(i+1, length(temp))) {
    xi = temp[[i]]
    xj = temp[[j]]
    p = t.test(xi, xj)$p.value
    cat("Test ", i, " and ", j, "; without correction:", p, ";\t with correction:", p*m, "\n")
  }
}

#(7) Distribution of the P-value in simulations
c(rnorm(10), rnorm(10,1))

d = c(0, 0.25, 0.5)
par(mfrow=c(3,1))
for (t  in d) {
  p = replicate(10000, t.test(rnorm(20), rnorm(20,t))$p.value)
  hist(p, probability = TRUE)
}


