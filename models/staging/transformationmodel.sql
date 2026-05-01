{{ config(materialized='view') }}
    
SELECT
    C.CustomerName,
    DATEPART(YEAR, O.OrderDate) AS OrderYear,
    DATEPART(MONTH, O.OrderDate) AS OrderMonth,
    COUNT(O.OrderID) AS OrderCount
FROM DatabricksWarehouse.Sales.Customers C
INNER JOIN DatabricksWarehouse.Sales.Orders O 
    ON C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerName,
    DATEPART(YEAR, O.OrderDate),
    DATEPART(MONTH, O.OrderDate)
ORDER BY 
    C.CustomerName,
    OrderYear,
    OrderMonth;

