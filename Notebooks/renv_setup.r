# Databricks notebook source
# verify things are pointing the right place
Sys.getenv("RENV_PATHS_CACHE")


# COMMAND ----------

# Get rolling
renv::init(settings = list(external.libraries=.libPaths()))


# COMMAND ----------

# snapshot all, not just current notebook

renv::settings$snapshot.type("all")

# COMMAND ----------

renv::install('xgboost')

# COMMAND ----------

library(xgboost)


# COMMAND ----------

# below is from Databricks docs, but don't need if using repos
#renv::snapshot(lockfile="/dbfs/SDC_Tests/renv.lock", force=TRUE)

# force sounds bad, but just means skip 'are you sure?'
renv::snapshot(force=TRUE)
