use AdventureWorks2019

go
create view vDimBillToAddress AS 
select header.BillToAddressID,header.ShipToAddressID,header.CustomerID,customer.AccountNumber, ROW_NUMBER() over(order by BillToAddressID) DimBillToAddressID
from sales.SalesOrderHeader header
inner join sales.Customer customer on customer.CustomerID=header.CustomerID
group by BillToAddressID,ShipToAddressID,header.CustomerID,customer.AccountNumber