pollutantmean <- function(directory, pollutant, id = 1:332){
    values = c()
    previous_directory <- getwd()
    setwd(directory)
    files <- dir()
    
    if(pollutant == "nitrate"){
        for(i in 1:length(id)){
            x = read.csv(files[id[i]])
            for(j in 1:length(x$nitrate)){
                if(!is.na(x$nitrate[j])) values[length(values) + 1] = x$nitrate[j]
            }
        }
    }
    
    else if(pollutant == "sulfate"){
        for(i in 1:length(id)){
            x = read.csv(files[id[i]])
            for(j in 1:length(x$sulfate)){
                if(!is.na(x$sulfate[j])) values[length(values) + 1] = x$sulfate[j]
            }
        }
    }
    
    setwd(previous_directory)
    mean(values)
}