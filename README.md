# Crowdfunding ETL 

## Project Overview

This project involves building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and Python dictionary methods. The goal is to extract and transform data from Excel files to create multiple DataFrames, export these DataFrames as CSV files, create an ERD (Entity-Relationship Diagram) and a table schema, and finally load the data into a Postgres database.

## Project Structure

The project is divided into the following steps:

1. **Extract and Transform Data:**
   - Create the Category DataFrame.
   - Create the Subcategory DataFrame.
   - Create the Campaign DataFrame.
   - Create the Contacts DataFrame.

2. **Create and Populate the Crowdfunding Database:**
   - Design an ERD based on the CSV files.
   - Create a table schema using the ERD.
   - Create a Postgres database and the necessary tables.
   - Load the CSV data into the tables.

## Instructions

1. **Create the Category and Subcategory DataFrames:**
   - **Category DataFrame:**
     - Extract and transform the `crowdfunding.xlsx` data to create a DataFrame with the following columns:
       - `category_id`: Sequential entries from `cat1` to `catn`, where `n` is the number of unique categories.
       - `category`: Contains the category titles.
     - Export this DataFrame as `category.csv`.
   - **Subcategory DataFrame:**
     - Extract and transform the `crowdfunding.xlsx` data to create a DataFrame with the following columns:
       - `subcategory_id`: Sequential entries from `subcat1` to `subcatn`, where `n` is the number of unique subcategories.
       - `subcategory`: Contains the subcategory titles.
     - Export this DataFrame as `subcategory.csv`.

2. **Create the Campaign DataFrame:**
   - Extract and transform the `crowdfunding.xlsx` data to create a DataFrame with the following columns:
     - `cf_id`
     - `contact_id`
     - `company_name`
     - `description`: The `blurb` column renamed.
     - `goal`: Converted to the float data type.
     - `pledged`: Converted to the float data type.
     - `outcome`
     - `backers_count`
     - `country`
     - `currency`
     - `launch_date`: The `launched_at` column, converted to datetime format.
     - `end_date`: The `deadline` column, converted to datetime format.
     - `category_id`: Matches the `category_id` column from the Category DataFrame.
     - `subcategory_id`: Matches the `subcategory_id` column from the Subcategory DataFrame.
   - Export this DataFrame as `campaign.csv`.

3. **Create the Contacts DataFrame:**
   - Using Python Dictionary Methods:
     - Import the `contacts.xlsx` file into a DataFrame.
     - Convert each row to a dictionary, then extract the values and create a new DataFrame.
     - Split the `name` column into `first_name` and `last_name`.
     - Export the DataFrame as `contacts.csv`.

4. **Create the Crowdfunding Database:**
   - **Design the ERD:**
     - Inspect the four CSV files and sketch an ERD using a tool like QuickDBD.
   - **Create the Database Schema:**
     - Use the ERD to design a table schema, specifying data types, primary keys, foreign keys, and other constraints.
     - Save the schema as `crowdfunding_db_schema.sql`.
   - **Create the Postgres Database:**
     - Create a new database named `crowdfunding_db`.
     - Create the tables using the `crowdfunding_db_schema.sql` file.
     - Verify the table creation with `SELECT` statements.
   - **Load Data into Tables:**
     - Import the CSV files into their corresponding tables.
     - Verify that the data was imported correctly with `SELECT *` statements.

## Repository Structure

- `ETL_Mini_Project_RNandi_RMuthuraman.ipynb`: The main Jupyter notebook containing all steps of the ETL process.
- `Resources/`: Folder containing the original Excel files (`crowdfunding.xlsx` and `contacts.xlsx`) and the exported CSV files:
  - `category.csv`
  - `subcategory.csv`
  - `campaign.csv`
  - `contacts.csv`
- `crowdfunding_db_schema.sql`: The SQL file containing the database schema.
- `ERD - Crowdfunding.png`: The ERD diagram.
- `/Database_screenshots/`: Folder containing screenshots of the table data from the database.

## Project Summary

In this project, we built an ETL pipeline using Python, Pandas, and Python dictionary methods. We extracted data from `crowdfunding.xlsx` and `contacts.xlsx`, transformed it into DataFrames, and exported it as CSV files. We then created an ERD, designed a database schema, and loaded the data into a Postgres database.

## Software / Libraries

- Jupyter Notebooks: For developing the ETL pipeline.
- Pandas: For data manipulation and transformation.
- NumPy: For numerical operations.
- PostgreSQL: For database management.
- QuickDBD: For designing the ERD.

## Conclusion

The project demonstrated our ability to efficiently build an ETL pipeline and manage data transformation and loading. We successfully transformed data into CSV files, designed and implemented a relational database schema, and imported data into a Postgres database while maintaining data integrity.

## Contributors

- **Rajamani Muthuraman**
- **Rituparna Nandi**
