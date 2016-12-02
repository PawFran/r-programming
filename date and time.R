# Date class #date
# POSIXct and POSIXlt class #time
    
x=as.Date("1970-01-01")
x
unclass(x) # represented as a number ofdays past from 1970-01-01
unclass(as.Date("1970-01-02"))

#POSIXct is a large number
#POSIXlt is a list with other information

x=Sys.time()
x
p=as.POSIXlt(x)
names(unclass(p))
p$sec

unclass(p)

x=Sys.time() # already in POSIXct format 
x
unclass(x)
x$sec #error

datestring=c("January 10, 2012 10:40", "December 9, 2011 9:10")
x=strptime(datestring, "%B %d, %Y %H:%M")
x#error!
?strptime
class(x)

a=as.Date("2012-01-01")
y=strptime("9 Jan 2011 11:34:21", "%d-%b-%Y %H:%M:%S")
y #NA!
x-y
x=as.POSITXlt(x)
x-y


x=as.Date("2012-03-01"); y=as.Date("2012-02-28")
x-y
x=as.POSIXct("2012-10-25 01:00:00")
y=as.POSIXct("2012-10-25 06:00:00", tz="GMT")
y-x
