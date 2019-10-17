
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
(1/6 + 1/6*5/6 + 1/6 * 4/6 + 1/6 *3/6)
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
# F(x) = x^3/9 if x>0 && x<3
#         1 if x>=3

# c)
# E(Z) | Z = 2X^3 +5
# 2*E(X^3) + 5 
# 