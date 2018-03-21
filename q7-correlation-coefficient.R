# Day 7 Pearson's Correlation Coefficient
# R, the most common correlation coefficient that you probably know
# There are other correlation coefficients as Pearson's and all are for different purposes such as binary variables, bivariate rvs and so on.


# Day 7: Pearson's Correlation Coefficient
txt = "10
10 9.8 8 7.8 7.7 7 6 5 4 2 
200 44 32 24 22 17 15 12 8 4"
input <- scan(text = txt)
n <- input[1]
x1 <- input[2:(n+1)]
x2 <- input[n+2:(n+1)]

x1_mean <- mean(x1)
x2_mean <- mean(x2)
x1_sd <- sd(x1)
x2_sd <- sd(x2)

cor_x1x2_pearson <- round(cor(x1,x2), 3)
cor_x1x2_pearson_alternative <- round(sum((x1-x1_mean)*(x2-x2_mean)) / (n * x1_sd * x2_sd), 3)

writeLines(as.character(cor_x1x2_pearson), stdout())


# Day 7: Spearman's Rank Correlation Coefficient
txt = "10
10 9.8 8 7.8 7.7 1.7 6 5 1.4 2 
200 44 32 24 22 17 15 12 8 4"
input <- scan(text = txt)
n <- input[1]
x1 <- input[2:(n+1)]
x2 <- input[n+2:(n+1)]

x1_mean <- mean(x1)
x2_mean <- mean(x2)
x1_sd <- sd(x1)
x2_sd <- sd(x2)

cor_x1x2_spearman <- round(cor(x1, x2, method = "spearman"), 3)

writeLines(as.character(cor_x1x2_spearman), stdout())
