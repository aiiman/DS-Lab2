# loading libraries
library(tidyverse)
library(dplyr)
library(dlookr)

# calculate descriptive stats
descriptive_stats = describe(churn)
print(descriptive_stats)

# calculate normality stats
normality_stats = normality(churn)
print(normality_stats)

# visualise normality of numerical values
plotnorm = plot_normality(churn)
print(plotnorm)

# calc correlation coefficient
correlation_matrix = correlate(churn)
print(correlation_matrix)

# visualise correlation matrix
plot.correlate(correlation_matrix)

# finding relationship between target variable and predictor 
categ = target_by(churn, Internet.Service)
cat_num = relate(categ, Tenure)
summary(cat_num)

# visualising relationship between target variable and predictor
plot(cat_num)

# generating mosaic plot (if predictor is categorical)
install.packages('vcd')
mosaic(Internet.Service ~ Gender, data = churn)

# create static EDA report
eda_paged_report(churn)

# create dynamic EDA report
eda_web_report(churn)
