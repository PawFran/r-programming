corr <- function(directory, treshold = 0){
    previous_directory <- getwd()
    setwd(directory)
    files <- dir()
    comp_cases <- numeric(0)
    correlations <- numeric(0)
    for(i in 1:length(id)){
        x = read.csv(files[id[i]])
        if (sum(complete.cases(x$sulfate, x$nitrate)) > treshold){
            correlations[i] = cor(x$sulfate, x$nitrate)
        }
    }
    
    setwd(previous_directory)
    
    correlations
}