#! /usr/bin/env Rscript

# this all deals with sampling distribution

# sampling distribution of sample average
pop.1 <- read.csv("pop1.csv")
X.bar <- rep(0,10^5)
for(i in 1:10^5)
{
    X.samp <- sample(pop.1$height,100)
    X.bar[i] <- mean(X.samp)
}
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
