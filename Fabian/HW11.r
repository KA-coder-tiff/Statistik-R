


# AUFGABE 2

# a) 
d = 4

# b)
p2 = 1-1/4-0.25-1/8
p2


# c)
0.25^5*(1/8)^3*p2^2

# d) 
temp = c(1,3,4,4,4,3,2,2,1,1)
x = as.vector(table(temp))
x

# e) multinomial-verteilung mit d Kategorien
p = c(0.25,p2,0.25,0.125)
# und d-1 Freiheitsgraden


# f)
multKov <- function(n,k) {
  res = factorial(n);
  for(i in 1:length(k)) {
    res=res/factorial(k[i]);
  }
  return(res);
}

probMult <- function(x,p) {
  prob = multKov(sum(x),x);
  for (i in 1:length(x)) {
    prob = prob * p[i]^(x[i]);
  }
  return(prob)
}

probMult(x,p)

# g)um den von multKov (der rest ist gleich)





# AUFGABE 5
load("~/_Studium/Sem3/SW/Statistik-R/wuerfel.Rdata")

table(w)
x = as.vector(table(w))
d = length(x)
n = sum(x)

barplot(x/n, col = c('blue', 'orange', 'red', 'green'))
h1 = x[1]/n
se1 = sqrt(h1*(1-h1)/n)
segments(0.1,(h1+se1),1.3,(h1+se1))
segments(0.1,(h1-se1),1.3,(h1-se1))

h2 = x[2]/n
se2 = sqrt(h2*(1-h2)/n)
segments(1.3,(h2+se2),2.5,(h2+se2))
segments(1.3,(h2-se2),2.5,(h2-se2))

h3 = x[3]/n
se3 = sqrt(h3*(1-h3)/n)
segments(2.5,(h3+se3),3.7,(h3+se3))
segments(2.5,(h3-se3),3.7,(h3-se3))

h4 = x[4]/n
se4 = sqrt(h4*(1-h4)/n)
segments(3.7,(h4+se4),4.9,(h4+se4))
segments(3.7,(h4-se4),4.9,(h4-se4))




# AUFGABE 6

# a) 
x 


# b)
e = rep(1,d)/d*n
e


# c)
x2 = 0; 
for(i in 1:d) {
  x2 = x2+(x[i]-e[i])^2/e[i];
}
x2

# d) chi verteilt mit d-1 freiehitsgraden


# e) 
qchisq(0.95,d-1)


# f) ja

# g)
pchisq(x2,d-1,lower.tail = FALSE)

# h) SEHR unwahrscheinlich, dass es ein fairer Wuerfel ist

chisq.test(x,correct = FALSE)





# AUFGABE 7

# a)
p0 = c(0.2,0.4,0.2,0.2)

# b)
chisq.test(x,p=p0)

# c) Nein, liegt nicht im Ablehnungsbereich

# d) sehr unwahrscheinlich, dass es ein fairer Wuerfel ist

# e) Die Daten sprechen nicht dagegen. 

      