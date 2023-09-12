# Outputs a summary of the dataframe
#
# To record as a renku workflow step:
# $ renku run Rscript src/save-summary.R --name summarize --input output/filtered.csv

library(ggplot2)
library(readr)
library(dplyr)

df_origin <- read_csv("output/filtered.csv")

sink("output/summary.txt")
summary(df_origin)
sink()
