#Day 1 - Quartiles

#reading input from stdin file
input <- readLines(con = stdin())
n <- as.numeric(input[1])
x <- sort(as.numeric(unlist(strsplit(input[2], " "))))

#TEST start comment
#random cases and the test cases, along with their answers. 
# n <- round(runif(1, 5, 50), 0)
# x <- sample(1:100, n)
# 
# tc1 <- "3 7 8 5 12 14 21 13 18"                     #6 12 16 #9
# tc2 <- "3 7 8 5 12 14 21 15 18 14"                  #7 13 15 #10
# tc3 <- "4 17 7 14 18 12 3 16 10 4 4 12"             #4 11 15 #12
 x <- sort(as.numeric(unlist(strsplit(tc2, " "))))
# n <- length(x)
# TEST end comment

res <- c()

#if length is odd, median is in the middle
if (n %% 2 == 1) {
  p_q1 <- round(n/4)
  p_q2 <- round(n/2)
  p_q3 <- round(n/4*3)
  q1 <- floor((x[p_q1] + x[p_q1 + 1]) /2)
  q2 <- floor((x[p_q2 + 1]))
  q3 <- ceiling((x[p_q3] + x[p_q3 + 1]) /2)
  res <- c(q1, q2, q3)
} else {
  p_q1 <- round(n/4)
  p_q2 <- round(n/2)
  p_q3 <- round((n/4)*3)
  #1st and 3rd quartiles related with the half of n, so if n/2 is odd, then quartiles are in the middle
  if (length(x[1:(n/2)]) %% 2 == 1) {
    q1 <- round((x[p_q1 + 1]))
    q2 <- round((x[p_q2] + x[p_q2 + 1]) /2, 0)
    q3 <- round(x[p_q3])
  } else {
    q1 <- round((x[p_q1]))
    q2 <- round((x[p_q2] + x[p_q2 + 1]) /2, 0)
    q3 <- round((x[p_q3] + x[p_q3 + 1]) / 2, 0)
  }
  res <- c(q1, q2, q3)
}

#write output to stdout
writeLines(as.character(res), stdout())
