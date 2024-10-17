create table Customer (
CustomerID int auto_increment primary key,
Full_Name VARCHAR(100),
Email VARCHAR(100),
Phone_Number varchar(20),
Address varchar(150)
);

INSERT INTO Customer (Full_Name, Email, Phone_Number, Address) VALUES
('Mohamed Salah', 'salah@gmail.com', '(555) 111-2345', '15 Pyramid St, Cairo, Egypt'),
('Cody Cakpo', 'cakpo@gmail.com', '(555) 222-3456', '25 Tulip Ln, Eindhoven, Netherlands'),
('Luiz Diaz', 'diaz@gmail.com', '(555) 333-4567', '33 Sunset Blvd, Barranquilla, Colombia'),
('Darwin Nunez', 'nunez@gmail.com', '(555) 444-5678', '45 Liberty Ave, Montevideo, Uruguay'),
('Diego Jota', 'jota@gmail.com', '(555) 555-6789', '55 Riverside Dr, Porto, Portugal'),
('Alexis Mac-Alister', 'macalister@gmail.com', '(555) 666-7890', '65 Tango St, Buenos Aires, Argentina'),
('Harvey Eliot', 'eliot@gmail.com', '(555) 777-8901', '75 Hilltop Rd, London, United Kingdom'),
('Wataro Endo', 'endo@gmail.com', '(555) 888-9012', '85 Sakura St, Tokyo, Japan'),
('Curtis Jones', 'jones@gmail.com', '(555) 999-0123', '95 Palm Rd, Sydney, Australia');



create table Supplier (
SupplierID int auto_increment Primary key Not null,
Supplier_Name varchar(100) Not null,
Phone_Number varchar(20) Not null,
Email varchar(150),
Address varchar(150)
);

INSERT INTO Supplier (Supplier_Name, Phone_Number, Email, Address) VALUES
('Jurgen Klopp', '(555) 123-4567', 'klopp@gmail.com', '20 Bosphorus Blvd, Istanbul, Turkey'),
('Arne Slot', '(555) 987-6543', 'slot@gmail.com', '45 Sultan St, Ankara, Turkey');



create table Inventory (
ItemID int auto_increment primary key Not null,
Item_name varchar(100) Not null,
Color varchar(15),
Size enum ('Small', 'Medium', 'Large') Not null,
Price decimal (10,2) Not null,
Stock_Quantity int,
SupplierID int,
foreign key (SupplierID) references Supplier(SupplierID)
);

INSERT INTO Inventory (Item_name, Color, Size, Price, Stock_Quantity, SupplierID) VALUES
('Classic Black Suit', 'Black', 'Medium', 249.99, 20, 1),
('Navy Blue Business Suit', 'Navy', 'Small', 259.99, 15, 1),
('Grey Formal Suit', 'Grey', 'Large', 269.99, 30, 2),
('Olive Green Tailored Suit', 'Olive', 'Medium', 279.99, 25, 2),
('Charcoal Checkered Suit', 'Charcoal', 'Large', 299.99, 10, 1),
('Beige Linen Summer Suit', 'Beige', 'Small', 239.99, 18, 1),
('Burgundy Slim Fit Suit', 'Burgundy', 'Medium', 289.99, 12, 2),
('Light Grey Three-Piece Suit', 'Light Grey', 'Large', 309.99, 8, 2),
('Black Tuxedo Suit', 'Black', 'Medium', 349.99, 5, 1);



create table Transactions (
TransactionID int auto_increment primary key Not null,
CustomerID int,
ItemId int,
Transaction_date date,
Total_Amount decimal(10,2) Not null,
foreign key (CustomerID) references Customer(CustomerID),
foreign key (ItemID) references Inventory(ItemID)
); 


create table Employee (
EmployeeId int auto_increment primary key not null,
Full_Name varchar(100) not null,
SSN int,
Phone_number varchar(20) not null,
Title varchar(100),
Salary decimal(10,2) not null,
Hire_Date date not null,
Address varchar(150)
);

INSERT INTO Employee (Full_Name, SSN, Phone_number, Title, Salary, Hire_Date, Address) VALUES
('Alisson Becker', 123456789, '(555) 123-4567', 'Manager', 40.00, '2022-05-01', '123 Fashion St, Chicago, IL'),
('Andy Robertson', 234567890, '(555) 234-5678', 'Advertisement Specialist', 30.00, '2023-06-15', '456 Style Ave, Chicago, IL'),
('Van Dijk', 345678901, '(555) 345-6789', 'Customer Support Specialist', 28.00, '2021-03-20', '789 Suit Blvd, Chicago, IL'),
('Ibrahima Konate', 456789012, '(555) 456-7890', 'Online Tailor and Stylist', 26.00, '2023-01-10', '101 Garment St, Chicago, IL'),
('Alexander Arnold', 567890123, '(555) 567-8901', 'Digital Marketing Specialist', 35.00, '2023-09-05', '202 Stitch Ln, Chicago, IL'),
('Joe Gomez', 678901234, '(555) 678-9012', 'Customer Service Lead (Online)', 27.50, '2022-08-25', '303 Fashion Rd, Chicago, IL');

 






