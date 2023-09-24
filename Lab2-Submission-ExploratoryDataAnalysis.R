
.libPaths()

lapply(.libPaths(), list.files)

renv::restore()


library(readr)
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset <- read_csv("data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.csv")
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

dim(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset, class)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$goal_oriented
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_goal_oriented_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$goal_oriented))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$goal_oriented) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$goal_oriented)))]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_goal_oriented_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_take_quizzes_and_use_results_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$take_quizzes_and_use_results)))]

print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_take_quizzes_and_use_results_mode)


summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], sd)


sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], var)

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],kurtosis, type=2)


sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],skewness, type=2)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov <- cov(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor <- cor(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_one_way_anova <- aov( take_quizzes_and_use_results ~ goal_oriented, data = X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_one_way_anova)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_two_way_anova <- aov( gender ~ goal_oriented * take_quizzes_and_use_results, data = X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_two_way_anova)

par(mfrow = c(1, 3))
for (i in 1:3) {
  barplot(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, i]), main = names(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)[i])
}

if (!is.element("Amelia", installed.packages()[, 1])) {
  install.packages("Amelia", dependencies = TRUE)
}
require("Amelia")

missmap(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset, col = c("red", "grey"), legend = TRUE)


{plot.new(); dev.off()}

if (!is.element("ggcorrplot", installed.packages()[, 1])) {
  install.packages("ggcorrplot", dependencies = TRUE)
}
require("ggcorrplot")
corrplot(cor(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)]), method = "circle")


featurePlot(x = X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], y = X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, 100], plot = "box")