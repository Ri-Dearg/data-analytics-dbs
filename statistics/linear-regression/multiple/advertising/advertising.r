# LAB Code: Advertising Case Study 
#
rm(list=ls())

Adv=read.csv("Advertising.csv",header=T,na.strings="?")

fix(Adv)
names(Adv)

# Multiple Linear Regression

lm.fit=lm(sales~.,data=Adv)
summary(lm.fit)

summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)

mean(Adv$sales)

confint(lm.fit, 'TV', level=0.95)
confint(lm.fit, 'radio', level=0.95)
confint(lm.fit, 'newspaper', level=0.95)

library(car)
vif(lm.fit)

# Exploring Simple Linear Regressions

lm.fit=lm(sales~TV,data=Adv)
summary(lm.fit)
summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)

lm.fit=lm(sales~radio,data=Adv)
summary(lm.fit)
summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)

lm.fit=lm(sales~newspaper,data=Adv)
summary(lm.fit)
summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)


# Exploring interaction (synergy)
lm.fit=lm(sales~TV*radio,data=Adv)
summary(lm.fit)
summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)


# Exploring Credit data - Categorical features

Credit=read.csv("Credit.csv",header=T,na.strings="?")

fix(Credit)
names(Credit)

lm.fit=lm(Balance~Ethnicity,data=Credit)
summary(lm.fit)
summary(lm.fit$residuals)
hist(lm.fit$residuals)
plot(lm.fit, which=1, col=c("blue")) # Residuals vs Fitted Plot
qqnorm(lm.fit$residuals);qqline(lm.fit$residuals)

