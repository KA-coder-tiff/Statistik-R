#x^2-Test for independence (with R)
#(a)
uniA <- c(10, 10, 20)
uniB <- c(5, 20, 5)
uniC <- c(5, 10, 15)

x <- rbind(uniA, uniB, uniC)
x

chisq.test(x)

#(b) 

#(c)
chisq.test(x*2)
