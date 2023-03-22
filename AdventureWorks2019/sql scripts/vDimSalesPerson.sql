use AdventureWorks2019

go
create view vDimSalesPerson as
select person.*,ROW_NUMBER() over(order by BusinessEntityID) as DimSalesPersonID
from sales.SalesPerson person