# LAB Code: CA Regression fire damage

#setwd("C:/Statistics") #set to own working directory C:/Statistics)

# R Lab: fire damage
# read in data from a csv file
rm(list=ls())
?read.csv
firedam = read.csv(file="FIREDAM.csv",header=TRUE,sep=",")
attach(firedam)

#Send diagrams to a pdf file that is sent to the working directory that is defined at the start of the   
# pdf(file="FiredamPlots2.pdf")

# choose how many rows and columns for the graphs
# par(mfrow=c(2,2))


# DESCRIPIVE STATISTICS (EDA)
par(mfrow=c(2,2))
hist(DISTANCE)
hist(DAMAGE)
boxplot(DISTANCE)
boxplot(DAMAGE)
summary(firedam)


# SIMPLE LINEAR REGRESSION
lm.fit=lm(DAMAGE~DISTANCE)
summary(lm.fit)
plot(DISTANCE,DAMAGE)
abline(lm.fit)


# RESUDUAL ANALYSIS
RESIDUALS<-residuals(lm.fit)
lm.fitr<-lm(RESIDUALS~DISTANCE)
plot(DISTANCE, RESIDUALS)
abline(lm.fitr)
qqnorm(RESIDUALS)
qqline(RESIDUALS)
par(mfrow=c(1,2))
hist(RESIDUALS)
boxplot(RESIDUALS)
summary(RESIDUALS)


#this tells the pdf file to close.
# dev.off()








