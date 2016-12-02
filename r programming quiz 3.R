library(datasets)
data(iris)
?iris
head(iris)
iris[iris$Species == "setosa"]
iris$Species
is.factor(iris$Species)
is.list(iris$Species)

tapply(iris$Species, setosa, mean)

iris$Species[setosa]

is.data.frame(iris)
#srednia dla elementow z kolumny o wybranym poziomie
tapply(iris$Sepal.Length, iris$Species, mean)
sapply(split(iris$Sepal.Length, iris$Species), mean)
#jak policzyc tylko dla wybranego poziomu ?
mean(iris$Sepal.Length[101:150])
#subsetting, condition:
#if level of iris$Species == virginica
#than compute mean

?apply()
apply(iris[, 1:4], 2, mean)


library(datasets)
data(mtcars)
summary(mtcars)
head(mtcars)
?mtcars
?with
?mean
#average mpg by cyl
with(mtcars, tapply(mpg, cyl, mean))

is.list(mtcars)
?split()
?sapply()
sapply(split(mtcars$mpg, mtcars$cyl), mean)



hpByCyl <- with(mtcars, tapply(hp, cyl, mean))
hpByCyl
class(hpByCyl)
#absolute difference
abs(hpByCyl[1] - hpByCyl[3])
#zapisac w jednej linii z uzyciem tapply




debug(ls)
ls()
