import pandas as pd
import sys

INPUT  = sys.argv[1] if len(sys.argv) > 1 else "questions.csv"
OUTPUT_CSV  = "questions_clean.csv"
OUTPUT_JSON = "questions_clean.json"

df = pd.read_csv(INPUT)

# Strip whitespace from column names and values
df.columns = df.columns.str.strip().str.lower().str.replace(" ", "_")
df = df.apply(lambda col: col.str.strip() if col.dtype == "object" else col)

# Drop fully empty rows
df = df.dropna(how="all")

# Remove duplicate questions
df = df.drop_duplicates(subset=["question"])

# Reset row numbering
df = df.reset_index(drop=True)

df.to_csv(OUTPUT_CSV, index=False)
df.to_json(OUTPUT_JSON, orient="records", indent=2)

print(f"Done. {len(df)} questions → {OUTPUT_CSV} + {OUTPUT_JSON}")