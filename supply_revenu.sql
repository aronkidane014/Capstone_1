SELECT 
    Supplier.Supplier_Name,
    COUNT(`Order`.OrderID) AS Total_Orders,
    SUM(`Order`.Total_Amount) AS Total_Revenue
FROM 
    Supplier
JOIN 
    Inventory ON Supplier.SupplierID = Inventory.SupplierID
JOIN 
    Orders AS `Order` ON Inventory.ItemID = `Order`.ItemID
GROUP BY 
    Supplier.SupplierID, Supplier.Supplier_Name
ORDER BY 
    Total_Revenue DESC;
