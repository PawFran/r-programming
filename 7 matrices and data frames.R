# matrices
my_vector <- 1:20
my_vector

dim(my_vector)
length(my_vector)

dim(my_vector) <- c(4, 5)

attributes(my_vector) # matrix is just a vector my dim attribute

my_vector
class(my_vector)

my_matrix <- my_vector

?matrix

my_matrix2 <- matrix(1:20, 4, 5)
identical(my_matrix, my_matrix2)

# adding columns with names
patients <- c("Bill", "Gina", "Kelly", "Sean")

cbind(patients, my_matrix) # implicit coertion

# data frames
my_data <- data.frame(patients, my_matrix)
my_data
class(my_data)

# assigning names to columns
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <- cnames
my_data
