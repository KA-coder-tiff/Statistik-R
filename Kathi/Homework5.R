#(1) CPU workload
workload = c(2,3,7,9,13,25,33,44)
mittel = sum(workload)/8 # Mittelwert

sum((workload - mittel)^2)/7 #(a)

#(2) Boxplot

load('algorithms.Rdata', data <- new.env())
ls.str(data)
c1 <- rainbow(2)
c2 <- rainbow(2, alpha=0.2)
c3 <- rainbow(2, v=0.7)

boxplot(runningtimes, ylab = 'runningtime', col=c2, medcol=c3, whiskcol=c1, staplecol=c3, boxcol=c3, outcol=c3)
#boxplot(runningtimes, col = c('powderblue', 'mistyrose'))

#(3) Histogram
k = 100
x = rnorm(sample(k:(2*k),1), runif(1,0,k), rexp(1,1/k))

#(b)
hist(x)
m = mean(x)
abline(v=m,col="red")
s = sd(x)
abline(v=m+s,col="blue")
abline(v=m-s,col="blue")
legend(x = "topleft", legend=c("mean", "standard deviation"), fill=c("red", "blue"), bty ="n")

