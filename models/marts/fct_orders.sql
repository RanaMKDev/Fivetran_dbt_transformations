select 
  CustomerName, OrderDate, OrderID 
from 
  `rmkdatabrickswksp`.`sales`.`customers` C 
  inner join `rmkdatabrickswksp`.`sales`.`orders` O 
  on C.CustomerID = O.CustomerID
