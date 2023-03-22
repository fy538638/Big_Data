use AdventureWorks2019

go
create view vDimProduct as 
select 
product.ProductID,product.Class ProductClass,product.ListPrice ProductListPrice,product.MakeFlag ProductMakeFlag,product.Name ProductName,
subcat.Name as ProductSubCategory,
pcat.Name ProductCategory,
ROW_NUMBER() OVER (order by ProductID) DimProductID
from Production.Product product
inner join Production.ProductSubcategory subcat on product.ProductSubcategoryID=subcat.ProductSubcategoryID
inner join Production.ProductCategory pcat on subcat.ProductCategoryID=pcat.ProductCategoryID

