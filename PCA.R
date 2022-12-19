#PCA and Dimension Reduction 
# Data - example data set
# Exploration - check for correlation
# PCA process - PCA
# plot

wine <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv", sep = ",", header = FALSE)

colnames(wine) <- c("Cvs", "Alcohol", "Malic acid", "Ash","Alklinity of ash",
                    "Magnesium", "Total phenols", "Flavanoids","NonFlavanois phenols",
                    "Proanthocyanins","Color intensity","Hue","OD280/OD315 of diluted wines", "Proline")