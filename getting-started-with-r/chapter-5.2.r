rm(list = ls())

library(dplyr)
library(ggplot2)
library(plotrix)

setwd("/Users/vultuk/Development/RPlay/getting-started-with-r/data")
data <- read.csv("ozone.csv")

glimpse(data)

ggplot(data, aes(x = Ozone)) +
  geom_histogram(binwidth = 10) +
  facet_wrap(~ Garden.location, ncol = 1) +
  theme_bw()

groupedMeansAndError = data %>%
  group_by(Garden.location) %>%
  summarise(meanOzone = mean(Ozone), seOzone = std.error(Ozone))

head(groupedMeansAndError)

t.test(Ozone ~ Garden.location, data = data)
