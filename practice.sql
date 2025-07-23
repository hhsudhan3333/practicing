use sudhandb;
create table customerdetails(
	Name varchar(30), 
    Mobile_No int, 
    Address varchar(300), 
    City varchar(100), 
    Pincode int
 )
 
ALTER TABLE customerdetails ADD COLUMN Email VARCHAR(255);

select * from customerdetails

use sudhandb;
ALTER TABLE customerdetails MODIFY Mobile_No BIGINT;
INSERT INTO customerdetails (Name, Mobile_No, Address, City, Pincode) VALUES 
('Hari', 9876543210, '123 Anna Nagar', 'Chennai', 600001),
('Divya', 9845123456, '45 MG Road', 'Bangalore', 560001),
('Karthik', 9123456780, '78 North Street', 'Madurai', 625001),
('Priya', 9798012345, '89 Lake View', 'Coimbatore', 641001),
('Arun', 9988776655, '10 Park Avenue', 'Hyderabad', 500001);
select * from customerdetails

UPDATE customerdetails SET `Email` = 'hari@example.com' WHERE Name = 'Hari';
UPDATE customerdetails SET `Email` = 'divya@example.com' WHERE Name = 'Divya';
UPDATE customerdetails SET `Email` = 'karthik@example.com' WHERE Name = 'Karthik';
UPDATE customerdetails SET `Email` = 'priya@example.com' WHERE Name = 'Priya';
UPDATE customerdetails SET `Email` = 'arun@example.com' WHERE Name = 'Arun';

select * from customerdetails

ALTER TABLE customerdetails
ADD PRIMARY KEY (City);

CREATE TABLE orders (
    Order_ID INT PRIMARY KEY,
    City VARCHAR(100),
    Product_Name VARCHAR(100),
    Quantity INT,
    Order_Date DATE,
    FOREIGN KEY (City) REFERENCES customerdetails(City)
);

use sudhandb;

ALTER TABLE orders MODIFY Order_ID INT AUTO_INCREMENT ;

INSERT INTO orders (City, Product_Name, Quantity, Order_Date) VALUES
('Chennai', 'Modular Kitchen', 1, '2025-07-19'),
('Bangalore', 'TV Unit', 2, '2025-07-18'),
('Madurai', 'Wardrobe', 1, '2025-07-17'),
('Coimbatore', 'Crockery Unit', 3, '2025-07-16'),
('Hyderabad', 'Study Table', 1, '2025-07-15');

select * from orders

select * from customerdetails