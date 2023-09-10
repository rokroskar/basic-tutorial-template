# renku run python code/select_origin.py "BOS" --input data/201901_us_flights_1/2019-01-flights.csv.zip

import pandas as pd
import sys

try:
  origin = sys.argv[1]
except IndexError:
  origin = "BOS"

df = pd.read_csv("data/201901_us_flights_1/2019-01-flights.csv.zip")
df.head()

is_origin =  df['ORIGIN'] == origin

df_origin = df[is_origin]

df_origin.head()

df_origin.to_csv('output/' + origin + '.csv')
