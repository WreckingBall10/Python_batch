Create database assignment;
use assignment;

-- Create the first table: Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    RegistrationDate DATE
);

-- Insert 25 unique customers into the Customers table
INSERT INTO Customers (CustomerID, Name, Email, RegistrationDate)
VALUES
(1, 'Alice Johnson', 'alice@example.com', '2023-01-15'),
(2, 'Bob Smith', 'bob@example.com', '2023-02-20'),
(3, 'Charlie Brown', 'charlie@example.com', '2023-03-12'),
(4, 'Dana White', 'dana@example.com', '2023-04-05'),
(5, 'Eli Martinez', 'eli@example.com', '2023-05-10'),
(6, 'Fiona Davis', 'fiona@example.com', '2023-06-01'),
(7, 'George Anderson', 'george@example.com', '2023-07-18'),
(8, 'Hannah Lee', 'hannah@example.com', '2023-08-22'),
(9, 'Ian Scott', 'ian@example.com', '2023-09-15'),
(10, 'Julie Carter', 'julie@example.com', '2023-10-10'),
(11, 'Kevin Baker', 'kevin@example.com', '2023-11-03'),
(12, 'Lily Adams', 'lily@example.com', '2023-12-21'),
(13, 'Michael Turner', 'michael@example.com', '2024-01-08'),
(14, 'Nina Patel', 'nina@example.com', '2024-02-14'),
(15, 'Oscar Hughes', 'oscar@example.com', '2024-03-30'),
(16, 'Paula Reed', 'paula@example.com', '2024-04-25'),
(17, 'Quincy Hall', 'quincy@example.com', '2024-05-19'),
(18, 'Rachel Moore', 'rachel@example.com', '2024-06-22'),
(19, 'Steve King', 'steve@example.com', '2024-07-08'),
(20, 'Tina Bell', 'tina@example.com', '2024-08-15'),
(21, 'Uma Grant', 'uma@example.com', '2024-09-05'),
(22, 'Victor Lane', 'victor@example.com', '2024-10-10'),
(23, 'Wendy Ross', 'wendy@example.com', '2024-11-25'),
(24, 'Xander Cook', 'xander@example.com', '2024-12-12'),
(25, 'Yara Nelson', 'yara@example.com', '2025-01-20');

-- Create the second table: Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT, -- Foreign Key
    Product VARCHAR(50),
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert 25 unique orders into the Orders table
INSERT INTO Orders (OrderID, CustomerID, Product, Quantity, OrderDate)
VALUES
(1, 1, 'Laptop', 1, '2023-02-01'),
(2, 2, 'Smartphone', 2, '2023-03-15'),
(3, 3, 'Tablet', 1, '2023-04-10'),
(4, 4, 'Headphones', 2, '2023-05-20'),
(5, 5, 'Smartwatch', 1, '2023-06-25'),
(6, 6, 'Camera', 1, '2023-07-30'),
(7, 7, 'Monitor', 2, '2023-08-12'),
(8, 8, 'Keyboard', 1, '2023-09-05'),
(9, 9, 'Mouse', 2, '2023-10-18'),
(10, 10, 'Speaker', 1, '2023-11-03'),
(11, 11, 'Printer', 1, '2023-12-09'),
(12, 12, 'Router', 2, '2024-01-22'),
(13, 13, 'Hard Drive', 1, '2024-02-15'),
(14, 14, 'SSD', 2, '2024-03-01'),
(15, 15, 'GPU', 1, '2024-04-10'),
(16, 16, 'CPU', 1, '2024-05-25'),
(17, 17, 'RAM', 2, '2024-06-20'),
(18, 18, 'Power Supply', 1, '2024-07-15'),
(19, 19, 'Motherboard', 1, '2024-08-05'),
(20, 20, 'Case', 2, '2024-09-20'),
(21, 21, 'Cooling Fan', 1, '2024-10-12'),
(22, 22, 'Webcam', 1, '2024-11-22'),
(23, 23, 'Microphone', 2, '2024-12-14'),
(24, 24, 'Docking Station', 1, '2025-01-07'),
(25, 25, 'Power Bank', 1, '2025-02-10');


Select * from Customers;
Select * from Orders;

Select Orders.OrderID, Orders.CustomerID, Orders.Product, Orders.Quantity, OrderDate
From Orders
Inner Join Customers Where Customers.CustomerID = Orders.CustomerID;

SELECT COUNT(OrderID) AS TotalOrders
FROM Orders;

SELECT AVG(Quantity) FROM ORders;

Select SUM(Quantity) From Orders;

Select CustomerID, Count(OrderID)
from Orders
Group by CustomerID;

Select Customers.name, Orders.CustomerID, Count(Orders.OrderID)
from Orders
Inner Join Customers Where Customers.CustomerID = Orders.CustomerID
Group by Orders.CustomerID, Customers.name;

UPDATE Customers
SET Email = 'newemail@example.com'
WHERE CustomerID = 1;

DELETE FROM Orders
WHERE Product = 'Power Bank';

INSERT INTO Customers (CustomerID, Name, Email, RegistrationDate)
VALUES (26, 'Sachin Tendulkar', 'SatCrick@example.com', '2025-02-28');