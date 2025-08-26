-- Step 5: KPI calculations
CREATE OR REPLACE VIEW kpi_month_category AS
SELECT *,
       (Total_Sales - Total_Target) AS Gap_vs_Target,
       ROUND((Total_Sales / NULLIF(Total_Target,0)) * 100,2) AS Attainment_Percent
FROM agg_month_category;