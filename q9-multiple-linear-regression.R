# Day 9: Multiple Linear Regression

txt <- 
"2 7
0.18 0.89 109.85
1.0 0.26 155.72
0.92 0.11 137.66
0.07 0.37 76.17
0.85 0.16 139.75
0.99 0.41 162.6
0.87 0.47 151.77
4
0.49 0.18
0.57 0.83
0.56 0.64
0.76 0.18"

# reading input 
input <- read.table(text = txt , header = F, fill = T)
input <- read.table("https://hr-testcases-us-east-1.s3.amazonaws.com/21158/input01.txt?AWSAccessKeyId=AKIAJ4WZFDFQTZRGO3QA&Expires=1523867850&Signature=R02hxCyGQi5SXbhnwpQrd72C6Sc%3D&response-content-type=text%2Fplain", header = F, fill = T)

m <- input[1,1]
n <- input[1,2]
data_train <- input[2:(n+1),]
q <- input[(1+n+1),1]
data_test <- input[(1+n+1+1):(1+n+1+q),]

# cleanup data
data_test[is.na(data_test)] <- 0
data_train[is.na(data_train)] <- 0
data_train <- data_train[,c(m+1,1:m)]
colnames(data_train) <- paste("V", 1:(m+1), sep = "")
colnames(data_test) <- paste("V", 2:(m+1), sep = "")

# model
fit <- lm(formula = V1 ~ ., data = data_train)
summary(fit)
coef(fit)

# predicting
results <- round(predict(fit, data_test), 2)

# printing
writeLines(as.character(results), stdout())
