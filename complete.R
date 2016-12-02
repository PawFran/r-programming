complete <- function(directory, id = 1:332){
    #reads directory of files
    previous_directory <- getwd()
    setwd(directory)
    files <- dir()
    id_number <- numeric(0)
    comp_cases <- numeric(0)
    for(i in 1:length(id)){
        x = read.csv(files[id[i]])
        id_number[i] <- id[i]
        comp_cases[i] <- sum(complete.cases(x$sulfate, x$nitrate))
    }
    
    setwd(previous_directory)
    
    df <- data.frame(id = id_number, nobs = comp_cases)
    df
}