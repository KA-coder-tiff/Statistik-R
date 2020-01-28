#(5) Regression (Teil 1)
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/Evaluation.Rdata")
x = Evaluation[[1]]
y = Evaluation[[2]]
#(a)
plot(x,y, xlim=c(0, 200), ylim=c(0, 100)) 

#(b)
r = cor(x,y)
b1 = r* (sd(y)/sd(x))
b0 = mean(y) - b1*mean(x)
abline(b0, b1, col='red')

rg <- lm(y~x)
summary(rg)

#(c)

#(6) Regression (Teil 2)

#(a)

sum = 0
for (i in seq(1:25)) {
  sum = sum + (y[i] -(b0+b1*x[i]))^2
}

s = sqrt((1/(25-2))*sum)

#(b)
se = s/(sd(x) * sqrt(25-1))
#(c)
t = (b1-0)/se

#(e)
p = pt(-t, 25-2)*2


