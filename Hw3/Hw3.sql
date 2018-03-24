# 1
select FirstName, LastName from nwEmployees where Country != "USA" and HireDate >= curdate() - INTERVAL 5 year;

# 2
select ProductID, ProductName, UnitsInStock, UnitPrice from nwProducts where UnitsInStock >= 1 order by ReorderLevel asc;

# 3
select ProductName, UnitPrice from nwProducts order by UnitPrice desc limit 1;

# 4
select * from (select *, UnitPrice * UnitsInStock as InventoryValue from nwProducts) as x where InventoryValue > 2000 order by InventoryValue desc;

# 5
select ShipCountry, count(*) as ShipCount from (select * from nwOrders where ShipCountry != "USA" and ShippedDate >= "2013-09-00 12:00:00" and ShippedDate <= "2013-09-00 12:00:00" + interval 1 month) as x group by ShipCountry;

# 6
select x.CustomerID, nwCustomers.CompanyName from (select CustomerID, count(*) as ShipCount from nwOrders group by CustomerID) as x join nwCustomers where ShipCount > 20;

# 7

# 8

# 9

# 10 WIP
select nwCategories.CustomerID, nwCategories.CompanyName, nwProducts.ProductName, nwProducts.UnitsOnOrder from nwProducts where nwProducts.UnitsInStock = 0 join nwCategories on nwCategories.CategoryID = nwProducts.CategoryID;

# 11

# 12

# 13
create table Top_Items (
    ItemID integer not null, 
    ItemCode integer not null, 
    ItemName varchar(40) not null, 
    InventoryDate date not null, 
    SupplierID integer not null, 
    ItemQuantity integer not null, 
    ItemPrice decimal(9, 2) not null,
    primary key(ItemID)
);

# 14

# 15

# 16

# 17



# 18
drop Top_Items;

