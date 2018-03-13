# Day 2. Basic Probability
#
#
# this is a binomial distribution with p=0.5, n=36. 
# lets say X is r.v. showing the sum of the numbers on the dice
#
# P(X <= 9) = P(X = 1) + P(X = 2) .. P(X = 9)
# P(X = x) => C(n,p) * p^x * (1-p)^(n-x)

dice <- c(sample(1:6,1),sample(1:6,1))

f <- function(i) {total = 0.5^i * 0.5^(1-i)}
lapply(1:9, f) 
sum(dbinom(1:35, 36, 0.5))


# binomial with <= 9 can easily be found with pbinom(yo, n, p), yo: x, n = sample size, p = probability
pbinom(9, 36, 1/36)
dbinom(9, 36, 1/36)

# events of X = x, from 1 to 9
# (1)     -
# (2)     1,1
# (3)     1,2 2,1
# (4)     1,3 2,2 3,1
# (5)     1,4 2,3 3,2 4,1 
# (6)     1,5 2,4 3,3 4,2 5,1
# (7)     1,6 2,5 3,4 4,3 5,2 6,1
# (8)     2,6 3,5 4,4 5,3 6,2
# (9)     3,6 4,5 5,4 6,3
sum_under9 <- 0 + 1/36 + 2/36 + 3/36 + 4/36 + 5/36 + 6/36 + 5/36 + 4/36
