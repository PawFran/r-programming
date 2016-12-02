str(file)
##decription - name of the file
##open: r-read only, w-writing and initialising new file
##a-appending
##rb,wb,ab-in binary mode(Windows)

con=file("foo.txt","r")
data=read.csv(con)
close(con)

##the same
data=read.csv("foo.txt")

con=gzfile("words.gz")
x=readLines(con,10)
x

con = url("http://www.jhsph.edu", "r")
x=readLines(con)
head(x)

