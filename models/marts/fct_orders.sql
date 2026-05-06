select 
  CustomerName, OrderDate, OrderID 
from 
  `rmkdatabrickswksp`.`sales`.`customers` C 
  inner join `rmkdatabrickswksp`.`sales`.`sales_orders` O 
  on C.CustomerID = O.CustomerID
