Create Database DSA_Finalproject

------ 1. Which product category had the highest sales?------
SELECT [Product_Category], ROUND(SUM(Sales), 2) AS Total_Sales
FROM [dbo].[KMS Sql Case Study]
GROUP BY [Product_Category]
ORDER BY Total_Sales DESC;

------ 2. What are the Top 3 and Bottom 3 regions in terms of sales?------
-----Top 3-----
SELECT TOP 3 Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM [dbo].[KMS Sql Case Study]
GROUP BY Region
ORDER BY Total_Sales DESC;

-----Bottom 3-----
SELECT TOP 3 Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM [dbo].[KMS Sql Case Study]
GROUP BY Region
ORDER BY Total_Sales ASC;

------ 3. What were the total sales of appliances in Ontario?------
SELECT ROUND(SUM(Sales), 2) AS Appliance_Sales_Under_Office_Supplies_Ontario
FROM [dbo].[KMS Sql Case Study]
WHERE TRIM([Product_Category]) = 'Office Supplies'
  AND TRIM([Product_Sub_Category]) = 'Appliances'
  AND TRIM(Province) = 'Ontario';

------ 4. bottom 10 customers by sales------
  SELECT TOP 10 [Customer_Name], ROUND(SUM(Sales), 2) AS Total_Sales
FROM [dbo].[KMS Sql Case Study]
GROUP BY [Customer_Name]
ORDER BY Total_Sales ASC;

------ 5. KMS incurred the most shipping cost using which shipping method?------
SELECT [Ship_Mode], ROUND(SUM((Sales) - (Profit)), 2) AS Estimated_Shipping_Cost
FROM [dbo].[KMS Sql Case Study]
GROUP BY [Ship_Mode]
ORDER BY Estimated_Shipping_Cost DESC;

------ 6. Most valuable customers (by total sales)------
SELECT TOP 5 
    [Customer_Name], 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    (SELECT TOP 1 [Product_Sub_Category]
     FROM [dbo].[KMS Sql Case Study] AS sub
     WHERE sub.[Customer_Name] = main.[Customer_Name]
     GROUP BY [Product_Sub_Category]
     ORDER BY SUM(Sales) DESC) AS Most_Purchased_SubCategory
FROM [dbo].[KMS Sql Case Study] AS main
GROUP BY [Customer_Name]
ORDER BY Total_Sales DESC;

------ 7. Which small business customer had the highest sales?------
SELECT TOP 1 [Customer_Name], ROUND(SUM(Sales), 2) AS Total_Sales
FROM [dbo].[KMS Sql Case Study]
WHERE [Customer_Segment] = 'Small Business'
GROUP BY [Customer_Name]
ORDER BY Total_Sales DESC;

------ 8. Which Corporate Customer placed the most number of orders in 2009 – 2012?------
SELECT TOP 1 [Customer_Name], COUNT([Order_ID]) AS Total_Orders
FROM [dbo].[KMS Sql Case Study]
WHERE [Customer_Segment] = 'Corporate'
  AND YEAR(CONVERT(DATE, [Order_Date], 101)) BETWEEN 2009 AND 2012
GROUP BY [Customer_Name]
ORDER BY Total_Orders DESC;

------ 9. Which consumer customer was the most profitable one?------
SELECT TOP 1 [Customer_Name], ROUND(SUM(Profit), 2) AS Total_Profit
FROM [dbo].[KMS Sql Case Study]
WHERE [Customer_Segment] = 'Consumer'
GROUP BY [Customer_Name]
ORDER BY Total_Profit DESC;

------ 10.Which customer returned items, and what segment do they belong to?
SELECT [Customer_Name], [Customer_Segment]
FROM [dbo].[KMS Sql Case Study]
WHERE [Order_ID] IN (
  SELECT [Order_ID] FROM [Order_Status] WHERE Status = 'Returned'
)
GROUP BY [Customer_Name], [Customer_Segment];

------ 11. Shipping cost alignment with order priority------
SELECT [Order_Priority], [Ship_Mode], COUNT(*) AS Orders
FROM [dbo].[KMS Sql Case Study]
GROUP BY [Order_Priority], [Ship_Mode]
ORDER BY [Order_Priority], [Ship_Mode];

 