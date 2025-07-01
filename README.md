# DSA_DATA_ANALYSIS_PROJECT

## PROJECT TITLE 1: Amazon Product Analytics with Excel
---
[Project Overview](#project-overview)

[DATA SOURCES](#data-sources)

[Tools Used](#tools-used)

[Data Cleaning and Preparations](#data-cleaning-and-preparations)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Analysis](#data-analysis)

[Final Report](#final-report)

---
### Project Overview: 
This project is a comprehensive Amazon Product Analytics Dashboard built in Microsoft Excel, designed to transform raw e-commerce data into actionable insights. Using a dataset of 1,465 Amazon products—including categories, prices, discounts, ratings, and reviews—we developed a dynamic dashboard that helps users uncover trends in pricing, customer engagement, and product performance.
---
### Data Source: 
The dataset contains information scraped from Amazon product pages including categories, pricing, discounts, ratings, and review data.
---
### Tools Used
- Microsoft Excel [Download Here](https://eu.docworkspace.com/d/sIFPBu4e1Adf9hsMG?sa=601.1037)
  1. For Data Cleaning
  2. For Analysis
  3. For Data Visualisation
---
### Data Cleaning and Preparations
In the initial phase of the Data Cleaning and prepations, we perform the following action;
1. Data loading and Inspection
2. Handling missing variables
3. Data Cleaning and formatting
---
### Exploratory Data Analysis
EDA involved the exploring of the Data to answer some questions about the Data such as;
- Which products have the best combined ratings and reviews?
- What categories offer the highest discounts?
- How are products distributed across price ranges and rating levels?
- How many products have fewer than 1,000 reviews?
---
### Data Analysis
This is where we include some basics lines of code or queries or even some of the DAX expressions used during your analysis
---
![Bar chart 2](https://github.com/user-attachments/assets/84dafa92-fada-41c2-9b6a-65ad05dabe50)

---
![Bar chart 1](https://github.com/user-attachments/assets/1d53374c-afaf-44b1-8cbe-1f5e543b26a7)

---
![scattered chart](https://github.com/user-attachments/assets/bdc5d5c2-c65a-41f3-a805-baf89e734207)

---
![Pie chart](https://github.com/user-attachments/assets/432926de-f7a1-44d8-960e-50ca6d261c05)

---
![Do not chart ](https://github.com/user-attachments/assets/ae86af6a-47e9-486e-bcf0-28a3c8180efa)

---
### Final Report
### Summary
1. Ratings Are Generally High
   Most products are rated 4.0 or above, showing a positive customer experience overall.

2. Few Products Dominate Review Volume
  A small group of products received the highest number of reviews, indicating popularity concentration.

3. High Ratings ≠ High Visibility
   Some products with strong ratings had very few reviews, suggesting they’re good but not well-promoted.

4. Categories Differ in Discount Strategy
   Categories like Clothing and Electronics showed the highest average discounts — possibly to stay competitive.

5. Many Products Have <1,000 Reviews
   A large number of products have not yet gained visibility, showing room for growth or promotion.

6. Products Priced ₹200–₹500 Dominate
   Most products fall in the mid-price range, indicating this is a sweet spot for buyers on Amazon.

7. Top Products Have Both High Ratings & Review Counts
   Products that rank at the top in both ratings and review count tend to also have high potential revenue, making them key drivers of marketplace success.

8. High Discounts Often Correlate with Lower Ratings
   Some highly discounted products had average or below-average ratings, possibly due to quality concerns or clearance strategies
   
   ---
   ### Recommendations
1. Promote High-Rated, Low-Visibility Products
   Several products have excellent ratings but very few reviews. These are opportunities for targeted marketing or bundling to increase visibility and sales.

2. Boost Review Engagement for Mid-Rated Products
   Products rated around 3.0–3.5 may benefit from post-purchase emails or incentives to collect more reviews and improve trust.

3. Review Discount Strategy in Low-Rated Categories
   High discounts do not always lead to better ratings. Consider re-evaluating product quality or expectations in categories with both high discounts and low customer        satisfaction.

4. Invest in Best-Selling Categories
   Categories showing high total revenue and high average rating (e.g., Electronics, Health) should be prioritized for inventory, advertising, and promotions.

5. Refine Inventory for Low-Performing Products 
   Products with low ratings and high return potential (based on low reviews despite discounts) should be assessed for discontinuation, repositioning, or repackaging.

6. Use Bundling and Upselling on Top Performers
   Products with high rating scores and review volumes can serve as anchor items for bundles, upsells, or cross-selling strategies.



---

   ## PROJECT TITLE 2: Kultra Mega Stores (KMS) & Customer Analysis with SQL

---
[Project Overview 2](#project-overview-2)

[Tools Used 2](#tools-used-2)

[DATA SOURCES 2](#data-sources-2)

[Key Insight Uncovered](#Key-Insight-Uncovered)

[Key SQL Queries](#Key-SQL-Queries)

[Final Report 2](#final-report-2)

---
### Project Overview 2: 
This SQL project analyzes sales data to uncover key business insights, including:
-  Identifying the highest-selling product categories
-  Calculating total sales for specific sub-categories (e.g., Appliances under Office Supplies)
-  Filtering sales data by region (Ontario, Canada)
-  The goal is to demonstrate data extraction, aggregation, and business intelligence using SQL queries
It presents a comprehensive SQL-based analysis of a fictional retail dataset from Kultra Mega Stores (KMS), focused on uncovering business insights related to sales, customers, shipping, and regional performance. Using raw sales data, the project addresses real-world business questions such as identifying the most profitable customer segments, analyzing return patterns, evaluating regional sales disparities, and assessing shipping cost efficiency.

The SQL queries included are designed to demonstrate practical applications of GROUP BY, JOIN, subqueries, and aggregation functions, forming a strong foundation for business intelligence and decision-making.

---
### Tools Used 2:
Microsoft SQL Server [Download Here](https://1drv.ms/f/c/1f89a3757645c55d/Ei3UkKlHDaNFg5gGXXksKCQBo1BBLeWBgALdBnyBViEzYQ?e=Ygg5d5)

Use Case:
Ideal for learners, data analysts, or job seekers seeking to demonstrate SQL skills through practical business cases and data exploration techniques.

---
### Data Source 2:
- KMS_Table: Simulated retail transactions
- Order_Status: Order return status and delivery outcome

---
### Key Insights Uncovered:
- Top-performing product categories and regions
- Sales distribution across customer segments
- Revenue trends from small business and corporate clients
- Return behaviors and their segment associations
- Shipping cost analysis by method and priority alignment

---
### Key SQL Queries:

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

---
### Final Report 2:

**Observations**
- Office Supplies was the leading product category in terms of total sales.
- Ontario recorded strong performance in multiple categories, especially in sub-categories like Appliances.
- Top 3 regions far outperformed the bottom 3, showing regional disparities in sales strategy or market size.
- Small Business customers generated high revenue while Consumer customers had the highest return rate.
- The Express Air shipping method incurred the highest cost, even for low-priority orders.
- Some Corporate customers placed the most orders between 2009–2012, showing potential loyalty trends

**Recommendations**
Based on question 4 which seeks for an advise to the management of KMS on what to do to increase the revenue from the bottom 10 customers. 
Here are some recommendations regarding that;
- Offer personalized discounts and loyalty programs to these customers.
- Analyze their buying behavior to understand gaps and tailor marketing efforts.
- Assign dedicated sales reps to maintain relationships and offer support.
- Bundle products or services that might interest them based on past purchases.

Shipping Cost vs. Order Priority Analysis in question 11:
The company does not appear to have appropriately aligned shipping costs with order priority. Despite Delivery Truck being the most economical shipping method, it was not consistently used for Low or Medium priority orders. Conversely, Express Air, known to be the fastest and most expensive option, was frequently used even for orders marked as Low priority.
This mismatch indicates inefficiency and suggests that the business may be incurring unnecessary logistics expenses due to either a lack of automated shipping logic or poor enforcement of internal shipping policies.
Therefore, KMS should:
- Enforce shipping rules based on order priority (e.g., use Express Air only for High and Critical priority).
- Introduce system checks or automation in the order fulfillment process.
- Regularly audit shipping reports to ensure compliance and cost-effectiveness.
  
In addition, KMS should
- Prioritize stocking and promoting Office Supplies to sustain strong sales.
- Analyze low-performing regions to identify market gaps or sales support needs.
- Introduce retention incentives for high-value Small Business and Corporate clients.
- Align shipping method selection with order priority to cut unnecessary shipping costs.
- Investigate high return rates in the Consumer segment to improve product satisfaction.
- Engage the bottom 10 customers through tailored offers or feedback requests to stimulate sales.

