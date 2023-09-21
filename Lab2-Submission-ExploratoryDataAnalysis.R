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
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_YOB_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$YOB))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$YOB) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$YOB)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_YOB_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_take_quizzes_and_use_results_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results)))
]

print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_take_quizzes_and_use_results_mode)


