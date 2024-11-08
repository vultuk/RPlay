## Descriptive Statistics

### Purpose

- Summarizes data to understand averages, medians, and spread.
- Provides a quick snapshot of data patterns.

### Description

Descriptive statistics summarize your data. For example, if you have a list of scores, you can find the mean (average), median (middle score), and standard deviation (how spread out the scores are).

### R Examples

```r
data <- c(5, 10, 15, 20, 25)

# Calculate mean (average)
mean(data)

# Calculate median (middle value)
median(data)

# Calculate standard deviation (spread)
sd(data)

# Summarize the data
summary(data)
```

### Output

```shell
mean(data)         # 15
median(data)       # 15
sd(data)           # 7.905694
summary(data)
# Min. 1st Qu.  Median  Mean   3rd Qu.  Max.
# 5.0    10.0    15.0   15.0   20.0     25.0
```

### Explanation

- Mean: The average value of the dataset, which is 15.
- Median: The middle value, also 15 in this case, showing the data is symmetrically spread.
- Standard Deviation (sd): A measure of how spread out the values are; here, it’s around 7.91.
- Summary
  - Minimum: The smallest value in the dataset.
  - 1st Quartile (25th Percentile): The value below which 25% of the data falls; it marks the lower quarter of the dataset.
  - Median: The middle value of the dataset, where 50% of values are below and 50% are above.
  - Mean: The average of all values, calculated by summing all values and dividing by the count.
  - 3rd Quartile (75th Percentile): The value below which 75% of the data falls; it marks the upper quarter of the dataset.
  - Maximum: The largest value in the dataset.

## t-Tests

### Purpose

- Compares the means of two groups to see if they differ significantly.
- Helps determine if observed differences are due to chance.

### Description

A t-test checks if the averages of two groups are significantly different. For example, comparing two groups with different treatments to see if there’s a meaningful difference in results.
