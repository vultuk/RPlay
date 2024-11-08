rm(list = ls())

library(dplyr)
library(ggplot2)
library(ggfortify)

setwd("/Users/vultuk/Development/RPlay/getting-started-with-r/data")
data <- read.csv("plant.growth.rate.csv")

glimpse(data)

ggplot(data, aes(x=soil.moisture.content, y=plant.growth.rate)) +
  geom_point() +
  ylab("Growth Rate (mm Per Week)") +
  theme_bw()

model.pgr = lm(plant.growth.rate ~ soil.moisture.content, data = data)

autoplot(model.pgr, smooth.colour = NA)

anova(model.pgr)
summary(model.pgr)

ggplot(data, aes(x=soil.moisture.content, y=plant.growth.rate)) +
  geom_point() +
  geom_smooth(method = "lm") +
  ylab("Growth Rate (mm Per Week)") +
  theme_bw()
