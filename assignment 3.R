unzip("rprog_data_ProgAssignment3-data.zip", exdir = "hospitals")
dir('hospitals')
setwd('hospitals')

data <- read.csv("outcome-of-care-measures.csv", colClasses = 'character')

head(data)
ncol(data)
nrow(data)
names(data)

# 30-day mortality is in col 11
data[, 11] <- as.numeric(data[, 11]) # change from character to numeric
hist(data[, 11])


                        #tests
source('best.R')
best("TX", "heart attack") # suggested answer is NA!
best("TX", "heart failure") #ok
best("MD", "heart attack") #ok
best("MD", "pneumonia") #ok
best("BB", "heart attack") #ok
best("NY", "hert attack") #ok

source('rankhospital.R')
rankhospital("TX", "heart failure", 4) # ok
rankhospital("MD", "heart attack", "worst") # ok
rankhospital("MN", "heart attack", 5000) # ok

source('rankall.R')
head(rankall("heart attack", 20), 10) # ok
tail(rankall("pneumonia", "worst"), 3) # doesn't work
tail(rankall("heart failure"), 10) # almost
