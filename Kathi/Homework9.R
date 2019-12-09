#(2) Processor - Part 1
#(a)
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Repo/Statistik-R/temperatures.Rdata")
stripchart(temp,main="Heating of five different processors (in celsius)", method ="jitter",col=rainbow(5, alpha=0.5), pch=16)
colRain = rainbow(5, v = 0.8)
#(b)
for (i in seq(1,5)) {
  xi = temp[[i]]
  m = mean(xi)
  sem = sd(xi)/sqrt(length(xi))
  segments(m,i+0.3,m,i-0.3, col=colRain[i])
  segments(m-sem,i+0.3,m-sem,i-0.3, col="red")
  segments(m+sem,i+0.3,m+sem,i-0.3, col = "red")
}

#(3) Processor - Part 1
m = 0
n = 0
for (i in seq(1, length(temp))) {
  xi = temp[[i]]
  n = n + length(xi)
  m = m + sum(xi)
}
m = m/n
m
sum1 = 0
sum2 = 0
for (i in seq(1,length(temp))) {
  xi = temp[[i]]
  sum1 = sum1 + length(xi)*(mean(xi)-m)^2
  sum2 = sum2 + sum((xi-mean(xi))^2)
}
a = sum1/(length(temp)-1)
b = sum2/(n-(length(temp)))
f = a/b
f 

p = 1-pf(f,length(temp)-1, n-length(temp))
p 


