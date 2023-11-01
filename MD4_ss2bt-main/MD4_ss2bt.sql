create database Quanlibanhang;
use Quanlibanhang;
CREATE TABLE Customer (
    cID INT PRIMARY KEY AUTO_INCREMENT,
    CName VARCHAR(255),
    cAge INT
);
CREATE TABLE Orders (
    oID INT PRIMARY KEY AUTO_INCREMENT,
    cID INT,
    oDate DATE,
    TotalPrice DECIMAL(10 , 2 ),
    FOREIGN KEY (cID)
        REFERENCES Customer (cID)
);
CREATE TABLE Product (
    pID INT PRIMARY KEY,
    pName VARCHAR(255),
    Price DECIMAL(10, 2)
);
CREATE TABLE OrderDetail (
    odID INT PRIMARY KEY,
    oID INT,
    pID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (oID) REFERENCES Orders(oID),
    FOREIGN KEY (pID) REFERENCES Product(pID)
);