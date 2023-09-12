# Make a histogram of delayed flights
#
# To record as a renku workflow step:
# $ renku run Rscript src/plot-hist.R --input output/filtered.csv

library(ggplot2)
library(readr)
library(dplyr)

df_origin <- read_csv("output/filtered.csv") %>%
  mutate(LATE = DEP_TIME - CRS_DEP_TIME > 0)

p <- ggplot(df_origin, aes(x = CRS_DEP_TIME, color = LATE)) + geom_histogram()

ggsave("output/histogram.pdf", p)
