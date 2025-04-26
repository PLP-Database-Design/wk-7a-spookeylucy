-- Creating a 1NF version of ProductDetail
SELECT 
    OrderID,
    CustomerName,
    Product
FROM 
    (
    VALUES 
        (101, 'John Doe', 'Laptop'),
        (101, 'John Doe', 'Mouse'),
        (102, 'Jane Smith', 'Tablet'),
        (102, 'Jane Smith', 'Keyboard'),
        (102, 'Jane Smith', 'Mouse'),
        (103, 'Emily Clark', 'Phone')
    ) AS ProductDetail(OrderID, CustomerName, Product);






-- Table for customers (no partial dependency)
SELECT DISTINCT
    OrderID,
    CustomerName
FROM 
    OrderDetails;


-- Table for the products ordered
SELECT 
    OrderID,
    Product,
    Quantity
FROM 
    OrderDetails;
