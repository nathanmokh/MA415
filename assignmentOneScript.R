#Nathan Mokhtazadeh
#Problem 1:
print(1:20)
print(20:1)
print(c(1:20,19:1))
print(c(4, 6, 3))
#e
prob_e <- c(4, 6, 3)
print(rep(prob_e, 10))
#f
print(c(rep(prob_e, 10),4))
#g
four <- rep(4,10)
six <- rep(6,20)
three <- rep(3, 30)
print(c(four, six, three))
#Problem 2:
prob2 <- seq(from = 3, to = 6, by = .1)
ret <- exp(prob_2) * cos(prob_2)
print(ret)
#Problem 3:
exp_for_one <- seq(from = 3, to = 36, by = 3)
exp_for_two <- seq(from = 1, to = 34, by = 3)
ret <- .1 ^ exp_for_one * .2 ^ exp_for_two
print(ret)
#3b
exp_and_denom <- 1:25
ret <- (2 ^ exp_and_denom) / exp_and_denom
print(ret)
#Problem 4:
i <- 10:100
ret <- (i ^ 3) + (4 * i ^ 2)
print(sum(ret))
#b
i <- 1:25
ret <- ((2 ^ i) / i) + ((3 ^ i) / i ^ 2)
print(sum(ret))
#Problem 5
paste('label', 1:30, sep = ' ')
#b
paste('fn', 1:30, sep = '')
#Problem 6
set.seed(50)
xVec <- sample(0:999, 250, replace = T)
yVec <- sample(0:999, 250, replace = T)
ans6a <- c(yVec[2:250] - xVec[1:249])
#b
ans6b <- c(sin(yVec[1:250]) / cos(xVec[2:249]))
#c
ans6c <- c(xVec[1:250] + (2 * xVec[2:249]) - xVec[3:248], xVec[2:249] + (2 * xVec[3:248]) - xVec[4:247])
#d
i <- 1: 249
exp(-xVec[i + 1]) / (xVec[i] + 10)
#Problem 7
pr7a <- yVec[yVec > 600]
#b
pr7b <- which(yVec > 600)
#c
x_vals_over_600 <- which(xVec > 600)
intersect(x_vals_over_600, pr7b)
#d
x_bar <- mean(xVec)
ret <- c(sqrt(abs(xVec[1:250] - x_bar)))
#e
yVec[yVec < max(yVec) + 200 & yVec > max(yVec - 200)]
#f
yVec[yVec %% 2 == 0]
#g, not so sure what the question is asking
sort(xVec)
#h
ans7h <- c(yVec[1], yVec[4], yVec[7], yVec[10], yVec[13])
#Problem 8
x <- seq(2, 38, by=2)
y <- seq(3, 39, by=2)
1 + sum(cumprod(x / y))
