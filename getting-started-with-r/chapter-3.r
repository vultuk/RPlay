rm(list = ls())
library(dplyr)
library(ggplot2)
library(broom)

setwd("/Users/vultuk/Development/RPlay/getting-started-with-r/data")
compensation <- read.csv("compensation.csv")

glimpse(compensation)

summary(compensation)

# Adding and removing columns
select(compensation, Fruit)
select(compensation, -Root)

# Picking specific rows
slice(compensation, 2)
slice(compensation, 2:10)
slice(compensation, c(2, 3, 10))

# Filtering data
with(compensation, Fruit > 80)
filter(compensation, Fruit > 80)
filter(compensation, Fruit > 80 | Root < 20)

loHiFruit <- filter(compensation, Fruit > 80 | Root < 20)

loHiFruit

compensation <- mutate(compensation, logFruit = log(Fruit))
head(compensation)

arrange(compensation, Fruit)

select(filter(compensation, Fruit > 80), Root)

compensation %>%
  filter(Fruit > 80) %>%
  select(Root)


compensation %>%
  group_by(Grazing) %>%
  summarise(meanFruit = mean(Fruit), sdFruit = sd(Fruit))


compensationMeanCentered <- compensation %>%
  group_by(Grazing) %>%
  mutate(Fruit_minus_mean = Fruit - mean(Fruit))

head(compensationMeanCentered)

compensation_lms <- compensation %>%
  group_by(Grazing) %>%
  do(tidy(lm(Fruit ~ Root, data = .)))

head(compensation_lms)

qplot(compensation_lms)
