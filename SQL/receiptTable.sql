SELECT T.invoiceno AS InvoiceNo, 
      	  T.quantity, 
     	  T.invoicedate,
 I.stockcode, 
   	  I.Description,
     	  I.unitprice, 
	  C.customerID,
	  C.firstname,
	  C.lastname,
     	  C.Country
FROM TransactionsInvoice T
JOIN inventory I ON T.stockcode = I.stockcode
JOIN Customers C ON T.Customerid = C.customerid;
