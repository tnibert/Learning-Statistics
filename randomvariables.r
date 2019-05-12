#! /usr/bin/env Rscript

# dbinom(x, size, prob) 
# Put simply, dbinom finds the probability of getting a certain number of successes (x) in a certain number of trials (size) where the probability of success on each trial is fixed (prob).
# https://www.statology.org/a-guide-to-dbinom-pbinom-qbinom-and-rbinom-in-r/

# say a clinic vaccinates 500 people per day
# the probability of producing a reaction is 0.09

# in a given day, what is the probability that more than 40 people will develop a reaction?
# P(X > 40) = 1 − P(X ≤ 40)
result <- 1 - pbinom(40,500,0.09)
print(result)

# in a given day, what is the probability that the number of people developing a reaction
# is between 50 and 45 inclusive?
result <- pbinom(50,500,0.09) - pbinom(44,500,0.09)
print(result)

# X ∼ Negative-Binomial(2, 0.5)
x <- 0:15
plot(x,dnbinom(x,2,0.5),type="h")

#X 2 ∼ Negative-Binomial(4, 0.5)
plot(x,dnbinom(x,4,0.5),type="h")

#X 3 ∼ Negative-Binomial(8, 0.8)
plot(x,dnbinom(x,8,0.8),type="h")

# poisson
# http://www.r-tutor.com/elementary-statistics/probability-distributions/poisson-distribution
# for meiosis, crossovers of loci: E(X) = 2.25
# probabiity of 4 crossovers exactly
dpois(4, lambda=2.25)
# probability of 4 or more crossovers
ppois(3, lambda=2.25, lower=FALSE)
# probability of odd values up to 9
sum(dpois(c(1,3,5,7,9), lambda=2.25))

# uniform distribution
# http://www.r-tutor.com/elementary-statistics/probability-distributions/continuous-uniform-distribution
# waiting for a bus can take up to 17 minutes
# probability of waiting under 12.5 minutes:
punif(12.5, min=0, max=17)

# exponential distribution
# http://www.r-tutor.com/elementary-statistics/probability-distributions/exponential-distribution
# The probability that a clerk spends between four to five minutes with a randomly selected customer:
# E(X) = 7 minutes
pexp(5, rate=1/7) - pexp(4, rate=1/7)
