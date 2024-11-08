rm(list = ls())

library(dplyr)
library(ggplot2)

setwd("/Users/vultuk/Development/RPlay/getting-started-with-r/data")
data <- read.csv("ladybirds_morph_colour.csv")

glimpse(data)

totals <- data %>%
  group_by(Habitat, morph_colour) %>%
  summarise(total.number = sum(number))

ggplot(totals, aes(x = Habitat, y = total.number, fill = morph_colour)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c(black = "black", red = "red"))

# We are going to do a pivot (cross (x) tabulation) table to change the data
lady.mat <- xtabs(number ~ Habitat + morph_colour, data = data)
lady.mat

# Chi-squared test - p Value shows the percentage this arose by chance
lady.chi <- chisq.test(lady.mat)
names(lady.chi)

if (lady.chi$p.value < 0.05) {
  print("Not by chance")
} else {
  print("Could be by chance")
}
