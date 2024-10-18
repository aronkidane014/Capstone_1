/* SELECT 
    SUM(`Order`.Total_Amount) AS Total_Revenue,
    SUM(Inventory.Price * `Order`.Quantity) AS Total_Cost,
    (SUM(`Order`.Total_Amount) - SUM(Inventory.Price * `Order`.Quantity)) AS Profit
FROM 
    `Orders` AS `Order` 
JOIN 
    Inventory ON `Order`.ItemID = Inventory.ItemID; */

SELECT 
    Supplier.Supplier_Name,
    MIN(`Order`.Total_Amount) AS Minimum_Order_Amount,
    AVG(`Order`.Total_Amount) AS Average_Order_Amount,
    MAX(`Order`.Total_Amount) AS Maximum_Order_Amount
FROM 
    Supplier
JOIN 
    Orders AS `Order` ON Supplier.SupplierID = `Order`.ItemID
WHERE 
    Supplier.Supplier_Name IN ('Jurgen Klopp', 'Arne Slot')
GROUP BY 
    Supplier.Supplier_Name;
