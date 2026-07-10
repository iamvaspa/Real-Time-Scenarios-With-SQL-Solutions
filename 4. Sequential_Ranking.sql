🚀 SQL Scenario-Based Interview Questions With Answers
📌 Problem – Sequential Ranking (ROW_NUMBER)
💼 Scenario

You are given an Employees table.

Write a SQL query to assign a unique, sequential number to each employee based on their hire_date, starting from 1 for the earliest hire.

✅ Even if two employees were hired on the same date, each employee should still receive a different sequential number.

Key Requirements:

✔️ Unique sequence for every row
✔️ Starts from 1
✔️ Ordered by hire_date
✔️ No ties
✔️ No gaps
💡 Solution
SELECT
    emp_id,
    first_name,
    ROW_NUMBER() OVER (ORDER BY hire_date) AS seq
FROM I_Emp;
🔍 Why ROW_NUMBER()?

ROW_NUMBER() assigns a unique sequential number to every row in the result set based on the specified ordering.

Unlike RANK() or DENSE_RANK(), it never assigns the same number to multiple rows, making it ideal when every record needs its own unique position.

💬 Interview Question:
What would happen if multiple employees have the same hire_date? How can you make the ordering deterministic?
