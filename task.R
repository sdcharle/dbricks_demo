# a goofy modeling task :)

library(dplyr)
library(xgboost)
library(readr)

# IRIS sure is lame

data(iris)

iris_X = iris[, 1:4]
iris_y = as.integer(iris[, 5]) - 1

# Generate R model matrix
iris.matrix = model.matrix(~ . - 1, data = iris_X)

# Generate XGBoost DMatrix and feature map based on R model matrix
iris.DMatrix = xgb.DMatrix(iris.matrix, label = iris_y)
iris.fmap = as.fmap(iris.matrix)

# Train a model
iris.xgb = xgboost(data = iris.DMatrix, 
                   missing = NULL, 
                   objective = "multi:softmax", 
                   num_class = 3, 
                   nrounds = 200)
# woah