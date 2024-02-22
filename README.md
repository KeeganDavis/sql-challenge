# sql-challenge
## Description
This repository takes in six CSV files and creates an entity relationship diagram. A SQL table schema is created for each of the six CSV files with the specified constraints and the data is imported into the tables in the SQL database. The emloyee_sql_queries file contains eight different queries to filter the tables to show various information about the employees of the company. The information to be found is included in the comments above the queries. The jupyter notebook was used to confirm the columns contained only unique values in order to determine which columns should be used as a primary key or if a composite key was required.
## Requirements
The pandas module is required for this repo. PostgreSQL and pgAdmin4 were used for the SQL portion of the repo. QuickDBD was used to create the ERD.
## Installation
Clone the repository: git@github.com:KeeganDavis/sql-challenge.git
## Usage
Run the employee_sql_schema.sql file in pgAdmin4 to create the tables and import the CSV files into the tables in the order they were created in the schema. Run each query separately in the employee_sql_queries.sql file in pgAdmin4 to filter the data to show only the information based on the constraints in the comment above the query. Select a kernel in the employeessql.ipynb file and then run all code blocks to confirm the columns only have unique values and can be used as primary keys or if a composite key is needed.
## Code Sources
-extract year from date types (https://stackoverflow.com/questions/36203613/how-to-extract-year-from-date-in-postgresql)
