SELECT 
    `Order`.OrderID,
    Customer.Full_Name,
    `Order`.Order_Date,
    `Order`.Total_Amount,
    `Order`.Delivery_Status
FROM 
    `Orders` AS `Order`
JOIN 
    Customer ON `Order`.CustomerID = Customer.CustomerID
ORDER BY 
    `Order`.Order_Date DESC;
