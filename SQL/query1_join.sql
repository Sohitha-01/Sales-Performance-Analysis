SELECT
    o.`Order ID`,
    o.`Customer Name`,
    o.`Order Date`,
    o.State,
    o.City,
    od.Amount,
    od.Profit,
    od.Quantity,
    od.Category,
    od.`Sub-Category`,
    st.`Month of Order Date`,
    st.Target
FROM `List of Orders` AS o
JOIN `Order Details` AS od
    ON o.`Order ID` = od.`Order ID`
JOIN `Sales target` AS st
    ON od.Category = st.Category;


