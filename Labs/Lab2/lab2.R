#Pregunta1
x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
weighted.mean(x,w)

#Pregunta2
y <- c(12.96, 5.15, 9.07, 5.36, 13.68, 11.86, 22.49, 6.54, 17.98, 11.43, 9.73, 5.44, 5.73, 8.84, 3.78, 4.74, 4.62, 3.92, 5.2)
x1 <- c(2, 6, 3, 5, 3, 3, 0, 4, 2, 4, 5, 7, 5, 4, 9, 6, 7, 7, 7)
x2 <- c(57.5, 83.2, 67, 92.7, 40.7, 79.8, 23.5, 81, 64.4, 65.8, 69.3, 72.9, 107.5, 92.1, 86.1, 89.4, 93.3, 107.1, 116.9)

#Usando álgebra matricial
length(y)

X1 <- matrix(x1, ncol = 1, nrow = 19)
X2 <- matrix(x2, ncol = 1, nrow = 19)
X0 <- matrix(c(rep(1, 19)), ncol = 1, nrow = 19)
X <- cbind(X0, X1, X2)
Y <- matrix(y, ncol = 1, nrow = 19)
A <- solve(t(X) %*% X)
B <- t(X) %*% Y

beta <- A %*% B
beta

fit <- lm(y ~ x1 + x2)
summary(fit)
