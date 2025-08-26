-- Step 2: Data quality checks
SELECT COUNT(*) AS total_rows FROM query1_clean;
SELECT COUNT(DISTINCT Order_ID) AS unique_orders FROM query1_clean;
SELECT Category, COUNT(*) AS count_per_category FROM query1_clean GROUP BY Category;