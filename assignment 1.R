#preparation
?unz()
unzip("rprog_data_specdata.zip")
data <- read.csv("1")
list.files()
setwd("specdata")
list.files()
x = read.csv("001.csv")
head(x)

#part 1
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


pollutantmean("specdata", "nitrate", 23)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 1:10)



#part 2
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

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)


#uwzgledcnic ze aktualnym wd moze byc specdata

#part 3
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

cr <- corr("specdata", 150)
head(cr)
