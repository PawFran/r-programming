x
x[1:10]
x[is.na(x)]
y <- x[!is.na(x)]
y
y[y>0]

x[x>0] # returns also NAs

x[!is.na(x) & x > 0]

x[c(3, 5, 7)]
x[0] # return numeric(0)
x[3000] # returns Na but no error

x[c(-2, -10)] # all except the second and 10th element
x[-c(2, 10)]

vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2) # would it be different with vect == vect2 ?

# what about repeated names ?
vect["bar"]
vect[c("foo", "bar")]
