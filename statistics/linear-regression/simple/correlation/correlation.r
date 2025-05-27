# LAB Code: Pearson Correlation Plot Boston dataset

library(MASS)
library(corrplot) 

# cor function calculates the pearson correlation coefficient
cor(Boston)

# corrplot plots the correlations
corrplot(cor(Boston), method = "ellipse")



