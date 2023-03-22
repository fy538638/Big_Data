use AdventureWorks2019

go
create view vDimTerritory as
select 
territory.*,ROW_NUMBER() over(order by TerritoryID) DimTerritoryID
from sales.SalesTerritory territory
