# Crowdfunding_ETL

## Project Description

Our team practiced building an ETL pipeline using Python, Pandas, and used Python dictionary and RegEx methods to extract and transform the data. After transforming the data, we created four CSV files and used the CSV file data to create an ERD and a table schema. Finally, we uploaded the CSV file data into a Postgres database.


## Contributors

* Rajamani Muthuraman
* Rituparna Nandi


## Approach

Our team used provided `crowdfunding.xlsx` and `contacts.xlsx` Excel data, which contains crowdfunding campaign contribution information.


## Data Extract, Transformation and Load

* Extract and transform the data to create DataFrames
* Create new columns, dropped unneeded columns, and reorder columns
* Convert data types to allow for further manipulations
* Define Primary and Foreign Keys using sketched ERD
* Created a new Postgres database, named `crowdfunding_db`.
* Using the database schema, created the tables in the correct order to handle the foreign keys.
* Imported each CSV file into its corresponding SQL table.
* Verified that each table has the correct data by running a SELECT statement for each.


## Software / Libraries

* Jupyter Notebooks, Pandas, Numpy, PostGresSQL, QuickDBD

* Used `ETL_Mini_Project_RNandi_RMuthuraman.ipynb` for extract and transform the data.

* CSV files are loaded to `/Resources` folder - `campaign`, `contacts`, `category`, `subcategory`

* ERD diagram is: `ERD - Crowdfunding.png`

* Database schema `crowdfunding_db_schema.sql` was used to create all tables in database `crowdfunding_db`

* Screen shots for all table data are present in folder `/Database_screenshots`