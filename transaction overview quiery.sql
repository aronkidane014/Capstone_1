SELECT 
    Transaction.TransactionID,
    Customer.Full_Name,
    Transaction.Transaction_Date,
    Transaction.Total_Amount
FROM 
    Transactions AS Transaction
JOIN 
    Customer ON Transaction.CustomerID = Customer.CustomerID
ORDER BY 
    Transaction.Transaction_Date;
