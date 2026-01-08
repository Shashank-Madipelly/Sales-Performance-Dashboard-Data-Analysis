import pandas as pd

#load data
df = pd.read_csv("data/raw/Sample - Superstore.csv",encoding="latin1")

#basic inspection
print(df.shape)
print(df.isnull().sum())

#Remove duplicates

df = df.drop_duplicates()

#convert to date columns
df['Order Date'] = pd.to_datetime(df["Order Date"])
df['Ship Date'] = pd.to_datetime(df["Ship Date"])

#remove rows with null sales
df = df[df['Sales'].notnull()]

#standardize column names
df.columns = df.columns.str.lower().str.replace(" ","_")
df.columns = df.columns.str.lower().str.replace("-","_")

#save cleaned data
df.to_csv("data/clean/superstore_clean.csv",index=False)

print("Data cleaning complete")
print(df.columns.tolist())