##basics
x=c("a", "b", "C", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u=x>"a"
u
x[u]

##lists
x=list(foo=1:4,bar=0.6)
x[1]    ##producing a list containing a sequence
x[[1]]  ##producing a sequence
x$bar
x[["bar"]]
x["bar"]

x=list(foo=1:4, bar=0.6, baz="hello")
x[c(1,3)]


x=list(foo=1:4, bar=0.6, baz="hello")
name="foo"
x[[name]] ##can be used with computations
x$name
x$foo

x=list(a=list(10,12,14), b=c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

#matrices
x=matrix(1:6,2,3)
x[1,2]  ##zwraca liczbê
x[2,1]
x[1,]   ##zwraca wektor
x[,2]

x[1,2,drop=F] ##bez niego otrzymuje siê liczbê zamiast 
              ##macierzy 1x1

x[1, , drop=F]


#partial matching
x=list(aardvark = 1:5)
x$a #u¿ywa partial matching
x[["a"]]
x[["a", exact=F]]

#removing missing values
x=c(1,2,NA,4,NA,5)
bad=is.na(x)
x[!bad]

y=c("a", "b", NA, "d", NA, "f")
good=complete.cases(x,y)  #nie ma NA na obu
good
x[good]
y[good]

aiquality[1:6, ]  #tabela..
good=complete.cases(aiquality)
aiquality[good, ][1:6, ]
