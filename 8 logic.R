TRUE & c(TRUE, FALSE, FALSE) # evaluate all
TRUE && c(TRUE, FALSE, FALSE) # evaluate only first member of a vector

TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)

# precedence of operators
5 > 8 || 6 != 8 && 4 > 3.9

isTRUE(6 > 4)

identical('twins', 'twins')

xor(5 == 6, !FALSE)

ints <- sample(10)
ints

ints > 5

which(ints > 7)

any(ints < 0)

all(ints > 0)
