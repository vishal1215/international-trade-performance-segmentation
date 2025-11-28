# r_script_segmentation.R

# This script performs country segmentation using k-means clustering
# on trade performance metrics such as trade openness, export share,
# import share, tariff rate, and FDI. It is designed for integration
# within a Power BI report.

library(dplyr)
library(ggplot2)
library(stats)

# Load dataset (assumes 'combined_trade_dataset.csv' is available in the
# 'data' folder of the project). Replace the file path below with the
# appropriate path if the dataset is stored elsewhere.
data <- read.csv("data/combined_trade_dataset.csv")

# Select relevant numeric features for clustering
features <- data %>%
  select(TradeOpenness, ExportShare, ImportShare, TariffRate, FDIScore) %>%
  na.omit()

# Scale features to ensure variables are comparable
scaled_features <- scale(features)

# Define the number of clusters (set to 4 as a sensible default). Adjust
# 'centers' as needed based on domain knowledge or clustering diagnostics.
set.seed(123)
k <- 4
kmeans_model <- kmeans(scaled_features, centers = k, nstart = 25)

# Append cluster assignment back to the original data frame
data$Cluster <- factor(kmeans_model$cluster)

# Save segmented data to a new CSV (optional) for further analysis
write.csv(data, file = "data/segmented_trade_dataset.csv", row.names = FALSE)

# Visualize clusters (optional) using Trade Openness and Export Share as axes.
# This plot can be removed or modified when embedding the script in Power BI.
cluster_plot <- ggplot(data, aes(x = TradeOpenness, y = ExportShare, colour = Cluster)) +
  geom_point(alpha = 0.7) +
  labs(title = "Country Segmentation by Trade Performance",
       x = "Trade Openness", y = "Export Share (%)") +
  theme_minimal()

# Print plot to the default graphics device
print(cluster_plot)
