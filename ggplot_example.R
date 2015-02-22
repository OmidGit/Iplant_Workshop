# ggplot learning script
# Omid Kazemi  email.   
# Febreuary 22, 2015

## we ran the following lines just the first time
# install.packages("ggplot2",dependencies = TRUE)
# install.packages("plyr")
# install.packages("ggthemes")
# install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
myplot

myplot + geom_point()

myplot + geom_point(size = 3, color = "green")
summary(myplot)


ggplot(data = iris, aes(x = Sepal.Length, 
                        y = Sepal.Width, 
                        color = Species, 
                        size = Species, 
                        shape = Species)) + 
  geom_point()

# first element of dim(diamonds)[1]
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

ggplot(data = d2, aes(x = carat, 
                       y = price, 
                       color = color)) + 
  geom_point()
##
# the following library is from a textbook
library(MASS)
head(birthwt)
myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(myplot)
