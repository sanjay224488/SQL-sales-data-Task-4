## 📊 SQL Data Analysis

This repository is designed as a **comprehensive guide to MySQL for data analysis**, covering everything from database setup to performance optimization. It not only introduces the fundamental SQL commands but also walks through practical scenarios that analysts encounter when working with sales data.

### 📂 Repository Contents

1. **`setup.sql`**

   * Creates the required database schema with relevant tables for sales analysis.
   * Populates the tables with initial sample data, ensuring a realistic dataset for practice.
   * Lays the foundation for subsequent analytics queries.

2. **`basic_analytics.sql`**

   * Introduces the core building blocks of SQL:

     * Data selection using `SELECT`
     * Conditional filtering with `WHERE`
     * Sorting results using `ORDER BY`
     * Grouping records with `GROUP BY`
     * Aggregate functions like `SUM`, `AVG`, `COUNT`, `MIN`, and `MAX`
   * Demonstrates how to calculate sales totals, profit margins, and customer counts.

3. **`joins.sql`**

   * Explains relationships between multiple tables.
   * Covers various join types with examples:

     * **INNER JOIN** → fetches records that have matching values in both tables.
     * **LEFT JOIN** → retrieves all records from the left table, even without a match.
     * **RIGHT JOIN** → retrieves all records from the right table, even without a match.
   * Practical use cases include linking customers to orders, products to sales, and shipments to states.

4. **`advanced_queries.sql`**

   * Moves beyond basic queries into advanced techniques:

     * **Subqueries** → nested queries used for comparisons, filtering, and calculations.
     * **Views (`CREATE VIEW`)** → reusable virtual tables that simplify complex query structures and improve readability.
   * Example: Creating a view to quickly analyze total sales and profit by product category.

5. **`indexes.sql`**

   * Focuses on performance improvement for large datasets.
   * Demonstrates the use of **`CREATE INDEX`** to speed up filtering and searching.
   * Explains scenarios where indexes are beneficial and when they may negatively impact performance (e.g., frequent updates/inserts).

### 📖 Reference Material

For better visualization, the **SQL for Data Analysis PDF** includes screenshots from MySQL Workbench showing:

* Syntax examples with proper formatting
* Sample output tables for each query
* Visual aids like charts and result highlights to connect queries with insights

Do you want me to also **add a "Getting Started" section** (steps on how to run these scripts in MySQL Workbench/CLI) so it looks like a full professional project README?
