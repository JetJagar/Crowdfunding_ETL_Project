-- DATA ENGINEERING

-- Remove table if exists
DROP TABLE IF EXISTS campaign CASCADE;
-- Create table
CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal NUMERIC(10, 2) NOT NULL,
    pledged NUMERIC(10, 2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Remove table if exists
DROP TABLE IF EXISTS category CASCADE;
-- Create table
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY NOT NULL,
    category_name VARCHAR(50) NOT NULL
);

-- Remove table if exists
DROP TABLE IF EXISTS subcategory CASCADE;
-- Create table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
    subcategory_name VARCHAR(50) NOT NULL
);

-- Remove table if exists
DROP TABLE IF EXISTS contacts CASCADE;
-- Create table
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Select statements
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;

