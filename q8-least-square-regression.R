# Day 8: Least Square Regression Line

txt = "95 85
85 95
80 70
70 65
60 70"
input <- read.table(text = txt, header = FALSE)
x <- input$V1
y <- input$V2
xy_model <- lm(y ~ x)
xy_model_coeffs <- xy_model$coefficients

y_foreighty <- (80 * xy_model_coeffs[2]) + xy_model_coeffs[1]

o <- round(y_foreighty, 3)
writeLines(as.character(o), stdout())


# Day 8: Pearson Correlation Coefficient II
# b = p * (std dev) (y/x)
y <- -3/4*x - 2
x <- -3/4*y - 7/3
# both are negatively correlated
p <- -3/4

