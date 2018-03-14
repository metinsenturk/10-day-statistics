txt = "1.09 1"
input <- scan(text = txt)
fractions <- input
p <- fractions[1]/(fractions[2] + fractions[1])
o <- 1 - pbinom(2, 6, p)
writeLines(as.character(o), stdout())
