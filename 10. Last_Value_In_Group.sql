SQL Scenario-Based Interview Questions With Answers 🚀
📌 Problem – Last Value In Group
📝 Scenario

You are given an orders table containing customer orders placed over time.

Write a SQL query that shows, alongside every order, the amount of that customers most recent order (i.e., their latest order by date) repeated on every row belonging to that customer, without using a subquery or self-join.

⚠️ Important: Make sure the query returns the actual last value in the partition and not the current rows value, which can happen due to the default window frame of LAST_VALUE().

💡 Solution
SELECT
    order_id,
    customer_id,
    order_date,
    LAST_VALUE(amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND UNBOUNDED FOLLOWING
    ) AS last_order_amount
FROM I_Orders;
🔍 Explanation

✅ PARTITION BY customer_id

Creates a separate window for each customer.

✅ ORDER BY order_date

Arranges each customers orders chronologically.

✅ LAST_VALUE(amount)

Returns the last value within the defined window.

✅ ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING

Expands the window to include all rows in the partition.
Without this clause, LAST_VALUE() often returns the current rows value because the default frame ends at the current row.
🎯 Interview Tip

Many SQL professionals know FIRST_VALUE(), but LAST_VALUE() is a common interview trap.

👉 Always remember to specify:

ROWS BETWEEN UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING

Otherwise, LAST_VALUE() may not return the actual last row in the partition.
