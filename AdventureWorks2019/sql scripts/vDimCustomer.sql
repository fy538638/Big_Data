use AdventureWorks2019

go
create view vDimCustomer AS 
select 
customer.CustomerID,AccountNumber,terr.[Group],terr.Name,terr.CountryRegionCode,ROW_NUMBER() over(order by CustomerID) DimCustomerID
from	
Sales.Customer customer
inner join Sales.SalesTerritory terr on customer.TerritoryID=terr.TerritoryID