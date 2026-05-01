select CustomerName, OrderDate, OrderID from Sales.Customers C inner join Sales.Orders O on C.CustomerID = O.CustomerID
