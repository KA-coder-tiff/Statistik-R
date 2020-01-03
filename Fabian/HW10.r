# AUFGABE 1

n = 58
h = 17
p = 0.5

var = p*(1-p)/n
sd = sqrt(var)

p = 2*pnorm(h/n, p, sd)
p      # 0.0016


# eher unwahrscheinlich wen h0 stimmt



# AUFGABE 2

# a) 2

# b) 
sem = sqrt(0.5*0.5/49)  # = 1/14
lr = 0.5 + (0.36-2)*sem
lr

# => nicht im ablehnungsbereich

# c)
sem = sqrt(0.5*0.5/144) # = 1/24
lr = 0.5 + (0.36-2)*sem
lr 

# => im abhlehnungsbereich (bei 10% also auch bei 3%)







# AUFGABE 3
load("~/_Studium/Sem3/SW/Statistik-R/Umfrage.Rdata")

# a)
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




# AUFGABE 4

# a) nein
#    sie koennen sich unterscheiden, es ist nur ein Wahrscheinlichkeit von 
#    groesser 3%, das wenn sie von der selben verteilung kommen diese Stichprobe ergeben

# b) nein
#    ein weg nicht beide; absolut -> relativ,  aber nicht umgekehrt

# c) keine Ahnung

# d) keine Ahnung

# e) keine Ahnung

# f) nein

# g) nein, = 97%





