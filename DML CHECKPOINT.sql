--create the customer_details database
CREATE DATABASE CUSTOMERDETAILSDB 
GO

--Access the new database
USE CUSTOMERDETAILSDB
GO

--Create tables for Customers
CREATE TABLE CUSTOMERS (
customer_id int PRIMARY KEY,
name varchar(20) NOT NULL,
address varchar(20) NOT NULL,
);
GO 

--create tables for Products
CREATE TABLE PRODUCTS (
product_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
Price DECIMAL(5,2) CHECK (Price >0) NOT NULL);


--create tables for orders
CREATE TABLE ORDERS (
order_id INT PRIMARY KEY,
customer_id INT FOREIGN KEY (customer_id) REFERENCES Customers (customer_id) NOT NULL,
product_id INT FOREIGN KEY (product_id) REFERENCES Products (product_id) NOT NULL,
quantity INT NOT NULL,
order_date DATE NOT NULL);


--CHECKPOINT FOR DML

--INSERT INTO PRODUCTS TABLE
INSERT INTO Products (product_id, name, price)
VALUES
(1, 'Cookies', 10),
(2, 'Candy', 5.2);

--INSERT INTO CUSTOMERS TABLE
INSERT INTO Customers (customer_id, name, address)
VALUES
(1, 'Ahmed', 'Tunisia'),
(2, 'Coulibaly', 'Senegal'),
(3, 'Hasan', 'Eygpt');

--INSERT INTO ORDERS TABLE
INSERT INTO Orders (order_id, customer_id, product_id, quantity, order_date)
VALUES
(1, 1, 2, 3, '2023-01-22'),
(2, 2, 1, 10, '2023-04-14');

--UPDATE THE ORDER TABLE
UPDATE Orders
SET quantity = 6
WHERE order_id = 2 and customer_id = 2

--DELETE FROM CUSTOMER TABLE
DELETE FROM Customers
WHERE customer_id = 3

--DELETE FROM Orders
DELETE FROM Orders;

-- DROP THE ORDER TABLE
DROP TABLE Orders;












