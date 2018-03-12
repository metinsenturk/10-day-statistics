#Day 0 - Weighted Mean Submission
input <- readLines(con = stdin())
N <- as.numeric(input[1])
X <- as.numeric(unlist(strsplit(input[2], " ")))
W <- as.numeric(unlist(strsplit(input[3], " ")))

wmean <- weighted.mean(X, W)
wmean <- format(round(wmean, 1), nsmall = 1)
writeLines(wmean, stdout())