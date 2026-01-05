# Load required libraries
library(tidyverse)

# Read data
data <- read_csv(file.choose())

# Inspect data
dim(data)
names(data)
head(data)

# Summary statistics
summary(data)

# Outcome distribution
table(data$Outcome)

# Glucose analysis
boxplot(Glucose ~ Outcome, data = data,
        xlab = "Diabetes Outcome (0 = No, 1 = Yes)",
        ylab = "Glucose Level",
        main = "Glucose Levels by Diabetes Outcome")

tapply(data$Glucose, data$Outcome, mean)

# BMI analysis
boxplot(BMI ~ Outcome, data = data,
        xlab = "Diabetes Outcome (0 = No, 1 = Yes)",
        ylab = "BMI",
        main = "BMI by Diabetes Outcome")

tapply(data$BMI, data$Outcome, mean)
