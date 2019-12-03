#(1) Two-sample t-test
nx = 10
ny = 20
first = rnorm(nx, 0, 1)
second = rnorm(ny, -1, 1)
x = mean(first)
y = mean(second)

semX = sd(first)/(sqrt(nx))
semY = sd(second)/(sqrt(ny))

t = (x-y)/(sqrt(semX^2+ semY^2))
t

#p-value
varY = var(second)
varX = var(first)
v = (varY/ny+varX/nx)^2/((varY/ny)^2/(ny-1) + (varX/nx)^2/(nx-1))
v
2*(1-pt(t, v))

#(b)
t.test(first, second)

#(c) ablehnen, es ist sehr unwahrscheinliche (P <= a, dass ein Ergebniss auftritt das mindestens gleich extrem ist)

#(2) Two-sample t-test using normal approximation
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Data/waitingtimes2.Rdata")
x = wt[[1]]
y = wt[[2]]


#(6) Naive two-sample t-Test
# y = 10, sd = 10
# x = 20, sd = 10
sem1 = 2
sem2 = 2.8
d = ((10-20)-(-7.5))/(sqrt(sem1^2+sem2^2))
d
#d = -0.7 nahe bei 0 -> akzeptiert bzw. nicht verworfen 




