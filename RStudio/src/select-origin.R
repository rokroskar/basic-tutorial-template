# Filters the dataset to select an origin airport
#
# To run as a renku workflow step:
# $ renku run Rscript code/select_origin.R BOS --input data/201901_us_flights_1/2019-01-flights.csv.zip

library(readr)
library(dplyr)

origin <- commandArgs(trailingOnly = TRUE)
if (length(origin)==0) {
  origin <- "BOS"
}

df <- read_csv(unzip("data/201901_us_flights_1/2019-01-flights.csv.zip"),
               col_types = cols(.default=col_guess(), CRS_DEP_TIME="I", DEP_TIME="I"))

df_origin <- filter(df, ORIGIN == origin)

write_csv(df_origin, paste0("output/", origin, ".csv"))
