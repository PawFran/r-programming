formals(rbinom)

mydata=rnorm(100)
sd(mydata)
sd(x=mydata)
sd(x=mydata, na.rm=F)
sd(na.rm=F, x=mydata)
sd(na.rm=F, mydata)

args(lm)
lm(data=mydata, y~x, model=F, 1:100)  #1:100 - subset
lm(y~x, mydata, 1:100, model=F)


f = function(a, b=1, c=2, d=NULL){
  
}

#lazy evaluation
f=function(a,b){
  a^2
}
f(2)
f=function(a,b){
  print(a)
  print(b)
}
f(45)

myplot=function(x,y, type="l", ...){
  plot(x,y, type=type, ...)
}

#when you don't now all arguments in advance
args(paste)
args(cat)

#everything which appears after ... must be named explicitly
#and cannot be partially matched
paste("a","b",sep=":")
paste("a", "b", se=":")
