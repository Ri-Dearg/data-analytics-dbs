# LAB Code: CA Regression
#
# setwd("C:/Statistics") #set to own working directory C:/Statistics)
GFCLOCKSB=read.csv("GFCLOCKS.CSV",header=T,na.strings="?")

fix(GFCLOCKS)
names(GFCLOCKS)

# Multiple Linear Regression

# In order to fit a multiple regression model using least squares, we
# again use the lm() function. The syntax lm(y~x1+x2+x3) is used to fit
# a model with three persdictors, x1, x2, x3. The summary() function now
# outputs the regression coefficients for all the predictors.

lm.fit=lm(PRICE~AGE+NUMBIDS,data=GFCLOCKS)
summary(lm.fit)

