🚀 SQL Scenario-Based Interview Questions With Answers
📌 Problem – Moving Average
Scenario

You are given an orders table containing customer orders placed over time.

Write a SQL query to calculate a 3-order moving average of the order amount.

This means that for each order, you need to calculate the average of:

The current order amount
The previous order amount
The second previous order amount

For the first two rows, where fewer than three orders are available, calculate the average using only the rows that exist.

💡 SQL Solution
SELECT
    order_id,
    order_date,
    amount,
    AVG(amount) OVER (
        ORDER BY order_date, order_id
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg_3
FROM I_Orders;
✅ Why This Works
AVG() OVER() calculates the average without grouping rows.
ORDER BY order_date, order_id ensures the moving window follows the correct order.
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW creates a rolling window containing:
Current row
Previous 1 row
Previous 2 rows
For the first two rows, SQL automatically computes the average using the available rows.

💡 Interview Tip:
Moving averages are frequently used in sales analysis, financial reporting, time-series analytics, forecasting, and trend detection. Mastering window functions like this can give you a strong advantage in SQL interviews.
