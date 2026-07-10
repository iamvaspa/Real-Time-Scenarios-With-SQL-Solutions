🚀 SQL Scenario-Based Interview Questions With Answers
📌 Problem: Dense Ranking
💼 Scenario

You are given an Employees table containing employee salaries.

Write a SQL query to rank employees by salary (highest to lowest) such that:

✅ Employees with the same salary receive the same rank
✅ The next rank after a tie is consecutive (no gaps)

Example:

Dense Rank: 1, 2, 2, 3
❌ Not Standard Rank: 1, 2, 2, 4
💡 Solution
SELECT
    emp_id,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS drnk
FROM I_Emp;
✅ Explanation

DENSE_RANK() assigns the same rank to rows with equal values.

Unlike RANK(), it does not skip the next ranking number after duplicate values.

Example
Salary	DENSE_RANK()
120000	1
110000	2
95000	  3
95000	  3
90000	  4
90000	  4

💬 Interview Tip:
Use DENSE_RANK() whenever you need continuous rankings without gaps, especially in leaderboards, salary reports, and top-N analytical queries.
