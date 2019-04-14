#!/usr/bin/env Rscript
x <- c(1, 2, 3, 4, 1, 3)
print(x)
y <- table(x)
print(y)
require(methods)
pdf("test.pdf")
plot(y)
