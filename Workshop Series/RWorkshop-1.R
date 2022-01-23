
# Data Types
1
"a"
"My name is William"

TRUE
FALSE

T
F

exp(1)
log(2, 10)
sin(pi)
factorial(10)


# Assignment

x <- 5
y <- 8

exp(x)
x+y
x^y

z <- x + y

# Vectors
# c()

c(x, y)

x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- c(1, 2, 3, 4, 5, 6)

x + y
x/y

x + z
#
# z <- c(1, 2, 3, 4, 5, 6)
# x <- c(1, 2, 3) 1, 2, 3

exp(x)

# Exercise 1
x <- 0.05
n <- 0:50

x^n
(x^n)/factorial(n)
sum((x^n)/factorial(n))

exp(x)

# Matrices

X <- matrix(1:6)
X

Y <- matrix(1:6, nrow = 3)
Y

exp(Y)

# Transpose
t(X)

# %*%

X%*%t(X)

# Exercises 2

v <- 1:3
M <- matrix(1:9, nrow = 3)

v*M
v%*%M
M%*%v

# Takeaway:
# Using element-wise multiplication can be confusing if vectors are not the same dimension, not recommended
# Vectors can be treated as both nx1 and 1xn in terms of matrix multiplication

# Data Frames

dfY <- data.frame(Y)
dfY

names(dfY)

dfY2 <- data.frame(Y, newcol = c("entry1", "entry2", "entry3"))
dfY2

# cbind
# rbind


cbind(Y, Y)
rbind(Y, Y)

# Indexing

x <- -1:10
x

x[5]
x[-5]
x[c(3, 5, 7, 8)]
x[c(-3, -5, -7, -8)]
x[-c(3, 5, 7, 8)]


Y
Y[,]
Y[, 2]
Y[2:3, ]

dfY2[, "X1"]
dfY2[, c("X1", "newcol")]

# Exercise 3

head(iris)
petals <- iris[, c("Petal.Length", "Petal.Width")]
petals <- iris[, c(3, 4)]
head(petals)
sepals <- iris[, c("Sepal.Length", "Sepal.Width")]
head(sepals)

training.data <- cbind(sepals, petals)
training.data1 <- data.frame(sepals, petals)
training.data <- training.data[25:125,]
head(training.data)

training.data2 <- iris[25:125, -5]
training.data2
