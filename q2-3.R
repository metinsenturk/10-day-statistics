# Day 2. Basic Probability
#
# lets say X is r.v. showing the sum of the numbers on the dice
#
# P(X <= 9) = P(X = 1) + P(X = 2) .. P(X = 9)
# P(X = x) => C(n,p) * p^x * (1-p)^(n-x)

X <- 2:12
P <- c(1/36, 2/36, 3/36, 4/36, 5/36, 6/36, 5/36, 4/36, 3/36, 2/36, 1/36)
plot(x = X,y = P)

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


# Day 2. More Dice
#
# we can see that P(X = 6) has 5 pairs in which only one of the pair has the same result on the dice.
# we can say that P(X = 6| each die will be different) = 4/36
sum_of6giventhateachdiff <- 4/36

# Day 2. Compound Event Probability
# 
                      # X Y Z
c1 <- 4/7 * 5/9 * 4/8 # R R B
c2 <- 4/7 * 4/9 * 4/8 # R B R
c3 <- 3/7 * 5/9 * 4/8 # B R R
a  <- sum(c1,c2,c3)

# Day 3. Conditional Probability
# 
# 2 children, one is a boy. Probability that both children are boys?
# Child is either a Boy (B) or Girl (G)
# X is the number of boy children in the family X= 1,2      0 can't be, already one boy.
# Our E = { BB, BG, GB }          GG is not in our events b/c problem already says one is a boy.
# this is a paradox question that really interesting. I recommend checking this on Google.
# https://en.wikipedia.org/wiki/Boy_or_Girl_paradox
# P(X = 2| X = 1) = P( X=1| X=2 )* P(X=2) / P( X=1 ) = P( X=2 and X=1 ) / P( X=1 )
# P(X = 2) = ?

p_x2_given_x1 <- 1 * 1/3 / 2/3 
p_x2 <- 1/3

# Day 3. Cards of the Same Suit
#
# drawing two cards w/o replacement. 
# First Card probability:     1
# Secnd Card probability:     12/52
p_cards <- 1 * 12/52

# Day 3. Drawing Marbles
#
# 3 Red, 4 Blue. 2 selection, 1 is Red, Prob of Second is blue?
# 
# Do not confuse these two probabilities, P(Second is Blue | First is Red) and P(Second is Blue | First = Red)
# P(Second is Blue | First is Red) = in this probability, we assume the first is not drawn yet, and we are assuming that we are getting red in the first and blue in the second
# P(Second is Blue | First = Red) in this probability, we assume the first drawn is already made and it is red. 
p_secondblue_firstred <- 1 * 4/6






