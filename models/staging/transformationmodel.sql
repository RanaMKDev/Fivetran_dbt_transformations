{{ config(materialized='view') }}
    
SELECT
    C.CustomerName,
    YEAR(O.OrderDate) AS OrderYear,
    MONTH(O.OrderDate) AS OrderMonth,
    COUNT(O.OrderID) AS OrderCount
FROM `rmkdatabrickswksp`.`sales`.`customers` C
INNER JOIN `rmkdatabrickswksp`.`sales`.`orders` O 
    ON C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerName,
    YEAR(O.OrderDate),
    MONTH(O.OrderDate)
ORDER BY 
    C.CustomerName,
    OrderYear,
    OrderMonth
