rankall <- function(outcome, num = "best"){
    # check stringsAsFactors option
    previouslyAsFactors <- options()$stringsAsFactors
    options(stringsAsFactors=FALSE)
    
    # read data
    data <- read.csv("outcome-of-care-measures.csv", colClasses = 'character')
    
    # check if the given outcome is valid
    possible_outcomes <- c( "heart attack", "heart failure", "pneumonia")
    if (! tolower(outcome) %in% possible_outcomes){
        stop("invalid outcome name! choose one of the heart attack, heart failure, pneumonia")
    }
    
    # decide which column take into account
    col_outcomes <- c(11, 17, 23) # corresponding to possible_outcomes
    column_of_interest <- col_outcomes[which(possible_outcomes == outcome)] # choose col# corresponding to the given outcome
    
    # create a list of all states
    all_states <- unique(data$State)
    
    # create empty data frame to be filled in the future
    result <- data.frame(hospital = character(), state = character(), stringsAsFactors = F)
    
    for (state in all_states){
        # narrow data to hospitals in a given state
        data_copy <- data[data$State == state, ]
        
        # convert rates to numeric
        data_copy[, column_of_interest] = as.numeric(data_copy[, column_of_interest])
        
        # remove rows whith NAs in a given column
        data_copy <- data_copy[!is.na(data_copy[, column_of_interest]), ]
        
        # create ranking
        sdata <- data_copy[order(data_copy[, column_of_interest], data_copy$Hospital.Name), ]
        
        # decide which number should be taken into account
        if (num == "best"){
            num <-  1
        }
        else if (num == "worst"){
            num <- nrow(sdata)
        }
        
        name <- sdata$Hospital.Name[num]
        
        result <- rbind(result, c(name, state)) # must use a vector here!
    }
    
    colnames(result) <- c("hospital", "state")
    
    # return to previous settings if necessary
    if(previouslyAsFactors){
        options(stringsAsFactors=TRUE)
    }
    
    result
}