# Project-2: Crowdfunding ETL

## Project Structure
```
Crowdfunding_ETL/
├── ETL_Mini_Project_RPuthalpet_CMini.ipynb  # Jupyter Notebook for ETL processes
├── Resources/
│      └──crowdfunding.xlsx                   # Excel file with crowdfunding data
│      └── contacts.xlsx                      # Excel file with contact data
│      └── category.csv                       # Output CSV for categories
│      └── subcategory.csv                    # Output CSV for subcategories
│      └── campaign.csv                       # Output CSV for campaigns
│      └── contacts.csv                       # Output CSV for contacts                    
├── crowdfunding_db_schema.sql                # SQL file for database schema
├── ERD Diagram                
│      └──QuickDBD_ERD Diagram.png            # ERD diagram
├── Screenshots_Output(folder)                # Screenshots of SQL select Queries                
├── README.md                                 # This README file
```
## Getting Started

### Prerequisites
- Python 3.x
- Pandas library
- Jupyter Notebook
- Postgres

### Initial Setup
1. **Create a Repository**: One group member should create a new repository named `Crowdfunding_ETL` and add the partner as a collaborator.
2. **Clone Repository**: Clone the repository to your local machine.
3. **Rename Notebook**: Rename the `ETL_Mini_Project_starter_code.ipynb` file with the format `ETL_Mini_Project_NRomanoff_JSmith.ipynb` (using initials of both members).
4. **Add Resources**: Include the Resources folder with `crowdfunding.xlsx` and `contacts.xlsx` files in the repository.
5. **Push Changes**: Push the changes to GitHub, and have your partner pull the latest version.

### Collaboration Tips
- Communicate regularly with your partner to discuss progress and challenges.
- Consider breaking up the project into sections for independent work, then combine them into the final notebook.

## Instructions

### 1. Create Category and Subcategory DataFrames
- **Category DataFrame**:
  - Extract unique categories from `crowdfunding.xlsx`.
  - Create columns: `category_id` (e.g., "cat1", "cat2") and `category` (category titles).
  - Export to `category.csv`.

- **Subcategory DataFrame**:
  - Extract unique subcategories similarly.
  - Create columns: `subcategory_id` (e.g., "subcat1", "subcat2") and `subcategory` (subcategory titles).
  - Export to `subcategory.csv`.

### 2. Create the Campaign DataFrame
- Extract and transform data from `crowdfunding.xlsx` to create a Campaign DataFrame with the following columns:
  - `cf_id`
  - `contact_id`
  - `company_name`
  - `description` (renamed from `blurb`)
  - `goal` (as float)
  - `pledged` (as float)
  - `outcome`
  - `backers_count`
  - `country`
  - `currency`
  - `launch_date` (renamed from `launched_at` with datetime format)
  - `end_date` (renamed from `deadline` with datetime format)
  - `category_id` (linked to category DataFrame)
  - `subcategory_id` (linked to subcategory DataFrame)
- Export to `campaign.csv`.

### 3. Create the Contacts DataFrame
Choose one of the following methods:

- **Option 1: Python Dictionary Methods**
  - Import `contacts.xlsx` and convert rows to dictionaries.
  - Extract values and split the `name` column into first and last names.
  - Export to `contacts.csv`.

- **Option 2: Regular Expressions**
  - Import `contacts.xlsx` and use regex to extract relevant fields.
  - Clean and split the `name` column.
  - Export to `contacts.csv`.

### 4. Create the Crowdfunding Database
1. **ERD and Table Schema**:
   - Inspect the four CSV files and create an ERD using a tool like QuickDBD.
   - Develop a table schema for each CSV, specifying data types, primary keys, and foreign keys.
   - Save the schema as `crowdfunding_db_schema.sql`.

2. **Database Creation**:
   - Create a Postgres database named `crowdfunding_db`.
   - Use the schema to create tables in the correct order.
   - Verify table creation with SELECT statements.

3. **Data Import**:
   - Import each CSV file into the corresponding SQL table.
   - Confirm data integrity with SELECT statements for each table.


