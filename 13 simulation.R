?sample
sample(1:6, 4, replace = TRUE)
sample(1:6, 4, replace = TRUE) # repeat
sample(1:20, 10)

LETTERS
sample(LETTERS)
# sample(10) ? try later

# sampling with given probabilities
flips <- sample(c(0, 1), 100, replace = TRUE, prob = c(0.3, 0.7))
flips
sum(flips)

# binomial distribution
?rbinom
rbinom(1, 100, prob = 0.7)
flips2 <- rbinom(100, 1, prob = 0.7)
flips2
sum(flips2)

# normal distribution
?rnorm
rnorm(10)
rnorm(10, 100, 25)

# poisson distribution
?rpois
rpois(5, 10)
my_pois <- replicate(100, rpois(5, 10))
my_pois
cm <- colMeans(my_pois)
hist(cm)
