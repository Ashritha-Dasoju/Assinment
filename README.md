# Assinment
Sure! Here's the plain, professional version of your **README.md** that you can copy and paste directly:

---

# Student Project: Data Analytics Portfolio

This repository showcases various data analytics tasks using different tools — SQL, Tableau, and Excel — based on real-world datasets. Each section covers specific tasks to clean, analyze, and visualize data for business insights.

---

## Section 1: SQL Analysis (SQLite - Chinook Database)

**Tools Used:** SQLite (SQLiteOnline)

### Tasks Completed:

1. **Top 5 Customers by Purchase Amount**  
   Queried the top 5 customers with the highest total purchases using `SUM` and `ORDER BY`.

2. **Most Popular Genre by Total Tracks Sold**  
   Identified the genre with the most tracks sold using `JOIN` and `GROUP BY`.

3. **Managers and Their Subordinates**  
   Retrieved employee hierarchy by self-joining the `Employee` table.

4. **Most Sold Album per Artist**  
   Used window functions to get the top-selling album for each artist.

5. **Monthly Sales Trends for 2013**  
   Extracted month-wise sales for the year 2013 using `strftime()`.

**Submission Includes:**
- `.sql` file with all 5 queries.
- Output screenshots for each query result.

---

## Section 2: Tableau Dashboard - Airbnb NYC Dataset

**Tools Used:** Tableau Public  
**Dataset:** AB_NYC_2019.csv

### Dashboard Features:

1. **Listings Count by Neighborhood**  
   Bar chart showing the number of listings grouped by neighborhood.

2. **Price Distribution per Room Type**  
   Box plot or histogram visualizing price spread across different room types.

3. **Availability Trends**  
   Line chart displaying availability trends over time.

4. **Interactive Filters**  
   Filters for Room Type and Neighborhood to allow dynamic analysis.

**Final Output:**
Dashboard is published on Tableau Public.

**Dashboard Link:** (Insert your Tableau Public link here)

---

## Section 3: Excel - Online Retail Dataset (UCI)

**Tools Used:** Microsoft Excel  
**Dataset:** Online Retail (UCI)

### Tasks Completed:

1. **Data Cleaning**
   - Removed rows with missing values in important columns (`CustomerID`, `InvoiceNo`, `Description`)
   - Removed duplicate records

2. **Pivot Table: Total Sales by Country and Month**
   - Created a new column `Sales` using `=Quantity * UnitPrice`
   - Extracted month from `InvoiceDate` using `=TEXT(InvoiceDate, "yyyy-mm")`
   - Created a pivot table showing total sales by Country and Month

3. **Calculated Metrics**
   - **Average Order Value:** `Total Sales / Number of Orders`
   - **Country % Contribution:** `Country Sales / Total Sales`

4. **Conditional Formatting**
   - Highlighted the top 5 countries by revenue

5. **Monthly Revenue Trend Chart**
   - Created a line chart showing monthly sales trends across the dataset

**Submission Includes:**
- Excel file with cleaned data, pivot table, calculations, formatting, and charts

---

## Folder Structure

```
.
├── SQL/
│   ├── chinook_queries.sql
│   └── screenshots/
├── Tableau/
│   └── Airbnb_NYC_Dashboard.twbx
├── Excel/
│   └── OnlineRetail_Cleaned.xlsx
└── README.md
