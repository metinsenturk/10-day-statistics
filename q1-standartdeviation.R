#test case1
txt = "5
10 40 30 50 20"

# replace the command with below while running it in Hackerrank
# input <- scan("stdin")
input <- scan(text = txt)
n <- input[1]
x <- as.numeric(input[2:(n+1)])

#as a comparison, I will be comparing the base functions with the manual versions
avg1 <- mean(x)
avg2 <- sum(x)/n

variance1 <- var(x)
variance2 <- sum((x-avg2)^2)/n

std1 <- sd(x)
std2 <- sqrt(variance2)

# rounding the answer in a scale of 1 decimal place
output <- format(round(std2, 1), nsmall=1)
writeLines(output, stdout())
