# Wish Banner Introspective: A Genshin Impact Analytic

Hello, welcome to this project's repository!

As a huge Genshin Impact fan and a Data Engineer by profession, this is a little passion project of mine that combines both of my interests.

People who are familiar with gacha games are widely aware of how different characters play a big role into the revenue of the company. This is my foray into understanding how analysing character revenue would have a potential impact.

---

## Data Architecture
This project will be using a Medallion Architecture (Bronze -> Silver -> Gold) on Databricks with Delta Lake and transformation logic using dbt.

1. **Bronze Layer**: Stores raw data as-is from the source systems. Data is ingested from websites and stored on Databricks.
2. **Silver Layer**: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: Houses business-ready data modeled into a star schema required for reporting and analytics.

![Data Architecture](docs/Data_Architecture.svg)

## Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective
Build a data warehouse with Databricks, perform transformations using dbt; enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources**: Import data from APIs of websites dedicated to Genshin character information.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine data from multiple into a single, user-friendly data model designed for analytical queries.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

---

### BI: Analytics & Reporting (Data Analysis)
Develop SQL-based analytics to deliver detailed insights into:
- **Banner Revenue**
- **Highest & Lowest Earners**
- **Character Popularity**
& other insights that will be identified along the way.

---

### Limitations: 
The parent company of the game does not publish any official revenue data. All the data used in this project is from third-party websites.
