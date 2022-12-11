# Databricks notebook source
# Get rolling
renv::init(settings = list(external.libraries=.libPaths()))


# COMMAND ----------

# snapshot all, not just current notebook

renv::settings$snapshot.type("all")

# COMMAND ----------

renv::install('A3')

# COMMAND ----------

library(A3)


# COMMAND ----------

renv::snapshot(lockfile="/dbfs/SDC_Tests/renv.lock", force=TRUE)
