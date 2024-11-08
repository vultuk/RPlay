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

### R Examples

```r
# Sample data for two groups
group1 <- c(5, 6, 7, 8, 9)
group2 <- c(10, 11, 12, 13, 14)

# Perform a t-test
t.test(group1, group2)
```

### Output

```shell
t.test(group1, group2)
# Output:
# t = -5.477, df = 8, p-value = 0.0004
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval: -6.925703 -3.074297
# sample estimates: mean of x mean of y
#                   7        12
```

### Explanation

- t-statistic (-5.477): Shows how far the difference between group means is from zero.
- p-value (0.0004): Since this is less than 0.05, we reject the null hypothesis and conclude there’s a significant difference between groups.
- Confidence Interval (-6.93, -3.07): Range where the true difference in means likely lies.

## Analysis of Variance (ANOVA)

### Purpose

- Compares means across multiple groups to see if at least one is different.
- Useful in testing effects of different treatments.

### Description

ANOVA tests if the means of multiple groups differ significantly. For example, if comparing plant growth under three different fertilizers, ANOVA checks if growth means differ among fertilizers.

### R Examples

```r
# Data for three treatment groups
treatment <- factor(c("A", "A", "B", "B", "C", "C"))
growth <- c(10, 12, 20, 22, 18, 19)

# Perform ANOVA
anova_model <- aov(growth ~ treatment)
summary(anova_model)
```

### Output

```shell
summary(anova_model)
# Output:
#             Df Sum Sq Mean Sq F value Pr(>F)
# treatment    2  96.67  48.33   20.83 0.0158 *
# Residuals    3   6.97   2.32
```

### Explanation

- F value (20.83): A high F value suggests a difference between the group means.
- p-value (0.0158): Since it’s less than 0.05, we conclude that at least one group mean differs significantly from the others.

## Linear Regression

### Purpose

- Models the relationship between two continuous variables.
- Useful for predicting one variable based on another.

### Description

Linear regression fits a line through data points to show if there’s a relationship between variables. For example, it could show if age is a good predictor of height.

### R Examples

```r
# Simulate data
age <- c(5, 6, 7, 8, 9)
height <- c(100, 110, 115, 120, 125)

# Perform linear regression
model <- lm(height ~ age)
summary(model)
```

### Output

```shell
summary(model)
# Output:
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)
# (Intercept)   50.000      7.071    7.07  0.00552 **
# age           10.000      1.581    6.32  0.00736 **

# R-squared:  0.96
```

### Explanation

- Intercept (50): Predicted height when age is zero.
- Slope (10): Height increases by 10 units for each additional year of age.
- R-squared (0.96): 96% of the variation in height is explained by age, indicating a strong linear relationship.
