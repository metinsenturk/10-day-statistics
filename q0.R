input <- readLines(file("test3.txt"))
N <- as.numeric(input[1])
X <- as.numeric(unlist(strsplit(input[2], " ")))
unlink(input)
mode <- function(x) {
  temp <- table(sort(x))
  result <- names(temp)[temp == max(temp)]
  result <- result[1]
  return(as.numeric(result))
}
Mea <- round(mean(X), 1)
Med <- round(median(X), 1)
Mod <- mode(X)
vec <- c(Mea, Med, Mod)
writeLines(as.character(vec), stdout())


