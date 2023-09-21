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



