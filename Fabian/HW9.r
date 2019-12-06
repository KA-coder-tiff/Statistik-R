# AUFGABE 1

# a) degrees of freedom
df1 = 3-1
df2 = 4*3-3


# b) calculate f-Statistic
mx = 3
my = 4
mz = 5

ma = 4

den = 1+0+0+1  +  1+0+0+1   + 1+0+0+1
den = den/df2
den 

num = 4*1+0+4*1
num = num/df1
num

f = num/den
f

# c) give the rejection region
# R = (7,21,unendl.)

# d) outcome
# can not reject, as f does not lie in R

# e) stict 
# we don't know shit
# we don't know if they are independent normal distributed and if the assumption
# for equal deviation holds true. 


# AUFGABE 2
load("~/_Studium/Sem3/SW/Statistik-R/temperatures.Rdata")

# a) stripchart

stripchart(temp, method ="jitter", pch=1)

# b) mean and sem
for (i in seq(1,5)) {
  m = mean(temp[[i]])
  sem = sd(temp[[i]])/sqrt(length(temp[[i]]))
  segments(m,i+0.3,m,i-0.3, col="blue", lwd = 2)
  segments(m-sem,i+0.3,m-sem,i-0.3, col="red", lwd = 2)
  segments(m+sem,i+0.3,m+sem,i-0.3, col = "red", lwd = 2)
}

# c) same distribution?
# 5 and 3 seem to bit quite far, so probably not



# AUFGABE 3
# a) anova "by hand"
sum = 0
n = 0
gmean = 0
for (i in seq(1,length(temp))) {
  sum = sum + sum((temp[[i]]-mean(temp[[i]]))^2)
  n = n+length(temp[[i]])
  gmean =gmean + sum(temp[[i]])
}
den = sum/(n-length(temp))

gmean = gmean/n
sum = 0
for (i in seq(1,length(temp))) {
  sum = sum + length(temp[[i]])*(mean(temp[[i]])-gmean)^2
}
nom = sum/(length(temp)-1)

f = nom/den
f

1-pf(f,length(temp)-1, n-length(temp))

# b) double check with anova
# Gruppengroessen als Vektor (k Gruppen)
ni <- c(13,15,24,11,14)
# Daten als Vektor , erst alle aus Gruppe 1, dann Gruppe 2 usw.
x <- c(temp[[1]],temp[[2]], temp[[3]], temp[[4]], temp[[5]])
# Gruppen als Faktorvariable
gr <- factor(rep(1:5,ni))
# ANOVA durchfuehren (F-Test)
anova(aov(x~gr))


# c) result
# p is way below 5% therfore the null hypothoties is rejected

# d) assumptions
# they are probably sattisfied as the measurements are independet and could be quite well
# normal distributed. The varianz can easily be the same as it is similar



# AUFGABE 4
# a) how many pairs
m = choose(length(temp),2)
m

# b) pair t-test
for (i in seq(1, length(temp)-1)) {
  for (j in seq(i+1,length(temp))) {
    p = t.test(temp[[i]], temp[[j]])$p.value
    cat("Test ", i, " and ", j, "; without correction:", p, ";\t with correction:", p*m, "\n")
  }
}

# c) rejection
# without correction: 
# 1,5    2,3     3,5    4,5

# with correction:
# 1,5    3,5
