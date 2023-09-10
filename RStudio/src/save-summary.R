# Outputs a summary of the dataframe
#
# To record as a renku workflow step:
# $ renku run Rscript code/save_summary.R "BOS" --input output/BOS.csv

library(ggplot2)
library(readr)
library(dplyr)

origin <- commandArgs(trailingOnly = TRUE)
if (length(origin)==0) {
  origin <- "BOS"
}

df_origin <- read_csv(paste0("output/", origin, ".csv"))

sink(paste0("output/", origin, ".txt"))
summary(df_origin)
sink()
