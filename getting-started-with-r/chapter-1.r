library(diplyr)
library(ggplot2)

rm(list=ls())

# Plot a graph with x2 on the y-axis and x on the x-axis.
x <- seq(from = -10, to = 10, by = 0.5)
qplot(x, x^2, geom = "line")

# Plot a graph with the sine of x on the y-axis and x on the x-axis.
x <- seq(from = 0, to = 25, by = 0.1)
qplot(x, sin(x), geom = "line")

# Plot a histogram of 1000 random normal deviates.
qplot(rnorm(1000))


