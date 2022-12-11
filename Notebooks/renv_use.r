# Databricks notebook source
library(A3)
# should flop in new setting

# COMMAND ----------

# if rerun on your cluster will get error.
# additionally if you are using a repo - that is persisted, thus you do not need to init.

#renv::init(settings = list(external.libraries=.libPaths()))

.libPaths(c(.libPaths()[2], .libPaths()))
renv::restore(lockfile="/dbfs/SDC_Tests/renv.lock", exclude=c("Rserve", "SparkR"))

# COMMAND ----------

library(A3)
# should be good.

# COMMAND ----------

# btw what does that file look like
# actually just use regular snapshot if you are using a repo!
# force avoids 'Yes' step
renv::snapshot(force=TRUE)

