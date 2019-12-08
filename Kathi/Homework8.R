#(1) Two-sample t-test
nx = 10
ny = 20
first = rnorm(nx, 0, 1)
second = rnorm(ny, -1, 1)
x = mean(first)
y = mean(second)

semX = sd(first)/(sqrt(nx))
semY = sd(second)/(sqrt(ny))

tXY = (x-y)/(sqrt(semX^2+ semY^2))
tXY

#p-value
varY = var(second)
varX = var(first)
v = (varY/ny+varX/nx)^2/((varY/ny)^2/(ny-1) + (varX/nx)^2/(nx-1))
v
2*(1-pt(tXY, v))

#(b)
t.test(first, second)

#(2) Two-sample t-test using normal approximation
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Data/waitingtimes2.Rdata")
a = wt[[1]]
b = wt[[2]]
par(mfrow=c(2,1))
hist(a)
hist(b)
#par(mforw=c(1,1))
meanA = mean(a)
meanB = mean(b)
semA2 = var(a)/length(a)
semB2 = var(b)/length(b)

tAB = (meanB-meanA)/(sqrt(semA2+ semB2))
tAB

2*(1-pnorm(tAB))

t.test(b, a, conf.level = 0.99)

#(6) Naive two-sample t-Test
# y = 10, sd = 10
# x = 20, sd = 20
sem1 = 2
sem2 = 2.8
t = ((10-20)-(-7.5))/(sqrt(sem1^2+sem2^2))
t
#t = -0.7 nahe bei 0 -> akzeptiert bzw. nicht verworfen 
pnorm(-0.7)*2



