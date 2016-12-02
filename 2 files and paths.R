getwd()

ls() # list objects in local workspace

x <- 9

ls()

dir() # list all files in working directory
list.files() # same

?list.files

args(list.files)

old.dir <- getwd()

dir.create("testdir")

setwd("testdir")

file.create("mytest.R") # returns true if successful

list.files()

file.exists("mytest.R")

file.info("mytest.R") # what objest is it ? list ?

file.rename("mytest.R", "mytest2.R") 

file.copy("mytest2.R", "mytest3.R")

file.path("mytest3.R")

file.path("folder1", "folder2")

?dir.create

dir.create(file.path("testdir2", "testdir3"), recursive = TRUE) # rec=T is for nested directory

unlink("testdir2", recursive = TRUE)

setwd(old.dir)

unlink("testdir", recursive = TRUE)
