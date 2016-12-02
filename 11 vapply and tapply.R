sapply(flags, unique) # returns a list (cannot be simplified)

# using vapply you specify what format of output you expect. throws an error if cannot meet requirements
vapply(flags, unique, numeric(1))
ok()

sapply(flags, class)

vapply(flags, class, character(1)) # works faster with large datasets


?tapply
table(flags$landmass) # divides into groups
table(flags$animate)
tapply(flags$animate, flags$landmass, mean) # first divides into groups and then applies a function in each of them
tapply(flags$population, flags$red, summary)
tapply(flags$population, flags$landmass, summary)
class(tapply(flags$population, flags$landmass, summary))
