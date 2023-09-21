##STEP 1. Install and use renv ----
.libPaths()

lapply(.libPaths(), list.files)

renv::restore()

## STEP 2: Download sample datasets ----
## STEP 3. Load the downloaded sample datasets ----
# Load the datasets
library(readr)
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset <- read_csv("data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.csv")
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

## STEP 4. Load sample datasets that are provided as part of a package ----
#There are none

## STEP 5. Preview the Loaded Datasets ----
dim(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
## STEP 6. Identify the Data Types ----
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset, class)

### STEP 7. Identify the number of instances that belong to each class. ----
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$YOB
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

### STEP 8. Calculate the mode ---
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_YOB_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$YOB))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$YOB) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$YOB)))]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_YOB_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_take_quizzes_and_use_results_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results)))]

print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_take_quizzes_and_use_results_mode)

### STEP 9. Measure the distribution of the data for each variable ----
summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

### STEP 10. Measure the standard deviation of each variable ----
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], sd)

### STEP 11. Measure the variance of each variable ----
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], var)

### STEP 12. Measure the kurtosis of each variable ----
# The Kurtosis informs you of how often outliers occur in the results.
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],kurtosis, type=2)

### STEP 13. Measure the skewness of each variable ----
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],skewness, type=2)

## STEP 14. Measure the covariance between variables ----
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov <- cov(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov)

## STEP 15. Measure the correlation between variables ----
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor <- cor(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor)

## STEP 16. Perform ANOVA on the dataset
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_one_way_anova <- aov( take_quizzes_and_use_results~ gender, data = X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_one_way_anova)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_two_way_anova <- aov(take_quizzes_and_use_results ~ gender * YOB, data = X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_two_way_anova)

### STEP 17. Create Histograms for Each Numeric Attribute ----
# Histograms help in determining whether an attribute has a Gaussian
# distribution. They can also be used to identify the presence of outliers.
# Check data types of the columns you want to plot


