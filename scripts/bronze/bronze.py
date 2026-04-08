#Python code to load banner data into bronze table (not flat file to use SQL)

import json
from pyspark.sql.functions import lit, current_timestamp

with open("/Volumes/genshin_analytics/bronze/raw_files/banners.json", "r") as f:
    data = json.load(f)

# Character banners
df_char_banners = spark.createDataFrame(data["characters"])
df_char_banners = df_char_banners.withColumn("banner_type", lit("character")) \
                                 .withColumn("_source", lit("paimon_moe")) \
                                 .withColumn("_ingested_at", current_timestamp())

df_char_banners.write.mode("overwrite").saveAsTable("genshin_analytics.bronze.raw_banners")
print(f"raw_banners (character): {spark.table('genshin_analytics.bronze.raw_banners').count()} rows")
