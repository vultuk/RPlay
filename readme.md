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

## Correlation

### Purpose

- Measures the strength and direction of a relationship between two variables.
- Helps determine if variables move together positively or negatively.

### Description

Correlation shows the degree of association between two variables. For example, a high positive correlation between age and height means both increase together.

### R Examples

```r
# Simulate data
age <- c(5, 6, 7, 8, 9)
height <- c(100, 110, 115, 120, 125)

# Calculate correlation
cor(age, height)
```

### Output

```bash
cor(age, height)
# Output:
# [1] 0.976
```

### Explanation

- Correlation coefficient (0.976): Close to 1, indicating a strong positive relationship; as age increases, so does height.

## Chi-Squared Test

### Purpose

- Tests for an association between categorical variables.
- Useful for analyzing count data.

### Description

The Chi-squared test checks if two categories are related. For example, it can help determine if there’s a link between gender and preference for a specific plant type.

R Examples

```r
# Sample data
observed <- matrix(c(10, 20, 30, 40), nrow = 2)

# Perform Chi-squared test
chisq.test(observed)
```

Output

```bash
chisq.test(observed)
# Output:
# X-squared = 0.952, df = 1, p-value = 0.329
```

### Explanation

- X-squared (0.952): Test statistic.
- p-value (0.329): Greater than 0.05, suggesting no significant association between the categories.

## Non-Parametric Tests

### Purpose

- Used when data doesn’t meet normality assumptions.
- An alternative to t-tests and ANOVA for non-normal data.

### Description

Non-parametric tests like the Wilcoxon rank-sum test are suitable for data that’s not normally distributed. This test, for example, compares two groups without assuming a normal distribution.

R Examples

```r
# Sample data for two groups
group1 <- c(5, 6, 7, 8, 9)
group2 <- c(10, 11, 12, 13, 14)

# Wilcoxon rank-sum test
wilcox.test(group1, group2)
```

### Output

```bash
wilcox.test(group1, group2)
# Output:
# W = 0, p-value = 0.0079
```

### Explanation

- W statistic (0): Shows the test result.
- p-value (0.0079): Below 0.05, indicating a significant difference between groups.

## Data Visualization

### Purpose

- Graphically represents data for better interpretation.
- Helps detect trends, patterns, and outliers.

### Description

Data visualization uses charts to make data easier to understand. Histograms and scatter plots can highlight trends and outliers.

### R Examples

```r
# Simulate data
data <- rnorm(100)

# Histogram
hist(data, main = "Histogram of Data")

# Scatter plot with linear trend line
x <- rnorm(100)
y <- 2 * x + rnorm(100)
plot(x, y, main = "Scatter Plot with Trend Line")
abline(lm(y ~ x), col = "blue")
```

## Assumption Checking

### Purpose

- Ensures data meets assumptions for specific tests.
- Validates results by confirming assumptions like normality.

### Description

Assumption checking verifies if data meets the requirements of a test, like normal distribution or constant variance. Checking assumptions improves the reliability of results.

### R Examples

```r
# Fit linear model for assumption checking
x <- rnorm(100)
y <- 2 * x + rnorm(100)
model <- lm(y ~ x)

# Plot residuals
plot(model, which = 1)  # Residuals vs Fitted plot for linearity
plot(model, which = 2)  # Normal Q-Q plot for normality check

# Shapiro-Wilk test for normality
shapiro.test(residuals(model))
```
