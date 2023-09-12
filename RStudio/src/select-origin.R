# Filters the dataset to select an origin airport
#
# To run as a renku workflow step:
# $ renku run Rscript src/select-origin.R --input data/2019-01_us_fli_1.0/2019-01-flights.csv.zip

library(readr)
library(dplyr)

origin <- "BOS"

df <- read_csv(unzip("data/2019-01_us_fli_1.0/2019-01-flights.csv.zip", exdir="/tmp"),
               col_types = cols(.default=col_guess(), CRS_DEP_TIME="I", DEP_TIME="I"))

df_origin <- filter(df, ORIGIN == origin)

write_csv(df_origin, "output/filtered.csv")
