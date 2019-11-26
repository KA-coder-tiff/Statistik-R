#(1) z-Test
load("/Users/Kathi/Desktop/TU/3. Semester/Statistik & Wahrscheinlichkeit/Data/dist.Rdata")
#(a)
hist(distanz) 

#(b)
n = length(distanz)
n
z = (mean(distanz) - 500)/(200/sqrt(n));
z

#(c) 
2*(1-pnorm(z)) #<= 0.05 

# ablehnen, es ist sehr unwahrscheinliche (P = 0.00126, dass ein Ergebniss auftritt das mindestens gleich extrem ist)



