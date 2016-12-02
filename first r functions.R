add=function(x,y){
  x+y
}

above10=function(x){
  use = x>10
  x[use]
}

above = function(x,n=10){
  use=x>n
  x[use]
}
x=1:20
above(x,10)
above(x)

columnmean = function(y, removeNA = T){
  nc = ncol(y)
  means = numeric(nc)
  for(i in 1:nc){
    means[i] = mean(y[, i], na.rm=removeNA)
  }
  means
}

a1=c(1,NA,-2)
a2=c(-2.1,4,NA)
m=cbind(a1,a2)
columnmean(m)

