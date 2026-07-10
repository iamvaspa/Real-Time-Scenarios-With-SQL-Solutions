🚀 SQL Scenario-Based Interview Questions With Answers

📌 Problem – Previous Row Value

💼 Scenario:
You are given an orders table containing customer orders placed over time.

Write a SQL query that, for each order, displays the amount of that customers previous order (i.e., the order placed immediately before it based on order_date) alongside the current order's amount — without using a self-join.

👉 For a customer's first order, the previous amount should be NULL, since no earlier order exists.

✅ Solution
SELECT
    order_id,
    customer_id,
    order_date,
    amount,
    LAG(amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS prev_amount
FROM I_Orders;
💡 Explanation

The LAG() window function retrieves the value from the previous row within a specified window.

PARTITION BY customer_id → Resets the calculation for each customer.
ORDER BY order_date → Ensures orders are evaluated in chronological order.
LAG(amount) → Returns the amount from the customers previous order.
The first order for every customer returns NULL because there is no preceding row.

This approach is cleaner, more efficient, and easier to maintain than using a self-join.

🎯 Interview Tip

The LAG() function is one of the most frequently asked SQL Window Functions in interviews.

Be prepared to solve questions involving:

✅ Previous Row Value (LAG)
✅ Next Row Value (LEAD)
✅ Running Total
✅ Moving Average
✅ Ranking Functions
✅ First & Last Value
✅ Difference Between Consecutive Rows

Mastering these window functions can significantly improve your SQL interview performance.
