use AdventureWorks2019

go
create view vDimOrderDate as 
SELECT
OrderDate,
format(OrderDate,'yyyy') Year,
format(OrderDate,'MM') Month,
format(OrderDate,'dd') Date,
CONVERT(TINYINT, ((format(OrderDate,'MM')-1)/3)+1) Quarter,
ROW_NUMBER() over(order by format(OrderDate,'yyyy-MM-dd')) DimOrderDate

From vFactGross
group by OrderDate,format(OrderDate,'yyyy'),format(OrderDate,'MM'),format(OrderDate,'dd'),CONVERT(TINYINT, ((format(OrderDate,'MM')-1)/3)+1)

GO

