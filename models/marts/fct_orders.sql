select 
  CustomerName, OrderDate, OrderID 
from 
  DatabricksWarehouse.Sales.Customers C 
  inner join DatabricksWarehouse.Sales.Orders O 
  on C.CustomerID = O.CustomerID
