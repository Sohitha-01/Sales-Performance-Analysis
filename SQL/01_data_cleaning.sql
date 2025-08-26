-- Step 1: Clean Query1 dataset
CREATE OR REPLACE VIEW query1_clean AS
SELECT DISTINCT
    `Order_ID`,
    CAST(`Order_Date` AS DATE) AS `Order_Date`,
    Customer_Name,
    State,
    City,
    Amount,
    Profit,
    Quantity,
    Category,
    `Sub_Category`,
    Target
FROM query1
WHERE `Order_ID` IS NOT NULL;
