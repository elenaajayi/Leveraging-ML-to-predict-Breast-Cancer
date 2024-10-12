
#Load Libraries
library(randomForest)

# Define the formula for the Random Forest model
formula_rf <- as.formula("diagnosis ~ radius_ratio + perimeter_area_ratio + concavity_ratio + `texture_worst_mean_ratio` + `texture_mean_se_ratio`")

# Train a Random Forest model
random_forest_model <- randomForest(formula_rf, data = train_data, ntree = 500, importance = TRUE)

# Print the summary of the model
print(random_forest_model)

# Make predictions on the test data
predictions_rf <- predict(random_forest_model, newdata = test_data)

# Get predicted probabilities
probabilities_rf <- predict(random_forest_model, newdata = test_data, type = "response")

# Confusion Matrix
conf_matrix_rf <- table(test_data$diagnosis, predictions_rf)

# Accuracy
accuracy_rf <- sum(diag(conf_matrix_rf)) / sum(conf_matrix_rf)

# Precision
precision_rf <- conf_matrix_rf["M", "M"] / sum(conf_matrix_rf["M", ])

# Recall
recall_rf <- conf_matrix_rf["M", "M"] / sum(conf_matrix_rf[, "M"])

# F1-Score
f1_score_rf <- 2 * (precision_rf * recall_rf) / (precision_rf + recall_rf)

# Print the results for Random Forest
cat("Random Forest - Confusion Matrix:\n", conf_matrix_rf, "\n")
cat("Random Forest - Accuracy: ", accuracy_rf, "\n")
cat("Random Forest - Precision: ", precision_rf, "\n")
cat("Random Forest - Recall: ", recall_rf, "\n")
cat("Random Forest - F1-Score: ", f1_score_rf, "\n")




# Now, let's perform a paired t-test between Decision Tree and Random Forest
# Assuming you have vectors of metrics for Decision Tree (from the previous example) and Random Forest
metrics_model_DT <- c(accuracy_ctree, precision_ctree, recall_ctree, f1_score_ctree)
metrics_model_RF <- c(accuracy_rf, precision_rf, recall_rf, f1_score_rf)

# Perform paired t-test
t_test_result_rf <- t.test(metrics_model_DT, metrics_model_RF, paired = TRUE)

# Print the t-test result
print(t_test_result_rf)

