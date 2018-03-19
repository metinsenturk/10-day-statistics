# Day 6 Questions
# Subjects of coverage: Central Limit Theorem


# Day 6: The Central Limit Theorem I
txt <- "9800
49
205
15"
input <- scan(text = txt)
x_l_s_mean <- input[1]
x_l_n <- input[2]
x_mean <- input[3]
x_sd <- input[4]

# P(X<x) ; P(X < 9800) where X is total weight of the boxes
x_l_mean <- x_l_n * x_mean
x_l_sd <- sqrt(x_l_n) * x_sd

o <- round(pnorm(x_l_s_mean, x_l_mean , x_l_sd), 4)
writeLines(as.character(o), stdout())


# Day 6: The Central Limit Theorem II
txt <- "250
100
2.4
2.0"
input <- scan(text = txt)
x_l_s_mean <- input[1]
x_l_n <- input[2]
x_mean <- input[3]
x_sd <- input[4]

# X is the number of tickets purchased for the game X ~ NN(µ, σ))
x_l_mean <- x_l_n * x_mean
x_l_sd <- sqrt(x_l_n) * x_sd

o <- round(pnorm(x_l_s_mean, x_l_mean , x_l_sd), 4)
writeLines(as.character(o), stdout())


# Day 6: The Central Limit Theorem III
txt <- "100
500
80
.95
1.96"
input <- scan(text = txt)
x_l_n <- input[1]
x_l_mean <- input[2]
x_l_sd <- input[3]
x_p <- input[4]
z <- input[5]

# from the z-table, we find out that z values under 0.05 probability is already -+ 1.96. I know that 
# A and B A > (X - µ)/ σ√n

A <- round((x_l_sd / sqrt(x_l_n)) * -1.96 + x_l_mean, 2)
B <- round((x_l_sd / sqrt(x_l_n)) * 1.96 + x_l_mean, 2)

o <- c(A, B)
writeLines(as.character(o), stdout())

















