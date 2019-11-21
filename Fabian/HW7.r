# AUFGABE 1
E = 550
alpha = 0.05

# a)
load("~/_Studium/Sem3/SW/Statistik-R/dist_7.Rdata")
hist(distanz)

# b)
m = mean(distanz)
s = sd(distanz)
n = length(distanz)

t = (m-E)/(s/sqrt(n))
t

# c) 
pt(-t, n-1)*2 # 0.144 => kann nicht verworfen werden anhnand von alpha

# d)
# Es ist mit einer Whs von 14.44% moeglich, dass eine Ziehung
# Sample mindestens so extrem ist wie das vorkommende, 
# unter annahme der Null-Hypotese

# e)
t.test(distanz, mu=E)




# AUFGABE 2

# a)
smalldist = distanz
load("~/_Studium/Sem3/SW/Statistik-R/dist_more.Rdata")
t.test(distanz, mu=E)

# b)
par(mfrow=c(2,1))
hist(smalldist)
sm = mean(smalldist)
ssd = sd(smalldist)/sqrt(length(smalldist))
abline(v=sm, col='red')
segments(sm-ssd, 5,sm+ssd,5,col='blue')
abline(v=E,col='green')
hist(distanz)
m = mean(distanz)
sd = sd(distanz)/sqrt(length(distanz))
abline(v=sm, col='red')
segments(m-sd, 5,m+sd,5,col='blue')
abline(v=E,col='green')
par(mfrow=c(1,1))
# d)
# Die Verteilungen schauen sehr aehnlich aus, und sind moeglicherweise
# sogar bis auf die anzahl der vorkommenden Datenpunkte ident.
# (einfach nur noch 3mal hinzugefuegt)
# Der Test ist jedoch jetzt deutlich schlechter, da sich
# die Anzahl der Datenpunkte und somit auch die Standardabweichung
# verringert hat. 

# AUFGABE 3
# a)
# liegt im Ablehnungsbereich [x<1,8,inf]=> verwerfen

# b)
# liegt nicht im Ablehnungsbereich [x>2,3, inf] => nicht verwerfen

# c)
# liegt nicht im Ablehnungsbereich [-inf, -1,8<x<0]

# d)
# liegt im nicht im Abhlehungsbereich [-inf, x<2,1] \cup [x>2,1,inf]



# AUFGABE 4
load("~/_Studium/Sem3/SW/Statistik-R/wartezeiten.Rdata")
# a)
hist(wz)
m = mean(wz)
s = sd(wz)/sqrt(length(wz))
ql = qnorm(0.005, m, s)
qu = qnorm(1-0.005,m,s,lower.tail = TRUE)
abline(v=ql, col='red')
abline(v=qu, col='red')
abline(v=m, col="blue")
ql
qu

# b)
# Die Messdaten sprechen eher nicht dafuer. Das 
# Konfidenzintervall beinhaltet nicht 1.5 Sekunden
# wodurch diese Hyothese verworfen werden kann. 

# AUFGABE 5
# Mittelwert ca bei 28
# Standardabweichung ca 12
# => SEM = 12/9 = 1.1
# => mu_0 liegt nicht inerhalb von 2 SEM in beide Richtungen
# was einem 95% Konfidenzintervall entspricht. 
# => Nullhypothese mit mu=mu0 kann verworfen werden 
# sehr unwahrscheinlich, dass solche Daten erhoben werden koennen
# wenn die Hypothese stimmt


# AUFGABE 6
# a)
# Richtig q_5% > q_2.5%, anderst: alpha besagt mit welcher whs verwerfe ich die Nullhypothese, 
# falls diese doch stimmen sollte (alpha fehler). Wenn jetzt alpha kleiner wird, muss der Ablhenungsbereich kleiner werden und dadurch 
# das Konfidenzintervall groesser

# b)
# Falsch, wenn t(n) verwendet wurde, ist die Stichprobengroesse n+1

# c)
# Falsch, wir wissen nicht wie sich de standardabweichung bei mehr Proben verhaelt und es geht 
# mit sqrt(n) in SEM ein

# d)
# alpha/2 also ja?!?

# e)
# wtf again



# AUFGABE 7
n = 2   # 5 50
m = replicate(10000, (mean(rpois(n,1))-1)/sqrt(1/n))
hist(m, probability = TRUE)
x = seq(min(m), max(m), by=0.001)
lines(x,dnorm(x))


