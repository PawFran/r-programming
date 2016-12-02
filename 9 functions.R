Sys.Date()
mean(c(2, 4, 5))

my_mean <- function(my_vector) {
    sum(my_vector) / length(my_vector)
}

my_mean(c(4, 5, 10))

remainder <- function(num, divisor = 2) {
    num %% divisor
}

remainder(5)
remainder(11, 5) # default order
remainder(divisor = 11, num = 5) # changing order
remainder(4, div = 2) # partial matching

args(remainder)

# functions as arguments
evaluate <- function(func, dat){
    func(dat)
}

evaluate(sd, c(1.4, 3.6, 7.9, 8.8))

# anonymous functions
evaluate(function(x){x+1}, 6)
evaluate(function(x){x[1]}, c(8, 4, 0))
evaluate(function(x){x[length(x)]}, c(8, 4, 0))


?paste
paste("Programming", "is", "fun!")

# ellipsis as an argument
telegram <- function(...){
    paste("START", ..., "STOP")
}
telegram('Hi')


mad_libs <- function(...){
    # argument unpacking 
    args <- list(...)
    place <- args[["place"]]
    adjective <- args[["adjective"]]
    noun <- args[["noun"]]
    
    paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
mad_libs(place = "p", adjective = "ad", noun = "n")

# defining binary operator
"%p%" <- function(str1, str2){ 
    paste(str1, str2, sep = " ")
}
'I' %p% 'love' %p% 'R!'
