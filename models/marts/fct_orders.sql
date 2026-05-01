select 
  CustomerName, OrderDate, OrderID 
from 
  `samples`.`bakehouse`.`sales_customers` C 
  inner join `samples`.`bakehouse`.`sales_orders` O 
  on C.CustomerID = O.CustomerID
