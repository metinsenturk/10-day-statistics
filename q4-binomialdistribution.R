# Day 4: Binomial Distribution I
#
# Bin ~ C(n,x) * p^x (1-p)^(n-x)
# n = 6, p = 1.09/2.09

txt = "1.09 1"
input <- scan(text = txt)
fractions <- input
p <- fractions[1]/(fractions[2] + fractions[1])
o <- round(1 - pbinom(2, 6, p), 3)
writeLines(as.character(o), stdout())

# Day 4: Binomial Distribution II
#
# Bin ~ C(n,x) * p^x * q^(1-x)
# n = 10 p = 0.12

txt = "12 10"
input <- scan(text = txt)
n <- input[2]
p <- input[1] / 100
q1 <- round(pbinom(2, n, p), 3)
q2 <- round(pbinom(1, n, p, lower.tail = FALSE), 3)
o <- as.character(c(q1, q2))
writeLines(o, stdout())

# Day 4: Geometric Distribution I
#
# Geo ~ (1-p)^y-1 * p
# y is the trial number until the first success occurs, p = probability of success

txt = "1 3
5"
input <- scan(text = txt)
y <- input[3]
p <- input[1] / input[2]
q1 <- round(dgeom(y - 1, p), 3)
o <- as.character(c(q1))
writeLines(o, stdout())

# Day 4: Geometric Distribution II
#
# Geo ~ (1-p)^y-1 * p
# y is the trial number until the first success occurs, p = probability of success
#
# This one is a bit tricky but if you think on the sentence, you get the point that it is actually talking about 
# P(1<=Y<=5) = P(Y=1) + P(Y=2) + P(Y=2) + P(Y=3) + P(Y=4) + P(Y=5)

txt = "1 3
5"
input <- scan(text = txt)
y <- input[3]
p <- input[1] / input[2]
q1 <- round(pgeom(y - 1, p), 3)
o <- as.character(c(q1))
writeLines(o, stdout())








