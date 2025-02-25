# Crowdfunding_ETL

## Project Overview
This project involves extracting, transforming, and loading (ETL) crowdfunding data into a PostgreSQL database. The dataset includes campaign details, categories, subcategories, and contact information, structured to facilitate analysis and reporting.

## Project Structure
```
Crowdfunding_ETL/
├── ETL_Mini_Project_<YourName>.ipynb   # Jupyter Notebook for ETL processes
├── Resources/
│      ├── crowdfunding.xlsx            # Source crowdfunding data
│      ├── contacts.xlsx                # Source contact data
│      ├── category.csv                 # Processed category data
│      ├── subcategory.csv              # Processed subcategory data
│      ├── campaign.csv                 # Processed campaign data
│      ├── contacts.csv                 # Processed contacts data
├── crowdfunding_db_schema.sql          # SQL schema for database structure
├── ERD Diagram/
│      ├── QuickDBD_ERD_Diagram.png     # Entity-Relationship Diagram
├── Screenshots_Output/                 # Screenshots of SQL queries and results
├── README.md                           # Project documentation
```

## Getting Started

### Prerequisites
Ensure you have the following installed:
- Python 3.x
- Pandas library
- Jupyter Notebook
- PostgreSQL

### Initial Setup
1. **Create a Repository**: One group member should create a GitHub repository named `Crowdfunding_ETL` and add collaborators.
2. **Clone the Repository**: Each member should clone the repository locally.
3. **Rename the Notebook**: Rename `ETL_Mini_Project_starter_code.ipynb` to `ETL_Mini_Project_<Initials>.ipynb` (e.g., `ETL_Mini_Project_NR_JS.ipynb`).
4. **Add Resources**: Ensure the `Resources/` folder contains `crowdfunding.xlsx` and `contacts.xlsx`.
5. **Commit and Push Changes**: Regularly commit and push updates to keep work synchronized.

### Collaboration Tips
- Maintain regular communication to discuss progress and blockers.
- Assign sections of the project for independent work before integrating.
- Use version control effectively to track modifications and prevent conflicts.

## ETL Instructions

### 1. Create Category and Subcategory DataFrames
#### **Category DataFrame**
- Extract unique categories from `crowdfunding.xlsx`.
- Create columns:
  - `category_id` (e.g., "cat1", "cat2")
  - `category` (category names)
- Export as `category.csv`.

#### **Subcategory DataFrame**
- Extract unique subcategories.
- Create columns:
  - `subcategory_id` (e.g., "subcat1", "subcat2")
  - `subcategory` (subcategory names)
- Export as `subcategory.csv`.

### 2. Create the Campaign DataFrame
Extract and transform data from `crowdfunding.xlsx` to construct the Campaign DataFrame with these columns:
- `cf_id`
- `contact_id`
- `company_name`
- `description` (renamed from `blurb`)
- `goal` (converted to float)
- `pledged` (converted to float)
- `outcome`
- `backers_count`
- `country`
- `currency`
- `launch_date` (renamed from `launched_at`, formatted as datetime)
- `end_date` (renamed from `deadline`, formatted as datetime)
- `category_id` (linked to category DataFrame)
- `subcategory_id` (linked to subcategory DataFrame)
- Export as `campaign.csv`.

### 3. Create the Contacts DataFrame
Select one of the following approaches:

#### **Option 1: Using Python Dictionary Methods**
- Import `contacts.xlsx` and convert rows to dictionaries.
- Extract values and split the `name` column into first and last names.
- Export as `contacts.csv`.

#### **Option 2: Using Regular Expressions**
- Import `contacts.xlsx` and apply regex to extract relevant fields.
- Clean and split the `name` column.
- Export as `contacts.csv`.

### 4. Create the Crowdfunding Database
#### **Step 1: ERD and Table Schema**
- Analyze the CSV files and create an ERD (Entity-Relationship Diagram) using QuickDBD or a similar tool.
- Define the database schema specifying data types, primary keys, and foreign keys.
- Save schema as `crowdfunding_db_schema.sql`.

#### **Step 2: Database Creation**
- Create a PostgreSQL database named `crowdfunding_db`.
- Execute the schema file to create tables in the correct order.
- Validate successful table creation with `SELECT` statements.

#### **Step 3: Data Import and Validation**
- Import each CSV file into its respective SQL table.
- Verify data integrity using `SELECT` queries.

---
By following these steps, you will have a structured crowdfunding database ready for querying and analysis.

