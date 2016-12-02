head(flags)
dim(flags)

viewinfo(flags)

class(flags)

as.list(flags)

# check class of each column
cls_list <- lapply(flags, class) # data frame is a list of vectors
cls_list
class(cls_list)
as.character(cls_list) # returns a character vector

# sapply returns vector or matrix whenever it's possible.
# otherwise it returns a list
cls_vect <- sapply(flags, class)
class(cls_vect)

# how many flags have specified color ?
sum(flags$orange)

flag_colors <- flags[ , 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)

# what percentage of flags has specified color ?
sapply(flag_colors, mean)

# what is the minimum and maximum amount of each shapes ?
flag_shapes <- flags[ , 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)

# looking only for unique values in each column
unique(c(3, 4, 5, 5, 5, 6, 6)) # example
unique_vals <- lapply(flags, unique)
unique_vals
sapply(unique_vals, length)
sapply(flags, unique) # result cannot be simplified

# example of using anonymous functions 
lapply(unique_vals, function(elem) elem[2])
