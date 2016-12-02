# function for determining which hospital ina given state has the lowest 30-day mortality regarding given outcome
best <- function(state, outcome){
    # read outcome data
    data <- read.csv("outcome-of-care-measures.csv", colClasses = 'character')
    
    # check if outcome and state are valid
    possible_outcomes <- c( "heart attack", "heart failure", "pneumonia")
    if (! tolower(outcome) %in% possible_outcomes){
        stop("invalid outcome name! choose one of the heart attack, heart failure, pneumonia")
    }
    possible_states <- unique(data$State)
    if (! toupper(state) %in% possible_states){
        stop("invalid state abbreviation!")
    }
    
    # narrow data to hospitals in a given state and to a given outcome
    data <- data[data$State == state, ]
    col_outcomes <- c(11, 17, 23) # corresponding to possible_outcomes
    column_of_interest <- col_outcomes[which(possible_outcomes == outcome)] # choose col# corresponding to the given outcome
    
    # create numeric vector with mortality data
    mortality = as.numeric(data[, column_of_interest])
    # remove NAs
    mortality <- mortality[!is.na(mortality)]
    
    # find all positions where mortality is minimal
    result <- data[which(mortality == min(mortality)), 2]
    
    # handling ties - return first alphabetically
    result <- sort(result)[1]
    result
}

