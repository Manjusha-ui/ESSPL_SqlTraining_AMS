select * from Orders;
truncate table orders;
--1  IDENTIFY TOP 3 CUSTOMERS BASED ON TOTAL SPENDING
 SELECT TOP 3 Customer_Name, SUM(Total_Amount) AS TotalSpent
 FROM Orders
 GROUP BY Customer_Name
 ORDER BY TotalSpent DESC
 ;

--2 IDENTIFY TOTAL CUSTOMERS WHOSE TOTAL SPENDING EXCEEDS 10000
 select * from Orders where Total_Amount > 10000; 

--3 IDENTIFY PRODUCTS THAT HAVE BEEN ORDERED MORE THYAN THREE TIMES
 select Product , count (Order_ID) from Orders group by  Product having count(Order_ID) > 3 ;

--4 CALCULATE THE TOTAL REVENUE GENERATED FOR EACH MONTH
 select sum(Total_Amount) revenue , dateNAME(month,Order_Date) [month] from Orders;

--5 FIND CUSTOMERS  WHO HAVE PLACED PRODUCTS MORE THAN ONCE FROM SAME CATEGORY BUT IN DIFFERTENT DATES
 select Customer_Name, CATEGORY,count(DISTINCT Order_Date) no_of_orders from Orders group by Customer_Name , CATEGORY having COUNT (*) > 1;

 select * from OrderSummary ;


INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (101, 'Ananya', 'Laptop', 1, '2023-06-15', 55000.00, 'Electronics');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (102, 'Bharat', 'Mobile Phone', 2, '2023-06-18', 60000.00, 'Electronics');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (103, 'Chitra', 'Office Chair', 4, '2023-07-01', 28000.00, 'Furniture');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (104, 'Dev', 'Coffee Maker', 1, '2023-07-04', 4000.00, 'Furniture');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (105, 'Esha', 'Dining Table', 1, '2023-07-10', 15000.00, 'Furniture');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (106, 'Ananya', 'Headphones', 1, '2023-06-16', 2000.00, 'Electronics');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (107, 'Bharat', 'Charger', 1, '2023-06-20', 500.00, 'Electronics');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (108, 'Harsh', 'Headphones', 1, '2023-07-16', 2000.00, 'Electronics');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (109, 'Ishita', 'Headphones', 2, '2023-07-17', 4000.00, 'Electronics');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (110, 'Jai', 'Headphones', 2, '2023-07-18', 4000.00, 'Electronics');

INSERT INTO Orders (Order_ID, Customer_Name, Product, Quantity, Order_Date, Total_Amount, CATEGORY)
VALUES (111, 'Kavita', 'Headphones', 6, '2023-07-19', 12000.00, 'Electronics');

