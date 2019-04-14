#!/usr/bin/env Rscript
x <- c(5, 3, 9, 1, 2, 3, 4, 1, 3)
print(x)
y <- table(x)
print(y)
#pdf("test.pdf")
plot(y)
