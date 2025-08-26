SELECT
    o.Order_ID,
    o.Customer_Name,
    o.Order_Date,
    o.State,
    o.City,
    od.Amount,
    od.Profit,
    od.Quantity,
    od.Category,
    od.Sub_Category,
    st.Month_of_Order_Date,
    st.Target
FROM [List of Orders] AS o
JOIN [Order Details] AS od
    ON o.Order_ID = od.Order_ID
    JOIN [Sales target] AS st
    ON od.Category = st.Category
