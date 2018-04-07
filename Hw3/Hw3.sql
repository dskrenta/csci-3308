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
select * from (select SupplierID, count(*) as ProductCount, sum(UnitsInStock * UnitPrice) as InventoryValue from nwProducts group by SupplierID) as x where ProductCount >= 3;

# 8
select CompanyName, ProductName, UnitPrice from (select CompanyName, ProductName, UnitPrice, Country from nwProducts join nwSuppliers on nwSuppliers.SupplierID = nwProducts.SupplierID) as x where Country = "USA" order by UnitPrice desc;

# 9
select FirstName, LastName, Extension from (select nwEmployees.FirstName, nwEmployees.LastName, nwEmployees.Extension, nwOrders.EmployeeID, count(*) as OrderCount from nwOrders join nwEmployees on nwEmployees.EmployeeID = nwOrders.EmployeeID group by EmployeeID) as x where OrderCount > 100;

# 10 
select x.CustomerID, CompanyName from (select CustomerID, count(*) as OrderCount from nwOrders group by CustomerID) as x join nwCustomers on x.CustomerID = nwCustomers.CustomerID where OrderCount = 0;

# 11
select nwProducts.ProductName, nwSuppliers.CompanyName, nwSuppliers.ContactName, nwCategories.CategoryName, nwCategories.Description, nwProducts.UnitsOnOrder from nwProducts join nwCategories on nwProducts.CategoryID = nwCategories.CategoryID join nwSuppliers on nwProducts.CategoryID = nwCategories.CategoryID where nwProducts.UnitsInStock = 0;

# 12
select nwProducts.ProductName, nwSuppliers.CompanyName, nwProducts.UnitsInStock, nwSuppliers.Country from nwProducts join nwSuppliers where nwProducts.SupplierID = nwSuppliers.SupplierID;

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
insert into Top_Items (ItemID, ItemCode, ItemName, InventoryDate, ItemQuantity, ItemPrice, SupplierID) select ProductID, CategoryID, ProductName, now(), UnitsInStock, UnitPrice, SupplierID from (select *, UnitPrice * UnitsInStock as InventoryValue from nwProducts) where InventoryValue > 2500;

# 15
delete from Top_Items join nwSuppliers on Top_Items.SupplierID = nwSuppliers.SupplierID where nwSuppliers.Country = "Canada";

# 16
alter table Top_Items add column InventoryValue decimal(9, 2) after InventoryDate;

# 17
update Top_Items set InventoryValue = Top_Items.UnitPrice * Top_Items.UnitsInStock;

# 18
drop Top_Items;

