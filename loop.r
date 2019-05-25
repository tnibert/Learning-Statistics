#! /usr/bin/env Rscript

# sampling distribution of sample average
pop.1 <- read.csv("pop1.csv")
X.bar <- rep(0,10^5)
for(i in 1:10^5)
{
    X.samp <- sample(pop.1$height,100)
    X.bar[i] <- mean(X.samp)
}
hist(X.bar)
