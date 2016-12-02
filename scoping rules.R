lm = function(x){
    x*x
}
lm
search()

#lexical scoping: the values of free variables 
#are searched for in the environment - collection of 
#(symbol, value) pairs -  in which the function 
#was defined
#function closure - function + environment

make.power = function(n){
    pow = function(x){
        x^n
    }
    pow
}
cube=make.power(3)
square=make.power(2)
cube(3)
square(3)

ls(environment(cube))
get("n", environment(cube))

ls(environment(square))
get("n", environment(square))
get("pow", environment(cube))



y=10
f=function(x){
    y=2
    y^2+g(x)
}
g=function(x){
    x*y   #lexical scoping - y is taken from global environment
}       #in dynamic scoping it would be taken from calling 
f(3)    #environment

#all objects must be stored in memory
#functions must carry a pointer to respective environment