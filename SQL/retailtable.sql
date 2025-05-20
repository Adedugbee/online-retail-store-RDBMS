BEGIN;

-- The DROP statements were added to ensure prevent errors if the script was mistakenly ran more than once
DROP TABLE IF EXISTS public.Customers CASCADE;
DROP TABLE IF EXISTS public.Inventory CASCADE;
DROP TABLE IF EXISTS public.TransactionsInvoice CASCADE;
--
CREATE TABLE public.Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(20)
);

-- Inventory Table
CREATE TABLE public.Inventory (
    StockCode INT PRIMARY KEY,
    Description VARCHAR(50) NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    QuantityAvailable INT NOT NULL,
    Category VARCHAR(50)
);

-- Transactions (Invoices) Table
CREATE TABLE public.TransactionsInvoice (
    InvoiceNo INT PRIMARY KEY,
    StockCode INT,
    Quantity INT NOT NULL,
    InvoiceDate DATE NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    CustomerID INT,
    Country VARCHAR(50) NOT NULL,
    FOREIGN KEY (StockCode) REFERENCES Inventory(StockCode),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
END;
