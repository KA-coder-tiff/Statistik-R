# AUFGABE 1

n = 58
h = 17/n
p = 0.5

var = h*(1-h)/n
se = sqrt(var)

z = (h-p)/se
p = 2*pnorm(z)
p      

# eher unwahrscheinlich wen h0 stimmt



# AUFGABE 2

# a) 2

# b) 
sem = sqrt(0.5*0.5/49)  # = 1/14
z = 0.1/sem
2*pnorm(z,lower.tail = FALSE)
lr = 0.5 + (0.36-2)*sem
lr

# => nicht im ablehnungsbereich

# c)
sem = sqrt(0.5*0.5/144) # = 1/24
z = 0.1/sem
lr = 0.5 + (-0.32-2)*sem
lr 

# => im abhlehnungsbereich (bei 2% also auch bei 3%)







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


z = (p1-p2)/sqrt(s1^2+s2^2)
2*pnorm(z)


# AUFGABE 4

# a) nein
#    sie koennen sich unterscheiden, es ist nur ein Wahrscheinlichkeit von 
#    groesser 3%, das wenn sie von der selben verteilung kommen diese Stichprobe ergeben

# b) nein
#    die stichprobengroesse kann sich unterscheiden

# c) keine Ahnung; wir verwerfen es gar nicht; irgendwo zwischen 1,5% und 98,5%

# d) keine Ahnung; wird nicht verworfen

# e) ja, Konfidenz-Intervall wird groesser

# f) nein

# g) nein, = 97%







# AUFGABE 6

# a) ist binomial-Verteilt 
p = 2/3
n = 225

# b) 

A = n-60

# c) 
rbinom(n,5,2/3)

r = pbinom(A,n,p,lower.tail = FALSE)
r

# d) <5% => verwerfen

# e) 

H = A/n
var = H*(1-H)/n

1-pnorm(H,2/3,sqrt(var))



