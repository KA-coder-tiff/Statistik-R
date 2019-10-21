
# Aufgabe 1
# a)
# Wert  -1,2  -0,7  0,9   2,3
# ----------------------------
# p(x)  0.17  0.21  0.37  0.25

werte = c(-1.2, -0.7, 0.9, 2.3)
p = c(0.17, 0.21, 0.37, 0.25)

# b)
mean = 0.17*(-1.2) + 0.21*(-0.7) + 0.37*0.9 + 0.25*2.3
mean
var = 0
for (i in 1:length(werte)) {
  var= var + (werte[i] - mean)^2 * p[i];
}
var
std = sqrt(var)
std

# c)
# mean is the expectad value, if your run this infinity times, the average is the mean

# d)
# P(|X|<1)
0.21+0.37
# Fx(1.5)
0.17+0.21+0.37


# Aufgabe 2
# F(1)
0
# F(2)
1-(1+2+3+4+5)/36
1/6+(5+4+3+2+1)/36
(5+4+3+2+1+6)
# F(6)
1-1/6^6
# F(7)
1

# Aufgabe 3
# a)
# 3^3/(3*a)=1
a = 9
# b)
#         0 if x<=0
# F(x) = x^3/(9*3) if x>0 && x<3
#         1 if x>=3

# c)
# E(Z) | Z = 2X^3 +5
# 2*E(X^3) + 5 
# E(X^3) = integral((x^2/9)*x^3,0,3)
Ex3 = 3^6/(9*6)
Ez = 2*Ex3+5
Ez
27^(5/3)*3/(9*5)


# Aufgabe 4
# a)
# Fy(unendlich) = 1       :passt
# Fy(x)<Fy(z) für x<z     :passt
# 0 <= Fy(x) <= 1         :passt
# rechtseitig ?

# b)
# P(1/2)-P(-1)
0

# c)
# Fy(x) = integral(fy(t),-unendlich, x)
# fy(x) = 0 | x<1
# fy(x) = 2/x^3 | else

# d)
# Fz(z) = 0 | z < 0
# Fz(z) = 1-1/(z/10+1)^2
# fz(z) = 0 | z<0
# fz(z) = 2/(z/10+1)^2

# Aufgabe 5
p = 1-(4/5)^10-1/5*(4/5)^9*10
p
p/(1-(4/5)^10)

# Aufgabe 6
F <- function(x){
  return(exp(x)/(1+exp(x)))
}
f <- function(x){
  return(exp(x)/(1+exp(x))^2)
}

x = seq(-5, 5, 0.1)
Fx = F(x)
fx = f(x)
plot(x,Fx, type = "l")
lines(x,fx, col = "red")


# Aufgabe 7
data ("trees")
head(trees)
x = trees$Height
x2 = round(x,-1)
table(x2)

fib <- function(num,a,b){
  if(missing(a)){
    a <- 1
  }
  if(missing(b)){
    b <- 0
  }
  if(num>=1){
    return(c(a+b,fib(num-1,b,a+b)))
  }
  return(a+b)
}
fib(20)
setwd(".")
t = seq(0,2*pi,0.01)
x = sin(2*t)
y = cos(3*t)
plot(x,y,type = "l")
dev.print(pdf, 'filename.pdf')
