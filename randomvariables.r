#! /usr/bin/env Rscript

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
