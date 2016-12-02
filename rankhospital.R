rankhospital <- function(state, outcome, num = "best"){
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
    
    # decide which column take into account
    col_outcomes <- c(11, 17, 23) # corresponding to possible_outcomes
    column_of_interest <- col_outcomes[which(possible_outcomes == outcome)] # choose col# corresponding to the given outcome
    
    # narrow data to hospitals in a given state 
    data <- data[data$State == state, ]
    
    # convert rates to numeric
    data[, column_of_interest] = as.numeric(data[, column_of_interest])
    
    # remove rows whith NAs in a given column
    data <- data[!is.na(data[, column_of_interest]), ]
    
    # create ranking
    sdata <- data[order(data[, column_of_interest], data$Hospital.Name), ]
    
    if (num == "best"){
        num <-  1
    }
    else if (num == "worst"){
        num <- nrow(sdata)
    }
    
    sdata$Hospital.Name[num]
}

