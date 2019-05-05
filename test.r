#!/usr/bin/env Rscript
x <- c(5, 3, 9, 1, 2, 3, 4, 1, 3)
print(x)
y <- table(x)
print(y)
#pdf("test.pdf")
plot(y)

# calculate standard deviation of a random variable manually
a <- c(7.2, 1.2, 1.8, 2.8, 18, -1.9, -0.1, -1.5, 13.0, 3.2, -1.1, 7.0, 0.5, 3.9, 2.1, 4.1, 6.5)
# this works because the probability of each element is 1/17
sqrt(length(a)/(length(a)-1)*sum((a-sum(a*(1/length(a))))^2*(1/length(a))))
sd(a)
