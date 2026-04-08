--To create database, schema and tables for the data

create catalog if not exists genshin_analytics;

use catalog genshin_analytics;

create schema if not exists bronze;
create schema if not exists silver;
create schema if not exists gold;

USE CATALOG genshin_analytics;
show schemas;

USE CATALOG genshin_analytics;
USE SCHEMA bronze;

CREATE VOLUME IF NOT EXISTS raw_files;
