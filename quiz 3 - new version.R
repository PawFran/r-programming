# q1
library(datasets)
data(iris)
?data
head(iris)
mean(iris$Sepal.Length)
?round
round(mean(iris$Sepal.Length))

# q2
?colMeans
apply(iris[, 1:4], 2, mean) # vector of means for the first four variables

# q3 - find average mpg by cyl. possibly more answers
data(mtcars)
?mtcars
a1 <- tapply(mtcars$mpg, mtcars$cyl, mean)
a2 <- with(mtcars, tapply(mpg, cyl, mean))
identical(a1, a2) # both returns array
split(mtcars$mpg, mtcars$cyl)
a3 <- sapply(split(mtcars$mpg, mtcars$cyl), mean)
identical(a2, a3)
class(a2)
class(a3)

# q4 - absolute difference between the average horsepower of 4-cylinder and 8-cylinder cars
?abs
x1 <- mtcars[mtcars$cyl == 4, ]
x2 <- mtcars[mtcars$cyl == 8, ]
d <- mean(x1$hp) - mean(x2$hp)
abs(d)

# q5
debug(ls)
ls()
