# LAB Code: CA Regression
#
# setwd("C:/Statistics") #set to own working directory C:/Statistics)
Boston=read.csv("boston.csv",header=T,na.strings="?")

fix(Boston)
names(Boston)

# Simple Linear Regression

lm.fit=lm(CRIM~LSTAT,data=Boston)
summary(lm.fit)
summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)


# Multiple Linear Regression

# In order to fit a multiple regression model using least squares, we
# again use the lm() function. The syntax lm(y~x1+x2+x3) is used to fit
# a model with three persdictors, x1, x2, x3. The summary() function now
# outputs the regression coefficients for all the predictors.

lm.fit=lm(CRIM~LSTAT+AGE+NOX,data=Boston)
summary(lm.fit)

# to fit all predictors use CRIM~. 
lm.fit=lm(CRIM~.,data=Boston)
summary(lm.fit)
summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)

# fit all of the data except age
lm.fit1=lm(CRIM~.-AGE,data=Boston)
summary(lm.fit1)

# remove age from lm.fit
lm.fit1=update(lm.fit, ~.-AGE)

# Non-linear Transformations of the Predictors
lm.fit2=lm(CRIM~LSTAT+I(LSTAT^2),data=Boston)
summary(lm.fit2)

# the poly function can be used to plot hogher order polynomials
lm.fit3=lm(CRIM~poly(LSTAT,5),data=Boston)
summary(lm.fit3)
hist(lm.fit3$residuals)
summary(lm.fit3$residuals)
qqnorm(lm.fit3$residuals);qqline(lm.fit3$residuals)
plot(lm.fit3, which=1, col=c("blue")) # Residuals vs Fitted Plot

# OPTIONAL Interaction Terms
summary(lm(CRIM~LSTAT*AGE,data=Boston))
