select FirstName, LastName from nwEmployees where Country != "USA" and HireDate >= curdate() - INTERVAL 5 year;

select ProductID, ProductName, UnitsInStock, UnitPrice from nwProducts where UnitsInStock >= 1 order by ReorderLevel asc;

select ProductName, UnitPrice from nwProducts order by UnitPrice desc limit 1;

select * from (select *, UnitPrice * UnitsInStock as InventoryValue from nwProducts) as x where InventoryValue > 2000 order by InventoryValue desc;

select ShipCountry, count(*) as ShipCount from (select * from nwOrders where ShipCountry != "USA" and ShippedDate >= "2013-09-00 12:00:00" and ShippedDate <= "2013-09-00 12:00:00" + interval 1 month) as x group by ShipCountry;

select x.CustomerID, nwCustomers.CompanyName from (select CustomerID, count(*) as ShipCount from nwOrders group by CustomerID) as x join nwCustomers where ShipCount > 20;

