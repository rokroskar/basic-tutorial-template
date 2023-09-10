# Make a histogram of delayed flights
#
# To record as a renku workflow step:
# $ renku run Rscript code/plot_hist.R "BOS" --input output/BOS.csv

library(ggplot2)
library(readr)
library(dplyr)

origin <- commandArgs(trailingOnly = TRUE)
if (length(origin)==0) {
  origin <- "BOS"
}

df_origin <- read_csv(paste0("output/", origin, ".csv")) %>%
  mutate(LATE = DEP_TIME - CRS_DEP_TIME > 0)

p <- ggplot(df_origin, aes(x = CRS_DEP_TIME, color = LATE)) + geom_histogram()

ggsave(paste0("output/", origin, ".pdf"), p)
