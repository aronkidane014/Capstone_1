create table Customer (
CustomerID int auto_increment primary key,
Full_Name VARCHAR(100),
Email VARCHAR(100),
Phone_Number varchar(20),
Address varchar(150)
);


create table Supplier (
SupplierID int auto_increment Primary key Not null,
Supplier_Name varchar(100) Not null,
Phone_Number varchar(20) Not null,
Email varchar(150),
Address varchar(150)
);


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

 






