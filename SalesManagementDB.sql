CREATE TABLE Sales (
SaleID INT,
Product VARCHAR(50),
Category VARCHAR(50),
Quantity INT,
Price DECIMAL(10,2),
SaleDate DATE
);

INSERT INTO Sales (SaleID, Product, Category, Quantity, Price, SaleDate) VALUES
(1, 'Laptop', 'Electronics', 5, 60000, '2025-01-10'),
(2, 'Mobile', 'Electronics', 10, 25000, '2025-01-11'),
(3, 'Tablet', 'Electronics', 7, 30000, '2025-01-12'),
(4, 'Headphones', 'Electronics', 15, 2000, '2025-01-15'),
(5, 'TV', 'Electronics', 3, 40000, '2025-01-18'),
(6, 'Sofa', 'Furniture', 2, 35000, '2025-02-01'),
(7, 'Chair', 'Furniture', 10, 1500, '2025-02-02'),
(8, 'Dining Table', 'Furniture', 1, 50000, '2025-02-03'),
(9, 'Bed', 'Furniture', 3, 45000, '2025-02-04'),
(10, 'Wardrobe', 'Furniture', 1, 60000, '2025-02-05'),
(11, 'Rice', 'Grocery', 25, 60, '2025-03-01'),
(12, 'Wheat', 'Grocery', 30, 50, '2025-03-02'),
(13, 'Sugar', 'Grocery', 20, 45, '2025-03-03'),
(14, 'Milk', 'Grocery', 40, 30, '2025-03-04'),
(15, 'Eggs', 'Grocery', 50, 6, '2025-03-05'),
(16, 'Shirt', 'Clothing', 12, 800, '2025-04-01'),
(17, 'Jeans', 'Clothing', 8, 1500, '2025-04-02'),
(18, 'Jacket', 'Clothing', 5, 3000, '2025-04-03'),
(19, 'Shoes', 'Clothing', 6, 2500, '2025-04-04'),
(20, 'Cap', 'Clothing', 20, 300, '2025-04-05'),
(21, 'Book', 'Stationery', 30, 200, '2025-05-01'),
(22, 'Pen', 'Stationery', 50, 20, '2025-05-02'),
(23, 'Notebook', 'Stationery', 25, 50, '2025-05-03'),
(24, 'Marker', 'Stationery', 15, 40, '2025-05-04'),
(25, 'Eraser', 'Stationery', 40, 10, '2025-05-05'),
(26, 'Fridge', 'Electronics', 2, 55000, '2025-06-01'),
(27, 'Washing Machine', 'Electronics', 2, 35000, '2025-06-02'),
(28, 'Microwave', 'Electronics', 4, 15000, '2025-06-03'),
(29, 'Camera', 'Electronics', 3, 45000, '2025-06-04'),
(30, 'Smartwatch', 'Electronics', 6, 12000, '2025-06-05'),
(31, 'Couch', 'Furniture', 2, 40000, '2025-07-01'),
(32, 'Bookshelf', 'Furniture', 3, 12000, '2025-07-02'),
(33, 'Stool', 'Furniture', 8, 800, '2025-07-03'),
(34, 'Mattress', 'Furniture', 4, 20000, '2025-07-04'),
(35, 'Lamp', 'Furniture', 10, 2500, '2025-07-05'),
(36, 'Onions', 'Grocery', 35, 40, '2025-08-01'),
(37, 'Tomatoes', 'Grocery', 28, 50, '2025-08-02'),
(38, 'Potatoes', 'Grocery', 32, 45, '2025-08-03'),
(39, 'Oil', 'Grocery', 10, 120, '2025-08-04'),
(40, 'Butter', 'Grocery', 15, 500, '2025-08-05'),
(41, 'T-Shirt', 'Clothing', 18, 600, '2025-09-01'),
(42, 'Kurta', 'Clothing', 7, 1200, '2025-09-02'),
(43, 'Saree', 'Clothing', 5, 2500, '2025-09-03'),
(44, 'Suit', 'Clothing', 3, 5000, '2025-09-04'),
(45, 'Belt', 'Clothing', 12, 400, '2025-09-05'),
(46, 'Scale', 'Stationery', 20, 25, '2025-10-01'),
(47, 'Highlighter', 'Stationery', 15, 60, '2025-10-02'),
(48, 'Files', 'Stationery', 18, 100, '2025-10-03'),
(49, 'Stapler', 'Stationery', 10, 150, '2025-10-04'),
(50, 'Glue', 'Stationery', 12, 50, '2025-10-05');

