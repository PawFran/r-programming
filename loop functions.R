#lapply
lapply

x=list(a=1:5, b=rnorm(10))
lapply(x,mean)

x=list(a=1:4, b=rnorm(10), c=rnorm(20,1), d=rnorm(100,5))
lapply(x,mean)

x=1:4
lapply(x,runif)
lapply(x,runif, min=0, max=10)

x=list(a=matrix(1:4, 2, 2), b=matrix(1:6,3,2))
x
lapply(x, function(elt) elt[,1]) #anonymous functions

#sapply
#can return a vector or matrix
x=list(a=1:4, b=rnorm(10), c=rnorm(20,1), d=rnorm(100,5))
lapply(x,mean)
sapply(x,mean)

#apply
str(apply)
apply
#X-array

x=matrix(rnorm(200), 20, 10)
apply(x,2,mean) #mean in each column
apply(x,1,sum) #sum in each row
#shortcuts are much faster
#rowSums=apply(x,1,sum)
#rowMeans=apply(x,1,mean)
#colSums=apply(x,2,sum)
#colMeans=apply(x,2,mean)

x=matrix(rnorm(200),20,10)
apply(x,1,quantile, probs=c(0.25,0.75))

a=array(rnorm(2*2*10), c(2,2,10))
apply(a, c(1,2), mean)

rowMeans(a, dims=2)

#mapply
str(mapply)
list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
mapply(rep, 1:4, 4:1)

noise=function(n,mean,sd){
    rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5,1:5,2) #czemu taki wynik ?
mapply(noise, 1:5, 1:5, 2)

#tapply
str(tapply)

x=c(rnorm(10), runif(10), rnorm(10,1))
f=gl(3,10)
f
tapply(x,f,mean)
tapply(x,f,mean, simplify=F)

tapply(x,f,range)

#split
str(split)

x=c(rnorm(10), runif(10), rnorm(10,1))
f=gl(3,10)
split(x,f) #returns list

lapply(split(x,f), mean)
tapply(x,f,mean)

library(datasets)
head(airquality)
s=split(airquality, airquality$Month)
s
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],
                               na.rm=T))

x=rnorm(10)
f1=gl(2,5)
f2=gl(5,2)
f1
f2
interaction(f1,f2)

str(split(x,list(f1,f2))) #calling automatically 
                          #interaction function
str(split(x,list(f1,f2), drop=T))
