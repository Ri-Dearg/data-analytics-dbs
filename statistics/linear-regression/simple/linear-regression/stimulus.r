# LAB Code: CA Regression time-drug
#
setwd("C:/Statistics") #set to own working directory C:/Statistics)

# R Lab: time-drug 

# read in data from a csv file
?read.csv
timedrug = read.csv(file="STIMULUS.csv",header=TRUE,sep=",")
fix(timedrug)
attach(timedrug) 
lm.fit=lm(TIME_Y~DRUG_X)
summary(lm.fit)
plot(X,Y)
abline(lm.fit)



