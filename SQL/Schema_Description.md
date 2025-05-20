# Schema Design and Relationships
The three tables proposed for the schema design are Customers, Inventory, and TransactionsInvoice tables. These tables are related in a way that supports the retail sales system:

1. Customers Table
Stores customer details (e.g., name, contact, address).

Each customer is uniquely identified by CustomerID.

2. Inventory Table
Contains product information such as stock code, description, price, and quantity.

Each product is uniquely identified by StockCode.

3. TransactionsInvoice Table
Records sales transactions (invoices).

#### **Relationship Overview
One-to-many between Customers and TransactionsInvoice:
A single customer (CustomerID) can have multiple transactions.

One-to-many between Inventory and TransactionsInvoice:
A single product (StockCode) can appear in multiple transactions.

This structure supports tracking:

What each customer has purchased.

How inventory items are selling over time.

Detailed invoice history.
