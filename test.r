#!/usr/bin/env Rscript

# just gettings use to the environment
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

# calculate expectation with probabilities
Y.val <- c(0, 1, 2, 3, 4, 5, 6)
P.val <- c(0.10, 0.15, 0.25, 0.10, 0.15, 0.10, 0.15)
E <- sum(Y.val*P.val)
print("Expectation: ")
print(E)

# calculate variance and standard deviation with probabilities, this replicates the above with variable probabilities
Var <- sum((Y.val-E)^2*P.val)
print(Var)
standarddeviation <- sqrt(Var)
print(standarddeviation)

# notation to create a sequence 0 to 10
rg <- 0:10

# binomial random variable, args - sequence, repeats, probability of success in each trial
# returns sequence of probabilities for each value in original sequence
print(dbinom(c(1,2,3),10,0.4))

# sequence 0 to 10, increases 0.01 for 1000 values
x <- seq(0,10,length=1000)
# uniform random variable
den <- dunif(x,3,7)
plot(x,den,type="l")
