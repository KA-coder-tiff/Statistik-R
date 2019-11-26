load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/dist.Rdata")
smalldist = distanz
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/dist_more.Rdata")
bigdist = distanz
#(1) t-Test (mit R)
hist(smalldist) #(a)

#(b)
m = mean(smalldist)
n = length(smalldist)
t = (m-550)/(sd(smalldist)/(sqrt(n)))
t

#(c)
2*(1-pt(t, n-1)) #>= 0.05, Nullhypothese wird nicht abgelehnt

#(e)
t.test(smalldist, mu = 550)

#(2) Absurdität des Testens
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/dist_more.Rdata")
t.test(bigdist, mu = 550) #(a) ablehnen

par(mfrow=c(2,1))
#1.Histogram
hist(smalldist)
sem = sd(smalldist)/(sqrt(n))
m = mean(smalldist)

abline(v=550,col="green")
abline(v = m, col="red")
abline(v = m+sem, col = "blue")
abline(v = m-sem, col = "blue")
legend(x = "topleft", legend=c("mean", "SEM", "550m"), fill=c("red", "blue", "green"), bty ="n")

#2.Histogram
hist(bigdist)
n2 = length(bigdist)
sem2 = sd(bigdist)/sqrt(n2)
m2 = mean(bigdist)

abline(v=550,col="green")
abline(v = m2, col="red")
abline(v = m2+sem2, col = "blue")
abline(v = m2-sem2, col = "blue")

#(4) Approximatives Konfidenzintervall
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/wartezeiten.Rdata")

par(mfrow=c(1,1))
hist(wz) #(a) nein

meanW = mean(wz)
sdW = sd(wz)/sqrt(length(wz))
q1 = qnorm(0.005, meanW, sdW)
q2 = qnorm(1-0.005, meanW, sdW)
abline(v = q1, col="blue")
abline(v = q2, col="blue")
abline(v = meanW, col="red")







