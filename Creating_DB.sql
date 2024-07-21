CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

DROP TABLE IF EXISTS sales_data;

CREATE TABLE sales_data (
    OrderNumber VARCHAR(255),
    SalesChannel VARCHAR(50),
    WarehouseCode VARCHAR(50),
    ProcuredDate DATE,
    OrderDate DATE,
    ShipDate DATE,
    DeliveryDate DATE,
    CurrencyCode VARCHAR(10),
    SalesTeamID INT,
    CustomerID INT,
    StoreID INT,
    ProductID INT,
    OrderQuantity INT,
    DiscountApplied FLOAT,
    UnitPrice FLOAT,
    UnitCost FLOAT
);




