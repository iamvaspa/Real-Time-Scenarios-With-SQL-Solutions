SQL Scenario-Based Interview Questions With Answers 🚀
📌 Problem – Next Row Value
📝 Scenario

You are given an orders table containing customer orders placed over time.

Write a SQL query that, for each order, displays the amount of the customers next order (i.e., the order immediately following it by date) alongside the current orders amount without using a self-join.

For a customers most recent order, the next amount should be NULL, since there is no later order.

💡 Solution
SELECT
    order_id,
    customer_id,
    order_date,
    amount,
    LEAD(amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS next_amount
FROM I_Orders;
🔍 Explanation

✅ LEAD() is a SQL Window Function that retrieves the value from the next row within a specified partition.

PARTITION BY customer_id → Restarts the calculation for each customer.
ORDER BY order_date → Ensures orders are evaluated in chronological order.
LEAD(amount) → Fetches the amount from the customers next order.
If there is no next order, NULL is returned automatically.
🎯 Interview Tip

Using LEAD() is far more efficient and readable than writing a self-join when you need values from the next row.

This is one of the most frequently asked SQL Window Function interview questions for Data Analysts, SQL Developers, Data Engineers, and BI Developers.
