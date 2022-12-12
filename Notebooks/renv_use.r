# Databricks notebook source
library(xgboost)
# should flop in new setting

# COMMAND ----------

# if rerun multiple times within a repo, will get an error.
# additionally if you are using a repo - that is persisted, thus you do not need to init.

#renv::init(settings = list(external.libraries=.libPaths()))

.libPaths(c(.libPaths()[2], .libPaths()))
renv::restore(exclude=c("Rserve", "SparkR"))

# COMMAND ----------

library(xgboost)
# should be good.
