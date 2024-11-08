rm(list=ls())
library(dplyr)
library(ggplot2)
library(tidyr)
library(lubridate)

setwd("/Users/vultuk/Development/RPlay/getting-started-with-r/data")

compensation <- read.csv("compensation.csv")

# Check the data
names(compensation) # Column names
dim(compensation) # Number of rows and columns
str(compensation) # Structure of the data
summary(compensation) # Summary of the data
head(compensation) # First few rows of the data

# Data viewing from diplyr
glimpse(compensation)
as_tibble(compensation)

nastyFormat <- filter(read.csv("nasty format.csv"), Bottle != "")

glimpse(nastyFormat)
as_tibble(nastyFormat)

# Move the columns to rows
tidyData <- gather(nastyFormat, Date, Abundance, 4:11)

# Remove X from the date values
tidyData <- mutate(tidyData, Date = substr(Date, 2, 20))
# Make the date column unique
unique(tidyData$Date)
tidyData <- mutate(tidyData, Date = dmy(Date))

glimpse(tidyData)

# Plot the data
ggplot(data = tidyData, aes(x=Date, y=Abundance)) +
  geom_point() + 
  facet_wrap(~Bottle)

