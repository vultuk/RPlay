# Clear the Environment
rm(list=ls())
# Set our maximum digits to 4
options(digits = 4)

# Load required Libraries
library(dplyr)

# Load the data
setwd("./data")
data <- read.table("data1.txt", header = TRUE)

# Add a 'Group' column to the data showing if the year is less than 2005
data$Group <- ifelse(data$Year < 2005, "2001-2004", "2005-2011")

# Summarize the means by group
groupedMeans <- data %>%
  group_by(Group) %>%
  summarise(
    meanTarsus = format(mean(Tarsus, na.rm = TRUE), nsmall = 4),
    meanBill = format(mean(Bill, na.rm = TRUE), nsmall = 4),
    meanWing = format(mean(Wing, na.rm = TRUE), nsmall = 4),
    meanMass = format(mean(Mass, na.rm = TRUE), nsmall = 4)
  )

# Print the results
print(groupedMeans)
