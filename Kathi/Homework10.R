# (1) Einstichproben-Test für Anteile (mit R)
n=58
p0 = 0.5
h = 17/n
se = sqrt((h*(1-h))/n)

z = (h-p0)/se
p = 2*pnorm(z)
p   

abs(h-p0) # ~ 3.5*se

# (2) Einstichproben-Test für Anteile (ohne R)

n = 144
h = 0.5
p0 = 0.4
se = sqrt((h*(1-h))/n)

z = (h-p0)/se

# 3)

load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/Umfrage.Rdata")

par(mfrow=c(2,1))
x1 = matrix(table(umfrage[[1]]),2)
n1 = sum(x1)
barplot(x1, main="VO besucht", horiz = TRUE)
p1 = x1[1][1]/n1
var1 = p1*(1-p1)/n1
s1 = sqrt(var1)
abline(v=(p1+s1)*n1, col="red")
abline(v=(p1-s1)*n1, col="red")

x2 = matrix(table(umfrage[[2]]),2)
n2 = sum(x2)
barplot(x2, main="VO nicht besucht", horiz = TRUE)
p2 = x2[1][1]/n2
var2 = p2*(1-p2)/n2
s2 = sqrt(var2)
abline(v=(p2+s2)*n2, col="red")
abline(v=(p2-s2)*n2, col="red")

par(mfrow=c(1,1))

prop.test(matrix(c(x1,x2),2), c(n1,n2))


z = (p1-p2)/sqrt(s1^2+s2^2)
2*pnorm(z)