-- a. SELECT, WHERE, ORDER BY: Find high-value Electronics sales, sorted by newest date
SELECT
    SaleID,
    Product,
    Quantity,
    Price,
    (Quantity * Price) AS TotalRevenue,
    SaleDate
FROM Sales
WHERE Category = 'Electronics' AND (Quantity * Price) > 100000 -- Filter by Category and Revenue
ORDER BY SaleDate DESC; -- Sort by the most recent date


-- a, d. GROUP BY, SUM, AVG: Calculate Total Revenue and Average Unit Price per Category
SELECT
    Category,
    SUM(Quantity) AS TotalQuantitySold,
    SUM(Quantity * Price) AS TotalRevenue, -- SUM is an aggregate function
    AVG(Price) AS AverageUnitPrice         -- AVG is an aggregate function
FROM Sales
GROUP BY Category
ORDER BY TotalRevenue DESC;


CREATE TABLE Product_Details (
    ProductName VARCHAR(50) PRIMARY KEY,
    Supplier VARCHAR(50),
    IsHighMargin BOOLEAN
);

INSERT INTO Product_Details (ProductName, Supplier, IsHighMargin) VALUES
('Laptop', 'TechCorp', 1),
('Mobile', 'GigaComm', 1),
('Sofa', 'HomeFurnish', 0),
('Chair', 'HomeFurnish', 0),
('Rice', 'AgriSupply', 1),
('Shirt', 'FashionCo', 1),
('Notebook', 'OfficePlus', 0),
('Fridge', 'CoolingInc', 1),
('New Product A', 'FutureTech', 1), 
('Old Stock Z', 'Warehouse', 0);  

-- ** INNER JOIN: Records where there is a match in BOTH tables **
-- Shows sales only for products that also exist in the Product_Details table.
SELECT
    S.SaleID,
    S.Product,
    S.Category,
    PD.Supplier
FROM Sales AS S
INNER JOIN Product_Details AS PD ON S.Product = PD.ProductName;


-- ** LEFT JOIN: Keep ALL records from the LEFT table (Sales) **
-- Shows every sale, and includes the supplier if a match is found (NULL otherwise).
SELECT
    S.SaleID,
    S.Product,
    S.Category,
    PD.Supplier
FROM Sales AS S
LEFT JOIN Product_Details AS PD ON S.Product = PD.ProductName;

-- ** RIGHT JOIN: Keep ALL records from the RIGHT table (Product_Details) **
-- Shows all products in Product_Details, including "New Product A" and "Old Stock Z"
-- which haven't been sold yet (SaleID and Category columns will be NULL).
SELECT
    PD.ProductName,
    PD.Supplier,
    S.SaleDate,
    S.SaleID
FROM Sales AS S
RIGHT JOIN Product_Details AS PD ON S.Product = PD.ProductName
ORDER BY S.SaleID;

-- c, d. Subquery: Find all sales where the Quantity sold is above the overall average quantity
SELECT
    SaleID,
    Product,
    Category,
    Quantity
FROM Sales
WHERE Quantity > (
    -- Inner Query: Calculates the average quantity of all sales
    SELECT AVG(Quantity)
    FROM Sales
)
ORDER BY Quantity DESC;


-- e. Create View: Create a view for easy access to monthly revenue analysis
-- This view simplifies reporting by pre-calculating monthly totals.
CREATE VIEW Monthly_Revenue_Summary AS
SELECT
    DATE_FORMAT(SaleDate, '%Y-%m') AS SaleMonth, -- Changed from STRFTIME to DATE_FORMAT for MySQL compatibility
    COUNT(SaleID) AS TotalSalesCount,
    SUM(Quantity * Price) AS MonthlyRevenue
FROM Sales
GROUP BY 1
ORDER BY 1;

SELECT
    SaleMonth,
    MonthlyRevenue
FROM Monthly_Revenue_Summary
WHERE MonthlyRevenue > 500000;

-- f. Index on Category: Improves performance for filtering (WHERE) and grouping (GROUP BY) by Category.
CREATE INDEX idx_category ON Sales (Category);
-- f. Index on SaleDate: Improves performance for date range queries and sorting by date.
CREATE INDEX idx_sale_date ON Sales (SaleDate);
-- f. Composite Index: An index on multiple columns, useful for queries that filter by both columns.
-- This would be fast for a query like: WHERE Category = 'Electronics' AND SaleDate > '2025-06-01'
CREATE INDEX idx_category_date ON Sales (Category, SaleDate);

SHOW INDEX FROM Sales;
