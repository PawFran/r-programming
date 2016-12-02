#diagnosing the problem
log(-1)
log(NA)

printmessage=function(x){
    if(x>0)
        print("x is greater than zero")
    else
        print("x is less or equal to zero")
    invisible(x)
}
printmessage(2)
#print functions returns it's argument
y = printmessage(2)
y
printmessage(c(2,4,-1))
printmessage(NA)

printmessage2=function(x){
    if(is.na(x))
        print("x is a missing value")
    else if(x>0)
        print("x is greater than zero")
    else
        print("x is less or equal to zero")
}
x=log(-1)
printmessage2(x)
#NaN is NA

#basic tools - traceback, debug, browser, trace, recover

#traceback
#no x
#how to clear workspace or delete one object ?
mean(x)
traceback() #immidiately after error occurs

lm(y ~ x)
traceback()

debug(lm)
lm(y ~ x)

options(error = recover)
read.csv("nosuchfile")
