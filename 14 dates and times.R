d1 <- Sys.Date()
class(d1)
unclass(d1) # number of days since 1970-01-01
d1

d2 <- as.Date("1969-01-01")
unclass(d2) 

t1 <- Sys.time()
t1
class(t1) # POSIXct
unclass(t1)

t2 <- as.POSIXlt(Sys.time())
class(t2)
t2
unclass(t2) # a list

str(unclass(t2))

t2$min

weekdays(d1)
months(t1)
quarters(t2)

t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)

# operations on dates and times
Sys.time() > t1
Sys.time() - t1

difftime(Sys.time(), t1, units = 'days')
