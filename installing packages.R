available.packages()

a = available.packages()
head(rownames(a), 3)

#installing from CRAN
install.packages("ggplot2")
install.packages(c("ggplot2", "devtools"))

??slidify

?setRepositories
setRepositories()

source("http://bioconductor.org/biocLite.R")
biocLite

biocLite(c("GenomicFeatures", "AnnotationDbi"))


library(ggplot2)
search()
?search

find.package("devtools")
library(devtools)
find_rtools()

