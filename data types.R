#objects and attributes
vector()

1 #numeric
1L #integer
1/0
1/Inf
0/0


attributes(1)

#vectors
x = c(0.5, 0.6)
x = c(T,F)
x = c("a","b","c")
x = 9:20
x = c(1+0i, 2+4i)

vector("numeric", length = 10)

#mixing objects
y=c(1.7,"a") #character
y = c(T,2)   #numeric
y = c("a",T) #character

#explicit coertion
x = 0.6
class(x)
as.integer(x)
class(x)
x = as.integer(x)
class(x)

x = 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

x = c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)

#lists
x = list(1, "a", TRUE, 1+ 4i)
x

#matrices
m = matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)

m = matrix(1:6, nrow = 2, ncol =3)
m

m = 1:10
m
dim(m) = c(2,5)
m

x = 1:3
y = 10:12
cbind(x,y)
rbind(x,y)

#factors
x = factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)

x = factor(c("yes", "yes", "no", "yes", "no"),levels = c("yes", "no")) #setting order
x

#missing values
is.na()
is.nan() #nan is fo math operations
x = c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x = c(1,2,NaN, NA, 4)
is.na(x)
is.nan(x)

#data frames
row.names()
read.table()
read.csv()
data.matrix()
x = data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)

#names attribute
x = 1:3
names(x)
names(x) = c("foo","bar","norf")
x
names(x)

x = list(a=1,b=2,c=3)
x

m = matrix(1:4, nrow =2, ncol = 2)
dimnames(m) = list(c("a","b"),c("c","d"))
m
