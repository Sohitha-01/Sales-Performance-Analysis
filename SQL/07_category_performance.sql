-- Step 7: Category performance comparison
SELECT Category,
       SUM(Total_Sales) AS Sales,
       SUM(Total_Profit) AS Profit,
       SUM(Total_Target) AS Target,
       ROUND((SUM(Total_Sales)/NULLIF(SUM(Total_Target),0))*100,2) AS Target_Attainment
FROM agg_month_category
GROUP BY Category;