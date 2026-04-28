import pandas as pd
from sqlalchemy import create_engine

# Neon Connection String
connection_string = "postgresql://neondb_owner:npg_Q7gTrCG9VXfc@ep-wandering-mud-algrmjj2-pooler.c-3.eu-central-1.aws.neon.tech/neondb?sslmode=require"

# CSV laden
df = pd.read_csv("ai4i2020.csv")

# Spaltennamen anschauen
print("Spalten:", df.columns.tolist())
print("Zeilen:", len(df))
print(df.head())

# Verbindung erstellen
engine = create_engine(connection_string)

# Tabelle erstellen und Daten laden
df.to_sql(
    name="raw_sensor_data",
    schema="public",
    con=engine,
    if_exists="replace",
    index=False
)

print("Fertig! Daten wurden nach Neon geladen.")