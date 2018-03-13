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

#rep command replicates x's elements by f times. if x is a vector, x[i] replicated by f[i] times. sort does not necessary but looks cool anyway.
x_new <- sort(rep(x, times=f))
iqr <- format(round(IQR(x_new, type=2), 1), nsmall=1)

writeLines(iqr, stdout())