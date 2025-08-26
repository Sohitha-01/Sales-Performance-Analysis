-- Step 8: Monitoring Queries
-- Categories below 90% target
SELECT * FROM kpi_month_category WHERE Attainment_Percent < 90;

-- Months with declining sales vs previous month
SELECT t1.Year, t1.Month, t1.Total_Sales, t2.Total_Sales AS Prev_Sales
FROM kpi_month_overall t1
LEFT JOIN kpi_month_overall t2
  ON t1.Year = t2.Year AND t1.Month = t2.Month+1
WHERE t1.Total_Sales < t2.Total_Sales;