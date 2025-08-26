-- Step 3: Feature Engineering
CREATE OR REPLACE VIEW query1_features AS
SELECT *,
       EXTRACT(MONTH FROM Order_Date) AS Month,
       EXTRACT(YEAR FROM Order_Date) AS Year,
       (Profit / NULLIF(Amount,0)) * 100 AS Profit_Margin
FROM query1_clean;