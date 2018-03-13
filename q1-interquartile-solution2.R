#test case1
txt = "6
6 12 8 10 20 16
5 4 3 2 1 5"

# replace the command with below while running it in Hackerrank
# input <- scan("stdin")
input <- scan(text = txt)
n <- input[1]
x <- as.numeric(input[2:(n+1)])
f <- as.numeric(input[(n+2):(n+n+1)])

#rep command replicates x's elements by f times. if x is a vector, x[i] replicated by f[i] times. sort is a neccessity in here.
x_new <- sort(rep(x, times=f))

nn <-length(x_new)
if (nn %% 2 == 0) {
  #lower and upper half count is even
  if ((nn %% 2) %% 2 == 0) {
    q1 <- (x_new[nn/4] + x_new[nn/4 + 1]) / 2
    q2 <- (x_new[nn/2] + x_new[nn/2 + 1]) / 2
    q3 <- (x_new[3*nn/4] + x_new[3*nn/4 + 1]) / 2
  } 
  #lower and upper half count is odd
  else {
    q1 <- x_new[nn/4]
    q2 <- (x_new[nn/2] + x_new[nn/2 + 1]) / 2
    q3 <- x_new[3*nn/4]
  }
} else {
  #lower and upper half count is even
  if ((nn %% 2) %% 2 == 0) {
    q1 <- (x_new[nn/4] + x_new[nn/4 + 1]) / 2
    q2 <- x_new[nn/2 + 1]
    q3 <- (x_new[3*nn/4] + x_new[3*nn/4 + 1]) / 2
  } 
  #lower and upper half count is odd
  else {
    q1 <- x_new[nn/4]
    q2 <- x_new[nn/2 + 1]
    q3 <- x_new[3*nn/4]
  }
}

# rounding the answer in a scale of 1 decimal place
iqr <- format(round((q3-q1), 1), nsmall=1)
writeLines(iqr, stdout())