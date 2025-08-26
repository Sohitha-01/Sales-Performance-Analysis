-- Step 6: Trend analysis by time
CREATE OR REPLACE VIEW kpi_month_overall AS
SELECT Year,
       Month,
       SUM(Total_Sales) AS Total_Sales,
       SUM(Total_Profit) AS Total_Profit,
       SUM(Total_Target) AS Total_Target
FROM agg_month_category
GROUP BY Year, Month;