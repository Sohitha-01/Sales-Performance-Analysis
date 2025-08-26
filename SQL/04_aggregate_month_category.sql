-- Step 4: Aggregate at Month-Category level
CREATE OR REPLACE VIEW agg_month_category AS
SELECT Year,
       Month,
       Category,
       SUM(Amount) AS Total_Sales,
       SUM(Profit) AS Total_Profit,
       SUM(Quantity) AS Total_Quantity,
       SUM(Target) AS Total_Target
FROM query1_features
GROUP BY Year, Month, Category;