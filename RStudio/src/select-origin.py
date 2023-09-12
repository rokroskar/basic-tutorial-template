# Filters the dataset to select an origin airport
#
# To run as a renku workflow step:
# renku run python src/select-origin.py --name filter --input data/2019-01_us_fli_1.0/2019-01-flights.csv.zip

import pandas as pd
import sys

origin = "BOS"

df = pd.read_csv("data/2019-01_us_fli_1.0/2019-01-flights.csv.zip")
df.head()

is_origin =  df['ORIGIN'] == origin

df_origin = df[is_origin]

df_origin.head()

df_origin.to_csv('output/filtered.csv')
