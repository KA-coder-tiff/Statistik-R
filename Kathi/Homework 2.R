#(1)
#(a)
#   X |  x  | -1.2   -0.7    0.9   2.3
#-----------------------------------
#     |p(x) |  0.17  0.21    0.37  0.25

#(b)
Ex = (-1.2)*0.17 + (-0.7)*0.21 + 0.9*0.37 + 2.3*0.25
Ex

E_x_2 = (-1.2)^2*0.17+(-0.7)^2*0.21+0.9^2*0.37+2.3^2*0.25
var = E_x_2-Ex^2
var

stdA = sqrt(var)
stdA

#(c)
#Erwartungswert -> Wert der entsteht bei unendlicher Ausührung 

#(d)
0.21+0.37
0.17+0.21+0.37

#(2) Fair six sided die
f1 = 0
f2 = 1/6 + 1/6*5/6 + 1/6*4/6 + 1/6*3/6 + 1/6*2/6 + 1/6*1/6
f2
f6 = 1 - (1/6)^6
f6
f7 = 1

#(3) Density and distribution function
#3^3/a*3 = 1
a = 9 #(a)
#(b) find cdf
#     {x^2/a  xe(0,3)
#F(x)- 0      x < 0
#     {1      x > 3

#(c)
#E(2X^3+5) = 2E(X^3)+5
# integ.(p(x)*x^3) = integ.((x^2/9)*x^3) = x^6/54|(3,0) = 13,5
2*13.5+5

#(4) River floods
#(a) Beweis

#(b)
#Fy(1/2) - Fy(-1) = 0-0 = 0

#(c)
#fy(y) = 2*1/y^3 für 1<=y<=inf
#0 für y < 1

#(d) am Zettel

#(5) Target
# am Zettel
a = 1-(1/5*(4/5)^9*10+(4/5)^10)
a/(1-(4/5)^10)

#Aufgabe 6
#(a) am Zettel
#(b)
x <- seq(-5, 5, 0.1);
Fx = function(x) {exp(x)/(1+exp(x))}
fx = function(x) {exp(x)/(1+exp(x)^2)}

cdf = Fx(x);
pdf = fx(x);

plot(x, cdf, type = 'l')
lines(x, pdf, col = 'red')
#(c) am Zettel
log(0.25/(1-0.25))
log(0.5/(1-0.5))
log(0.75/(1-0.75))




