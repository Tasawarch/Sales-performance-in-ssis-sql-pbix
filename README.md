**Sales Performance Analysis Using SSIS ETL Pipeline & Power BI Dashboard**
This project demonstrates a complete ETL + Analytics workflow built using
SQL Server Integration Services (SSIS), SQL Server, and Power BI to clean, transform, analyze, and visualize sales data.

**The goal of the project is to convert raw, unstructured CSV data into clean and meaningful business insights.**
🔧 **Tech Stack**

SSIS (SQL Server Integration Services)

SQL Server

Power BI

Visual Studio 2022

CSV (Flat File Source)

🚀 **ETL Pipeline Overview (SSIS)**
1️⃣** Data Extraction**

Added a Data Flow Task in SSIS.

Imported raw CSV file using Flat File Source.

2️⃣** Data Cleaning & Transformation**

Performed multiple transformations to prepare clean and trusted data:

✔ Fixed Incorrect Data Formats

Corrected wrong and inconsistent data types.

✔ Removed Empty / Null Cells

Used Conditional Split to filter out rows with empty fields.

✔ Converted Negative Quantity to Positive

Used Derived Column Transformation to ensure all quantity values are positive.

✔ Trimmed Extra Spaces

Cleaned text columns using string trimming functions.

✔ Removed Duplicate Rows

Used Sort Transformation with “Remove rows with duplicates”.

3️⃣ **Loading Clean Data into SQL Server**

Created a SQL database named sales_performance.

Designed a clean fact table for storing transformed sales data.

Loaded final processed data using OLE DB Destination.

🧮** Data Analysis Using SQL**

Executed business analysis queries to extract insights:

Questions Answered:

Total sales per month

Top 10 products by highest sales

Sales distribution by region

Top 10 customers by revenue

Total quantity sold & revenue by category

Average unit price per product

Number of orders placed each month

These SQL-based insights were further visualized in Power BI.

📊** Power BI Dashboard**

Built a dynamic and interactive dashboard by connecting Power BI directly to SQL Server via DirectQuery.

**Key visuals include:**
Sales Trend (Monthly)

Top Products by Revenue

Regional Sales Map / Bar Chart

Customer Revenue Ranking

Category-wise Quantity & Revenue

Average Unit Price by Product

Orders per Month

The dashboard enables deeper understanding of overall business performance and helps in decision-making.

📂** Repository Includes**

SSIS Project Files (.dtsx, .sln)

SQL Queries for Analysis

SQL Table Creation Script

Sample Dataset (CSV)

Power BI Dashboard (.pbix)

Documentation + ETL workflow explanation

⭐** Outcome**

This project represents the complete lifecycle of a modern data analytics workflow:

Raw Data → ETL Pipeline → Clean Database → SQL Insights → Power BI Dashboard

Perfect for learning and demonstrating:

✔ Data Cleaning
✔ ETL Development
✔ SQL Analysis
✔ Dashboard Building
✔ Real-World Analytics
