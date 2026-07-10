🚀 SQL Scenario-Based Interview Questions With Answers
💡 Problem – Running Total
📌 Scenario

You are given an orders table containing customer orders placed over time.

Write a SQL query to calculate a running (cumulative) total of order amounts, ordered by date, so that each row shows the sum of that orders amount plus all order amounts that came before it.

✅ Solution
SELECT
    order_id,
    order_date,
    amount,
    SUM(amount) OVER (
        ORDER BY order_date, order_id
    ) AS running_total
FROM I_Orders;
🔍 Explanation
✅ SUM(amount) OVER(...) calculates a cumulative total.
✅ ORDER BY order_date, order_id ensures rows are processed chronologically.
✅ Each row displays the current order amount + all previous order amounts.
✅ order_id is included to maintain a deterministic order when multiple orders have the same date.
🎯 Interview Tip

A Running Total is one of the most frequently asked SQL Window Function interview questions.

Interviewers often use it to evaluate your understanding of:

Window Functions
SUM() OVER()
ORDER BY within OVER()
Cumulative Aggregations
Analytical SQL Queries

Mastering this concept will help you solve many real-world reporting and analytics problems.
