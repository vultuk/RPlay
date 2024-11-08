rm(list = ls())
library(dplyr)
library(ggplot2)

setwd("/Users/vultuk/Development/RPlay/getting-started-with-r/data")
compensation <- read.csv("compensation.csv")
head(compensation)
ggplot(compensation, aes(x = Root, y = Fruit, shape = Grazing, colour = Grazing)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()

ggplot(compensation, aes(x = Grazing, y = Fruit)) +
  geom_boxplot() +
  geom_point(size = 4, colour = "lightgrey", alpha = 0.5) + 
  xlab("Grazing Treatment") +
  ylab("Fruit Production") +
  theme_bw()

ggplot(compensation, aes(x = Fruit)) +
  geom_histogram(binwidth = 15) +
  facet_wrap(~Grazing)

# Export the graph at A7 paper size
ggsave("compensation.png", width = 4.13, height = 2.91, dpi = 300)

