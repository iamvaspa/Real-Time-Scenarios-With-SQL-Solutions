🚀 SQL Scenario-Based Interview Questions With Answers
📌 Problem – First Value In Group
💼 Scenario

You are given an Orders table containing customer orders placed over time.

Write a SQL query that shows, alongside every order, the amount of that customers very first order (i.e., their earliest order by date), repeated on every row belonging to that customer — without using a subquery or self-join.

✅ Solution
SELECT
    order_id,
    customer_id,
    order_date,
    FIRST_VALUE(amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS first_order_amount
FROM I_Orders;

🔍 Explanation
FIRST_VALUE() returns the first value within the defined window.
PARTITION BY customer_id creates a separate window for each customer.
ORDER BY order_date ensures orders are arranged chronologically.
The earliest amount for each customer is then repeated for every order of that customer.
This solution uses a Window Function, eliminating the need for subqueries or self-joins.
🎯 Interview Tips

✅ Know the difference between FIRST_VALUE(), LAST_VALUE(), LAG(), and LEAD().

✅ Understand how PARTITION BY and ORDER BY define the window.

✅ Remember that FIRST_VALUE() is commonly asked in SQL Developer, Data Analyst, and Data Engineer interviews.
