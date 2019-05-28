#! /usr/bin/env Rscript

# this deals with sampling distribution

# sampling distribution of sample average
pop.1 <- read.csv("pop1.csv")
X.bar <- rep(0,10^5)
for(i in 1:10^5)
{
    X.samp <- sample(pop.1$height,100)
    X.bar[i] <- mean(X.samp)
}
# sample average:
hist(X.bar)

# probability of the sample average falling within 1 centimeter of the population mean
mean(abs(X.bar - mean(pop.1$height)) <= 1)


# X ∼ Binomial(10, 0.5) with 64 independent measurements
X.bar <- rep(0,10^5)
for(i in 1:10^5)
{
    X.samp <- rbinom(64,10,0.5)
    X.bar[i] <- mean(X.samp)
}

quantile(X.bar,c(0.025,0.975))

# variance measures the spread of distribution about the expectation

#The CLT states that, for situations where n is large,
#Y ~ BINOM(n, p) is approximately NORM(μ = np, σ = [np(1 – p)]1/2).

# height - in population, mean is 170.135, standard deviation is 1.122
# what is the probability that someone is sithin 2 cm of average?
pnorm(171.035, 170.035, 1.122) - pnorm(169.035, 170.035, 1.122)

# using standard deviation of sample mean?
pnorm(145, 145, sqrt((14^2)/49)) - pnorm(143, 145, sqrt((14^2)/49))

# The time to wait for a particular rural bus is distributed uniformly from 
# 0 to 25 minutes. 25 riders are randomly 
# sampled and their waiting times measured. The 90th percentile of 
# the average waiting time (in minutes) 
# computed for the sample is (approximately):
X.bar <- rep(0,10^5)
for(i in 1:10^5)
{
    X.samp <- runif(25, 0, 25)
    X.bar[i] <- mean(X.samp)
}
hist(X.bar)
quantile(X.bar,0.9)

