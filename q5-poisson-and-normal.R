# Day 5 Questions
# Subjects of coverage: Poisson and Normal Distribution
#
# Poisson ~ lambda^y / y! * e ^ (-lambda)
# Normal  ~ 1/(√(2 π) σ) e^-((x - μ)^2/(2 σ^2))
#
# Poission E[Y] = Var[Y] = lambda ; Var[Y] = E[X^2] - (E[X])^2 ---> 
# E[X^2] = Var[Y] + (E[X])^2 = lambda + (lambda)^2
#
# E[cX] = c * E[X] ; E[c] = c


# Day 5: Poisson Distribution I
#
#
txt <- "2.5
5"
input <- scan(text = txt)
lambda <- input[1]
y <- input[2]
o <- round(dpois(y, lambda = lambda), 3)
writeLines(as.character(o), stdout())


# Day 5: Poisson Distribution II
# E[X] = E[160 + 40*X^2] = E[160] + 40 * E[X^2]
# E[Y] = E[128 + 40*Y^2] = E[128] + 40 * E[Y^2]
txt <- "0.88 1.55"
input <- scan(text = txt)
lambda1 <- input[1]
lambda2 <- input[2]
expX <- format(round(160 + 40 * (lambda1 + lambda1^2), 3), nsmall = 3)
expY <- format(round(128 + 40 * (lambda2 + lambda2^2), 3), nsmall = 3)
o <- c(expX, expY)
writeLines(as.character(o), stdout())

# Day 5: Normal Distribution I
# X is the amount of time required to assemble a car, X is N ~ (20, 4)
# X1 ; P(X < 19.5)
# X2 ; P(20 < X < 22)

txt <- "20 2
19.5
20 22"
input <- scan(text = txt)
x_mean <- input[1]
x_sd <- input[2]
x1 <- input[3]
x21 <- input[4]
x22 <- input[5]

x1_ans <- round(pnorm(x1, x_mean, x_sd), 3)
x2_ans <- round(pnorm(x22, x_mean, x_sd) - pnorm(x21, x_mean, x_sd), 3)

o <- c(x1_ans, x2_ans)
writeLines(as.character(o), stdout())

# alternatively, we can calculate the x1 using central limit theorem.
x1_ans_alternative <- 0
# first, we find the z value of x value in the normal distribution of X.
x1_z <- (x1 - x_mean)/ x_sd 
# then, we found the probability from std norm distribution table for the corresponding z value.
x1_ans_alternative <- pnorm(x1_z, mean = 0, sd = 1) 

# Day 5: Normal Distribution II
# G is N ~ (70, 10)
# P(G > 80)
# P(G >= 60) = 1 - P(G <= 60) 
# P(G < 60) = 1- P(G >= 60)
# careful with the question, it requires answers in terms of percentage.

txt <- "70 10
80
60"
input <- scan(text = txt)
x_mean <- input[1]
x_sd <- input[2]
x1 <- input[3]
x2 <- input[4]

x1_ans <- round(pnorm(x1, x_mean, x_sd, FALSE) * 100, 2)
x2_ans <- round(pnorm(x2, x_mean, x_sd, FALSE) * 100, 2)
x3_ans <- round(pnorm(x2, x_mean, x_sd, TRUE) * 100, 2)

o <- c(x1_ans, x2_ans, x3_ans)
writeLines(as.character(o), stdout())


