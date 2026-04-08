-- To create bronze table for raw character data

create or replace table genshin_analytics.bronze.raw_char
as select *, 'genshin_db_api' as _source, current_timestamp() as _ingest_at
from json.`/Volumes/genshin_analytics/bronze/raw_files/characters.json`;

-- to validate the data
select count(*) from genshin_analytics.bronze.raw_char;

-- To create bronze table for raw banner revenue data

create or replace table genshin_analytics.bronze.raw_rev
as select *, 'game_i_daa' as _source, current_timestamp() as _ingest_at
from read_files(
  '/Volumes/genshin_analytics/bronze/raw_files/banner_revenue_jp.csv',
  format => 'csv',
  header => true
);
-- to validate the data
select count(*) from genshin_analytics.bronze.raw_rev;

-- To validate all tables created

select 'raw_characters' as table_name, count(*) as rows from genshin_analytics.bronze.raw_char
union all
select 'raw_banners', count(*) from genshin_analytics.bronze.raw_banners
union all
select 'raw_banner_rev', count(*) from genshin_analytics.bronze.raw_rev;
